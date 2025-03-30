Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0D427713
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743315594; cv=none; b=kq4ltmD43jeuX7Y5BeTZ+qTsV2LhLts2CVrPM/z9hnhTJId0d148LAfMu/dRvm/3awZE2P+/IKKkavzY0oGKlXCMQQOomdj6hgv5T8PkqwMlxNYvwTZNEwUesHR9X9i0q/8YqznvCMtMe9u6AstK36R4A5LcEZzu39WoD8ejTvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743315594; c=relaxed/simple;
	bh=iCEyTIxgBH7WcNdpaddy+wmyLkjjCiay9Kzjcs7Rmto=;
	h=To:Subject:From:Message-Id:Date; b=kSo28FcXZktLB0RCXJLYioqz0DcoBtftbiamzR6cTb6qP4AxLZuzhuPxq4wUO3neHqvZVsQhks4vySCUAXfqYCb2/hufmvac71DPMpDr65GB/RBN5qWSjcH09lui5w5Qok3DHMoMtmKx12pkUH32ZMFu6P4EMFBMEQIAJ2mkpmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOLIYZnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOLIYZnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0936C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743315593;
	bh=iCEyTIxgBH7WcNdpaddy+wmyLkjjCiay9Kzjcs7Rmto=;
	h=To:Subject:From:Date:From;
	b=EOLIYZnJmyJRvn46XeFWAkskVQ1+LjOZVG3zHWoLXCoaao/LlalDxMoNIFNTKejJm
	 94QwWqyX7RBafMlaPQbdF8ueMD0iyIvhlvfPtd+N9QgZ4zXZkuO7gEKIbFaU0SDMlP
	 Dn8HxllmMXPfBcXfTIaTdtI26r647Yx7tzN28Vw+8I8jP0paVnM6M6hNQ8xyoVh2df
	 f1EbYitdsq9c6C1EV6NdqcnB1wBcuXZekmnbG8aANYyuiw4hEnPngmfo5LUnwrdreY
	 l6FCjH8cOb+GdDCPgBhV5Lznuvtgh5Es3sPbY8kOMXwQbiqXju1UeEgtDrevXINOsD
	 BWOOV9ou/V7yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96026C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174331559358.20686.12132503733846674103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7811996cbe1e957501bfa50297f204dff4ec49aea1b9fc0d3a4e9c94e221f64
Date: Sun, 30 Mar 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743315593
