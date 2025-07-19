Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4D3E56A
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752920394; cv=none; b=Fy61EAkYCXHM5bQoy148kS6e/efarrDkBMRjVg8SAvlns80k9KG1XxF0sr6PBEallpvOb6W6fJvv5Lz+J1ZJ966Wpvp871mLrs5siW6aUEnpF6qi8+PZisl+cgm0zPjJA0VuCzK1pbzEQ3KOfTMfSLQzyafAoec1IEoHemBrX30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752920394; c=relaxed/simple;
	bh=OnP982G9FTLw3RkMXwb93rCffeZOnv5wYstfpHD/f/c=;
	h=To:Subject:From:Message-Id:Date; b=qp6WGml9n5ADwjAdwuRWODf4srFNleUB+FdcOhhWR1RNxy7srM3VeYMkmrTnswcYW0PNa66QnZ0u5mOd53sOHSB9iTWX/Q4KSeehdojDkR5DVEQkILhPbtStBJOcBTdvFqEqtOs/Osm0Ccd9ryV+70UbMVaePe/a7n1cS1YFMWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UacKaQ8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UacKaQ8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A816DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752920393;
	bh=OnP982G9FTLw3RkMXwb93rCffeZOnv5wYstfpHD/f/c=;
	h=To:Subject:From:Date:From;
	b=UacKaQ8iiF99w9x6URb7DnVCYcdYRxWKptarlGipTgPjxri0Eac+HtnWCRg8On5U6
	 JkM30aPHvzvFXFV+fn9Piep+trPnd3jAhF0h5kSjSnRR/xjP8lH+YLAot17rXv+iu3
	 od+2uFlnDAWNyGVQmp3DyhJqiEttcZdeWx2jXPDOYk/VKQATTz+oIn05bjZzSyM4e8
	 oiJHOTOad240hh5c6J8fstH8Tf7tULM+H3Qcyd2QXoFC1lqXFaLek9rr3dXVpupw0r
	 3W8/e6v2h1OsDnJPv038jKt/NYjstprMFhE9ktcPUbe479JXQUrfkneBMDFftHC/j4
	 fVt/+9FkJYHug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95678C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292039358.22197.10270393982887371071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4688bee8d2773324a853b3c96e2ca4b7333064e158b5af117bde80bc98a9c16c
Date: Sat, 19 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752920393
