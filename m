Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558B228152F
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744404594; cv=none; b=P7M5i/r4MMkVzOkFSEDaEB7nSw/6VjiXfXjvJoFz+ev0uavmfAi2UE37cO6U/3HCL6bRKEgUfLHCgHCaoSKRM0RgGmk3/j1n8c/xiLzLWVs0xOZYJpAup1vMZ4FfUtwCi6F38VHnQ6ZKmzaYex4bLKxjURcSBaOZq3b30B4HXqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744404594; c=relaxed/simple;
	bh=AjP4bVY+eVPhoHHNlw7jLv15P8bLPzpQHa8WLpCTfrc=;
	h=To:Subject:From:Message-Id:Date; b=Xylzzk8KGytnOFLr3v8sm0z3qLBBghlZP2moGFDKoGZgGq8MBO0zbSmkQ4qwqY+00oNRNAV42pOdTXS9eu5dXGHEpcE4UH+VlAMdkX1dhgeuNn9zAf3W5dXhw9i+Cr27zppjRtGnrA6WTm+IznsBxnVQUHisX3spAZmiICk1uhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azV//fF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azV//fF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8CCC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744404593;
	bh=AjP4bVY+eVPhoHHNlw7jLv15P8bLPzpQHa8WLpCTfrc=;
	h=To:Subject:From:Date:From;
	b=azV//fF5grPhe+I09LYB9Fi82FKCtii0Sp02e7IuQ6hva/eD9a497DYJUrM1IS+Uh
	 XQam3uJQQEkj1BH9Lf2PJNl/TecQ3AEnLrLCGrWs7vobry53qOVQyYu/BJQinCe46Y
	 iHIAeEXBye34ywkpKgkBrOxlMApibS6+hQjtCdq4XYtj2HabBUFySrTihUeauwmAWd
	 QCbqpPbtnZ31zuZZ5N/9aUYyT3ALQMwoPpbVYEn8CP3AZPrfYA7Zwfyl6jC3nVCDEq
	 r8Dp/3rSbm6v/HgztiegYOxsFYL+TFgcM19j21hbHGrGhA6nX2G9yWYV/MFnbPIoJi
	 IDk1guPfjuyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98245C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440459358.17606.17355273444417857226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbef5a6f5a3385161af43ad864f56552052b9444c8ce47c385296dd7b5ffa72
Date: Fri, 11 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744404593
