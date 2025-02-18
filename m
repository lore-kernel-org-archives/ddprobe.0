Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6B626B975
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739900934; cv=none; b=QVF09ITS0aVglTV6cgYHW0L3skOXpCftlTF/W4x7fCxVCGk7U+UTLTY9tzwQWf86MIKqm1Tcfo2MJJi5hXBA6CiT8CbTtzc7uvslekyeZHJcu94OH/0IgUuW2NBko+NJzPI0w2S9OWvdW00dQuSMQbcnip9fWasUQDDiptaTwno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739900934; c=relaxed/simple;
	bh=eXTRxwHTgEm6q72AVbjMnllptbiW13lGzan8893QZWc=;
	h=To:Subject:From:Message-Id:Date; b=F4ueKTcPqNVCOORKyg+N0eiU3+ygIKXTCWnbiBlaOCzuhxkhKwAK1rDYsfUPvE1vLXSe+Z2WQd+Hc4b6RSkaYaaAp4ZCueHOSFj1oJyDWYsDEQzRmDL1NPZyRC6QxTvZ4B8nH//j/fo3ecskdF7NyAGNxA+yxIr8dHj6iNQjJJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyI4N2Nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyI4N2Nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A293EC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739900933;
	bh=eXTRxwHTgEm6q72AVbjMnllptbiW13lGzan8893QZWc=;
	h=To:Subject:From:Date:From;
	b=VyI4N2NdaaALEuVJaa5HhENcSY2MY5GR42xGnZ5hD4w9RTwmI0w9m6DGmK6SUS+cV
	 kgGK3oWVluggPBEWR9hac35rWrngF0leV0iwAy7OeGrgAIen6tzTHfHuE6GkrTgNnU
	 XrRH+aEqYD1beeTT+tuViouUzmnOHwcYGHKtv4om4QnXP5/dbNU1+6P/GsejupQInl
	 oPhFMqFrH2T4ACwr7e4Me1iHuYWvJgezH1YUG3rTNUC+FhBk05EufmmPzAwCY4WN2h
	 +V+S+WXR6UpalL7xmYg2kb5COMzVlpb/fB5OQRZGmKbH9gUDLmNS2crF8VEfXyfc3O
	 CAvQjwSZwOnpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938D7C021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173990093359.16990.8193362266231263353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058fd38dd8e88fa012e96123247585e7ad995ed5ba88b915194582d9895ea919
Date: Tue, 18 Feb 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739900933
