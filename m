Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434A51F0991
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785057634; cv=none; b=gUyuuXhzLZHgs//29f69/Ief3Cj/Uqe1r7c2rgly6v19ZvVtz1qu3On+4MIXUZGLD/w085mt1tpK0mmaZ2VFWYjEyUFa/K+ChcusYlIhxvtwV14mYdUUIrKHXVCPtisB/XI346BI2Dl5Nb3AHT1RZH3gb/MO9plyHNdpj78m6eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785057634; c=relaxed/simple;
	bh=Bmh/m5j7H6W+WuvGYMfozqAjgRo0bmO0pJrMCf+G5Ok=;
	h=To:Subject:From:Message-Id:Date; b=j999hH+sicysV+Ge4u7L12fCIdzbz/NwkZoPAKGtukH4K2aGwk5/RVSozftUNNLR7/koVgkv4aZWe6h9STcENBzo5YDRlu3VQy03OKduZdXvmTHYjKM4dtXuEo8zbhpiNrgLObjvG9t+gKSEtXfuBxcedV05LbmhGBXH4TGugQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTKqPQSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTKqPQSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C527BC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785057633;
	bh=Bmh/m5j7H6W+WuvGYMfozqAjgRo0bmO0pJrMCf+G5Ok=;
	h=To:Subject:From:Date:From;
	b=iTKqPQSNXUepsdPcQvARe9++q9fXpM2FlWDezfNhn2awynk/zMuRdkAJX2iwtu90g
	 d3NQsAVJOdd5ihWzbEVuTf3gE8AH4H1PmReVx7vskfPXLIvM7zd7A0hy68NeIozcO8
	 J0Wf9UoUDjYsN4M2lBVtQXTYPkfWeQKkvWQRIgKpB04NpAEKI9hqz4wBXvCAGhWGSN
	 sS8SoEos5C/DIYP0cJeo0C4Jjp9ZPKDmLihBADfGNgYtY7z9tenGJJf9iV3ypndi+z
	 q2wjXIvujJvILjj0a6QRzpDLCwO4XlXCjLdK0uk7RqfLLvcbCJDn/l2otu13fC/hXx
	 iZ9BhI+bMddGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA4C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505763368.11882.10137524289176657388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ccd80f82ec8389c34107128a6ead0afab34c9fed0d950534ca6465903366e2
Date: Sun, 26 Jul 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785057633
