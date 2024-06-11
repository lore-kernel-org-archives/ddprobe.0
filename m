Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4AA13E8AE
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718104703; cv=none; b=MO22sOjY2QvtuESFgCWsN8yr5OwYSILtA2PPOosFuurTuKf64PdandU7jQy8vlxYdWstP4HyyuiAce6khlxhpoE+udBMawuUp55fqeAEfhAvy0ik/HRQPtzcvWE0ZToRfgPEApvbABmdSP6e/9ogYH24izZ/F8mn5+3+njJWb+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718104703; c=relaxed/simple;
	bh=ze36q94V9VKp1Kd2cq+LoqPlx/QtuaP/6ZQURxpdf1U=;
	h=To:Subject:From:Message-Id:Date; b=Iih5b39gGFP6HFuadtnGaGXYMc8HGYPMOoHPJwX385F7dx9ODn0nQyioo73Fu56o/x79Yaj7+cFS9+Ke/NBLPW777LWHXELaXCNf2BBBf4RuZ7sif6EeroXjIR9aE4M8UTP/sGtKeg+jFsJi2PpOtLEUEMt43ZXso1MFjeJcZgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTT0uIsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTT0uIsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C54C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718104702;
	bh=ze36q94V9VKp1Kd2cq+LoqPlx/QtuaP/6ZQURxpdf1U=;
	h=To:Subject:From:Date:From;
	b=PTT0uIskdpLi8DLLJQJgmmts1PyFqTLdOgC2zi6yweUmX3Su80PA2bNBM6ymSRHND
	 wOrc2atsJAxAaYOnpZjXYroiPruDY+nzAVH+wRBalQKAoB8wKycItPdoMXgGJjx2U3
	 JAe0/SJwJu7yZuZFn0NDbxpYYCr+FoKfgHtFQ6f30QpR9YIs7QKeC/NwhQ6Sum105j
	 QSSv6LyWtIwssb0uENeeEwGZhMKlQl2IYCrWrV25E6IuYsFh2xoERyR9mtIhngfmLo
	 Kh4hvvsUUzydSmhQ6j65j94ml11YwpCmRSr3BfKOgcP8PI28pGuFcTVLzB95nAGPb1
	 MKx7DTg9b3o2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE197C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810470277.4430.13451085142826425912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9cbe7f92bd5d1c8d51456aa30cda96c8eef3e459582495a5f2f9406119f2f77
Date: Tue, 11 Jun 2024 11:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718104702
