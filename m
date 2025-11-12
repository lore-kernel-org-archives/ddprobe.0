Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5333126A6
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762947594; cv=none; b=sJRtDtr6QsQo9vJShgRbYEIWM0uEc2l1SQZyTZjLueGA1kTxKyqhsOYBUEnOx1+SMRYLoD1FhreWs0+GIPYDHD3LaWHw49tIvYyozS+JYix5G2tnJBCnrIpjl/qILH95RBYqz4F5LbYUvPU3u52Zh/Z1tGca7rU97O5K6qHEGrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762947594; c=relaxed/simple;
	bh=4RivU8IJxoiAMVSPfdSvJlvvmDgHLyrDivrRQ7Apwhs=;
	h=To:Subject:From:Message-Id:Date; b=ax+3nTm4zwaS0Q9ljzPiYr01fEDF4sNS/aTjlJ/mmMCm+zukd6tm6EOb6EqpxfLQz8FFohaIDGf0wS5a+YAHvkt3fRd1qHlY1RzxII/uDGicydfIcdfpXnK7I1M6dzYzkeb7b2jLmaN6cZM36hxfV0WTV/4WgCKt1o4lW5vJku8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Snh1x3zN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Snh1x3zN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFCFC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762947593;
	bh=4RivU8IJxoiAMVSPfdSvJlvvmDgHLyrDivrRQ7Apwhs=;
	h=To:Subject:From:Date:From;
	b=Snh1x3zNB9Cozqntp1ynBhaeTQYR8EwaJdKLuHrL6rIbOL3Ic7ftUmv/Z6LHUCxso
	 j2yjuNGAtnGV0mb2bBDos7W//fLWkytJL6PasWwWbxxaQ+KnaFG6+1UqcUeD57VEHz
	 +r2HsC2Sycc81Aj7W3rIXl8PkQQEHu2oIe0LHxtRlKcyvb3FnSBHOTtYdg4fZ6psHy
	 viIgkMrGzxp/yjmpP9o0xYtL2A012WY7ryCd5Babh/yBeUdiMNK8qnspF27xlVi9Tr
	 dneK7N5Whj1Q8YXvGyoJmR1XRT6boQpvYmXxz7I8gH2xp7laoPiaNkPjtAYEfiDLMz
	 xRNAUIMF0nnhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC9CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294759357.16706.11636335339041823453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347f432aeab706c0521538617760ca7ec2817c42a3dba4a7e9d9c2727d0cbc1d
Date: Wed, 12 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762947593
