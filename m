Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED2F274B3F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751370594; cv=none; b=MetI2stc9zvbLveyenzRZ3u5/81BJp1jvbw6hQP5bu5UWpLqsAMcs9gkyncQiL+407MnBbNva+tR8u+cwCfds9SnoKwCeNxAWzq+k3vuoCOT9vDnjGeho+AqlZtBsgntrjQnXirrSQr8Wil+kmIlDAfPPht8JdFjP1sr+7RXi1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751370594; c=relaxed/simple;
	bh=JoJIMvxWYAAIzii2CwxAx/70d+fZOfwsVPLmpLVI+3o=;
	h=To:Subject:From:Message-Id:Date; b=Emqe1Qlh/FjineBp3LTHZg1aGQuFkdHfj6uFBreLEKJrRMlaxcHVQ5czR9gyfiGr3NKaOL3p5FQ3WVaMmfvMLwx3qadvnYgqhui2h8E/mWvCRv29ssNBJiaJdpQ0yv121kt1lYRzVm5TnyMeDifkgcsWIK56iHlogRIO9jyQddQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxnMjGg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxnMjGg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3351C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751370593;
	bh=JoJIMvxWYAAIzii2CwxAx/70d+fZOfwsVPLmpLVI+3o=;
	h=To:Subject:From:Date:From;
	b=XxnMjGg86RJCR9ahNJn+d1nOhYOQqGMn9NEmSFyuyt1h1Y2NdwqQLpX1Hibgowp8T
	 coX6NFD9SMyYa0f71xKq1NMANzjJSMpjHZCFsucVcc542R+SyFhTmFDoLpKVJBvLp6
	 WttyYkBdmkUd5oaLOVuz7MG7sojKgUPMmJjH8Nk1gnSNBxCciOufgzd4IKWihTD70P
	 9qZiFFUnSF6yeqX5INbAAATDEVFtQ/o8phLKmO39uTzflXyxgsR1tSH4jS4Zh01s+n
	 CI9W0AGPCm6abNPysbcfZI7T/wMsXARJ3Jl7thGSzOu8jBZtvP4ZupZCmYADBa9olT
	 Xq+ERSU8utIsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E0C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137059357.4776.16591499696826347995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292d3737a70f36f089760cddc38492187a12d26acfc1bd2f8ee87f5cbd30951e
Date: Tue, 01 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751370593
