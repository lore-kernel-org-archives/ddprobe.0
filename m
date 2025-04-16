Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB6221D594
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744784994; cv=none; b=PGUJXXvSUThDL/XtPFZ19wVCfB3ck0/Mpp9uTXGqFaqYwvndMSrAr3J4QiUN00hdoguwy+3i5Yh0mTMfXNPkdSxf686GI9cmb+4HTnfhqKYcUcCTTAXjG7qW/XdDUXCEIa9tSmBiKe/GDjga6HPWUAOAfgzUpCPSPWa1/4sNr10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744784994; c=relaxed/simple;
	bh=7teGUF/hOPTq3r8eEHD8l/EUYAAray6aT8mp4dun9fQ=;
	h=To:Subject:From:Message-Id:Date; b=D1vGVPHi331PP3t1R3n+u19cYqpPb1eB5TKvxwA1VsEXKQCfRshQUZTeZIJloSE5lHVzkIw8ltKqFXGYGEYzI5wHFMmaRpSSlNP/6e4wMF52kSeWWr9/BBJ3k7FOQyCe2odmTaZF14eJP2zboeD4V0Jy/mCSkZ4GB9WVDuDG0nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akePO7Qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akePO7Qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19EEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744784993;
	bh=7teGUF/hOPTq3r8eEHD8l/EUYAAray6aT8mp4dun9fQ=;
	h=To:Subject:From:Date:From;
	b=akePO7QrQJp7CrJxTauAVgknsrTJIBqM1KdAAEeIQ5pjIh5Jqp9WUvN38FfsrT9TR
	 PnnCpRAKre6UAhJ/baVWYb+ODtvOI3BmoWoUD7z7LU1I9mcDELFoKOFwHXq8GWFy5I
	 vLQVNvhHEzh3axmsR2rbf/gI7jwuixMQUQoy8SFPTg/bhDs8ayxTRdGqbzinA2D5L4
	 yt45KFP1/Ol8YGwtF4Of29PjuXh4xilgDKj/AAbva3oz0msGAjCkxWHwr0bo9vbDms
	 Qmu2v6+O+GgKxJMiZjPnyM2oiysH9dup2gwTL6oJ9o03rxRbCz3BJU+40XQ+82SjXR
	 QiyyH8BUnBaEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B97C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478499365.524.3626396877489194148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56385840daa08b94b1ec14b91d0fa732e7529abc47f35d5a665911b85dd3358c
Date: Wed, 16 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744784993
