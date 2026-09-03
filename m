Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627BD21ADC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788456634; cv=none; b=FMCNt4kgo7MqcU424cwFQdWHxx1rrB+Gmd7x7z9aa3HVB7h3D8McKcTpV1OQgOIubtYbnBOqNQ0wnwgD0gX5DlkhCGK4wwX4cxFodJT3SnPf8HF1H3V7aMpuO1qDBweOoHiy3tfUT/xiaW6R+QLdtFnIiNW6mjWk3ISCztY3USU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788456634; c=relaxed/simple;
	bh=vpsWenEsBZXb4383TW4XamU26ofg1ZpJibx9d6NNcds=;
	h=To:Subject:From:Message-Id:Date; b=LcsiALbBoaZQyPMxGTtvNYmMKs0+b1jmzqAul3XxRIVz+EaCtlu2e/ADIfdANEZCqovLR1MHMZwbGVAWx3Gez0o/d3nCxuB+dHfZTnJs+5EoAy9lvK4bmp9wK3n/UI2IlheDMqhzYNeCmy/V1K858uzcynt2keyj0jC7IVESVdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTdxB/Y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTdxB/Y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF28EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788456633;
	bh=vpsWenEsBZXb4383TW4XamU26ofg1ZpJibx9d6NNcds=;
	h=To:Subject:From:Date:From;
	b=OTdxB/Y3vWOFDSkPbuuAHnFvcrih2iOL1bcocMy4CcbxJLyK++idV2ybD3TB5ScNF
	 pmrnIIENvpdTLAqqNiDYBNYUzAyfztxTup9MUU+mao3I9yjIul/9rmqy+/acBlbYOT
	 qvyDUslXWGumMYSXyVUdJQ7Wa0PdPdYNzElE0V6i11k4CTD3dz2H1Xsm9qF6gaFS40
	 TuwVLD4OUanHEDSy4OJp3dXZnJEFDuRv9MFNwAORf0c8VmXIbDpDc1TwuwDe8DU/RI
	 JLG/rkvXAHzAd1mAHZiabi+Te4SXWSgNgbEEcBtVAD17/9asoyzhd66XJBidC5tnWN
	 0023m4kCeumTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB279C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845663369.5757.247323077303299589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b5634b2864a16ed7fb4046b14c40072ef71f67b0d76bb8490c821b38e8f0ea
Date: Thu, 03 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788456633
