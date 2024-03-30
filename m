Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002402919
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711790297; cv=none; b=ZIeV84uXGxvnGZE8ZE/kE2kK0yu5RctybI5By5AgrcRMV/oFnow6Y30rUlEOm9HRRhe7nqg2v1dPm2Uee8PwDZNREzyRN2Zd0pwKDLfYAe7RmlAFzSRHIYinPSN/FdrbbIrtwuOgYZPfg1/SFGVBP/SPQ1YS7fOu9TW1lMlFkzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711790297; c=relaxed/simple;
	bh=kD52gpXgAAGKnU8MpNKsbboGSShsUvtPyXpSU4phhuc=;
	h=To:Subject:From:Message-Id:Date; b=hA1wVNN0xLBhdVAgTr81xX5l2DPRjIz26U+HsuyoeefHJ1ZAMOvJY9Y2j0WnLBM5m+AUqA3ZdpUCn7Zcl6PDj/gKQLZJIHRb9pihapDiEQHA8bUBEICq3BS+GkG1StrmvKk2OGcGATfBIXKZ+vHZ6bebBwCtoch+fS0sTkRMEkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FC8/CXmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FC8/CXmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BA4C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711790296;
	bh=kD52gpXgAAGKnU8MpNKsbboGSShsUvtPyXpSU4phhuc=;
	h=To:Subject:From:Date:From;
	b=FC8/CXmH00/aTNB702148BW1aUP3GXxreKIOCQFiIPgbyzk06HekQw2rDUy0GqIUa
	 Kus4+zbr0PDclhA2h/+b/0vFSbtpkrFLte6UrhvNxklRd5z0j16Op9oXvd+MUgPeU8
	 s/LoNcvyIgAhHX/zT8Fl3LGTFsTWI0CGU2rq6cpVsEiddaspPc7Wdjg63vrJ9ozr+l
	 1D01Dxf043cLVfZCi2Vzo3Ybv21tB99yNJpb13u8iZBhajjVoxTVuv6qXh/ENfMOUH
	 7IgYYF9MqwkaeaOlpbIf7irQPtnagzipjmQMrHFSrJobV6p/D4DpIz7o4pygzc8b4Y
	 HMV+jzUvHItmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 625E3C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171179029639.30699.15411844461603167828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38426fe737ba013d57b078eba13890011839a21102d9106aee1c4b305ebcc5b4
Date: Sat, 30 Mar 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711790296
