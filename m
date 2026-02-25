Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FE93939D1
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772016894; cv=none; b=N4ImUJlmvPBGzwP8FKyZtMkuJR+eUu+lgDroNL8KBDSVSLytaI0pOQ/JX2b10wjrA1Gpu3WSXw1DPdXAUy0HIdB6AOh+xhcfXgrYIwWtUMJ7uKezfToDGJmcqVkG0jxonxnR7DUHad8KuE8/stSuJdH+vhqdTWD5/oVERhmDguQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772016894; c=relaxed/simple;
	bh=9aXkD0W3pYNk/mqtH/a9NJ+9wpRX9GWYY94JGF2HVrs=;
	h=To:Subject:From:Message-Id:Date; b=VNs6kkMwjcL1j8vUEcRgZox+7ke4tlhCDtkJzynhFJFtonRFNEzlfECmg0xXVqBfjqmEppvJjYGmBYGSpyA5pzr643Sxw6H3bd/B8ynVknbJR3TSaeKxUi2jXdWNbFrWOTNFr7ANVzXd7qw3byJKusSM/G57k1lqN1ECX85/vzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNPrR2I7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNPrR2I7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E738C19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772016893;
	bh=9aXkD0W3pYNk/mqtH/a9NJ+9wpRX9GWYY94JGF2HVrs=;
	h=To:Subject:From:Date:From;
	b=fNPrR2I7MM+4+2w/6wZjSR46ccGwbiY+JCf6iv84G9dRVKaM2171VirmuFG9CHnFA
	 kbnd+5mQ3qj/UAGkaynIYoy5clK6sVgcPgP2EebOOhjS6ha9k67UwbK5MuKwKyiTiI
	 zTJnBKk0ZQt1PfiMm3vKFrnpM04bFP3DrMz3lPBNnyyFZAIQpgRTlJqkv4snnJhtH0
	 bJ+RCrbWCpI7dyPjklumaYBlsBuEn4b2vErPiiKFWk0Q7dewv+ZO/qXyL1aVHx5D9v
	 o3k85pOPRJeZQ4lz00PRtQFUUXy/eu+7UWsyE7VOOGtrZceDD+V8IK0OzcD5ANjyDB
	 BXgKoIvHi/BIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90590F4BB9C
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201689358.17191.15178353057117527937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0180c7f9b63a8b2c174c357b7a2b1f0833406d2c36911769a588446e846a83b6
Date: Wed, 25 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772016893
