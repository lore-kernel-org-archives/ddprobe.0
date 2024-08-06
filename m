Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B0E165F06
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722938754; cv=none; b=RoU4ZphlALL+zeDcX8FOUIOC/dm3AcvXwj/i8x+vpnlevnCx5QK7Pnbc56CYVsDxNSq+VfqfFuUQM/LvmhYi8ISCJ/mH8xI8AXbNRA4Os248lJjTGurLNkcXCZW23rkap1pZ/9fAEgt95nRcCLgnalmStKlVmK8MEllpGls3574=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722938754; c=relaxed/simple;
	bh=YJteRdejWB7azXEcr0RmsKR5gQFeobvGutX6Yz4hJk8=;
	h=To:Subject:From:Message-Id:Date; b=HigDxix+aKqzkrlVwPKGG3F1psDgLTbzI4T84na5Hh1BlvbvAgXulLmq47SkbO5QsrY4L3+P2mZls5iy0O5tiWw0+ybbkbefTxsY5qiZamM73vZS1yb57Xv1Iks8wK3C2BFjfYv0rwM53f3NAOZyvjJ6/KQ6pE/653Jdk00wt1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzNM1FBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzNM1FBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B79C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722938753;
	bh=YJteRdejWB7azXEcr0RmsKR5gQFeobvGutX6Yz4hJk8=;
	h=To:Subject:From:Date:From;
	b=KzNM1FBT7CNG1Jm+9/PY1ZOilzkfaZl+c2eIBs2Y1Pr8hoyAuerMvHWtk/x6wB6C8
	 rYwrlfYc5Dt0eYS9nAGfL6FiCKWVDXOoy9Q1+WTccMZ/KniYGb0YwizEp5X6V6cBMH
	 ProGKyVDRiziZFrgKf++qMvAzvnGBSJE9Cw/4Y4BaFTytxS1m1PTPgUBdYnuMBuAm5
	 I2NDw50F7U5hX8pfc7ey/sEWLJNbToOt55PICfFqlNwHhIz7DLk1csWsXihAtVqUF3
	 2Y2uhWg1JsjV8YyK8uPxcEM5ou0/3hqCNsFovU/i7k7zFZUrNM1PHRe8kwLYjur09L
	 0o5CR/S3pMY6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D54C52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293875359.4694.4358536547697215488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d838fc3c9621f480a29f3069052f35ed5cb3fe27f662e5f541e91e6904e83dab
Date: Tue, 06 Aug 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722938753
