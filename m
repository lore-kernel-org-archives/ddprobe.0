Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442893563ED
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770849894; cv=none; b=CKgpCQF1d2YFB6Go0TDYBydkxNjWWEjY6hOyW6y21mIfC+dJXnyocoF+Dv0n7AXD/V38gIzt6zxVYUW2gcFoeH8+1gKeQJkyFHLaWvC3BSyU91TiN9kroRx0LF0eQjXvhCgpQPsEL3qtuibm+7G/nUK51I02gEjYvkCKQ10tdEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770849894; c=relaxed/simple;
	bh=6hu3dXyUy1N56/FV1NO8VYpIYgd4XZnvy53UsnOg4Hg=;
	h=To:Subject:From:Message-Id:Date; b=CcdHqMYwzEfc4hGFIURFTt4L+prZiwpQhFzfLa6cFetLQMs3EKSmkNgbKldv/FmuKjDNXaJ/A35Fc3T0zTd8CXNYv4+I3U0ivqMrW633pxAdTk/TYaM5zm+9/bbk7jzVdMF76KCZ5k3TXHS1iLFiyIH20IxvJkVdlTEIDDTT1aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bfc287EN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bfc287EN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC096C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770849893;
	bh=6hu3dXyUy1N56/FV1NO8VYpIYgd4XZnvy53UsnOg4Hg=;
	h=To:Subject:From:Date:From;
	b=Bfc287ENPO0gOe2ipL1PdQWXX1wXei4O7bqx0H3QfAQ+o1fEBYystDXXvF7E+br5k
	 sp/v9nqb7xdkdzFfsBea0/EkUlXhScGHyE5hX/hhx/4qMrtHPrnPRv6rNMkTTlEfJo
	 84b9mPM0ZSPtAWeXRemIIWyMfHsW1Zl1H0QCwakb7Dfw0Y9WsFFi1AseVudpqzUAEY
	 xiXhbZwUXFrkLo2Vhc8hggSJYYWRIhs09zFC7vgg0yxwhfoyIKt0u4VSoxo/P61Itm
	 toB/LODksXUXr3wfCK6o12w83A9iIIS+agjeQ44DcSVvy1TMb2jviUly909h++6kV2
	 LcN2FiY4Di16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E410ECD6EE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084989360.866.1734048945720631240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bcfe8a82b378b2728ab555c7599385aba73cfef57617b0e15d4c4606d39723a
Date: Wed, 11 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770849893
