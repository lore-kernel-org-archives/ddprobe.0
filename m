Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DEC4C85
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745034594; cv=none; b=qvHuX4nsiFNsOmE/BoCc+BfbgRMgNUlcq92+VzYhbXdblPDKYBj5WZcwh4KTcQw35FySX9OUeqMq607TVdOB0Y+0/EsfOCxSEGF5FXV87faKaUqsF5aI6kkuJUwkQDI1VSYFpbwVzH2yeQVppOQH5dKYTFGR+Geov7OTdymDL4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745034594; c=relaxed/simple;
	bh=BR61AJCR2vE6mV/n8yPcDF1sKQxJ9FztF7wW1QAVYtA=;
	h=To:Subject:From:Message-Id:Date; b=gk3uM2NbUVGE73lf4k/GbgR2hY/VuGhxMKL+7W+KNo5pulYQvfzZG010A85C1n2LwK0cT2YMTcH8SswBmIqYhh0FhaSPEhhMTtm0t7DwlGUtrvAvYbr88U9H8BSZ0YhyVfHSHqWlQ4Uxd4zWonuFcAT2gHB8I0sSUj27rLy+Mb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQY23ezd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQY23ezd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD177C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745034593;
	bh=BR61AJCR2vE6mV/n8yPcDF1sKQxJ9FztF7wW1QAVYtA=;
	h=To:Subject:From:Date:From;
	b=UQY23ezdh9ubHYM8f/yJnF9pwvInCs9IrnwEXd5yQqWgQ4wMFb5u1Njfl+lmdNnfy
	 47zQAUfLs6IBaPNEC+xBUy8WQX6MPU14P/imAf/dQ+UF5vtNxxj9LlIY88OBZQC4Qo
	 KGXGnvuuEjNpkQ/aKnst257FYVpPVDLVEEJrM9+rv+AXqymekzq9t68ktRKn+2Mook
	 TPoSOC6YtEYwgtZ3m+fYZGA+z56Te0rmOIib5y/925fULKdntv7i5+Bnn0Mzqsb8hC
	 kbhof2BAr4ut4mqZzhRamkqfRRdvgCqEmJeH8gnYe7vAoyV3S9TCbAF/Gvf2eOH3aB
	 Q9VsQSNRddFDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0334C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503459361.4529.11844643040685909902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff55021c344e67986265cdab831d55e9cb6e9fa296b7d2d7b0f360010216b0d
Date: Sat, 19 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745034593
