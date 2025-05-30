Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340AC236429
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748621394; cv=none; b=EjxFi+4t5BwdPFVZyc6fsA97UFxbSZfPq73cjqiUbrb0qynJ0it5hmDCJklTJ9/gIGUrtqcU/RZSsVtLp7TxrQwnbdvGzd/79sBu5Vm9Uq0STzyvWDbZd3JRRySvT4HkVgRlQjQw0u9feM9mfi5CWK970/j1LHRC9VTCEAKID0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748621394; c=relaxed/simple;
	bh=OtP3Rmd+duQSqXAO6Xmi3ndAm3ezDcQnyme5+sqv6fw=;
	h=To:Subject:From:Message-Id:Date; b=KylwDl5rU8giHUz8yxdtsUkJ7LT8mbZHxUPKraIfMOzYgoH70/iNHn6OV9Kb0ayo9Nrt3fJmfcOazzZCC8kiFZCjgxN07u5pHJO7pR4cvjRZCpSUjnyQPMCwHIdvqrK7cQEnZ//L2w/HZogUcqq07iZJ66LtFLptxQ5p9o72w+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l91IVGOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l91IVGOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECE3C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748621393;
	bh=OtP3Rmd+duQSqXAO6Xmi3ndAm3ezDcQnyme5+sqv6fw=;
	h=To:Subject:From:Date:From;
	b=l91IVGOK0xjlHLobPtIZpZRXUpcYX/v17h05aY0yGP8sJ1MeMBGBZl8I+a+xV0AKP
	 oL50+eUfdc/vttvf30OK5G4dRFtKzq44NX0e5vlcXtrNLwvMF6crE8vJ29p0DLmMzK
	 oUreuq8/TPrvxb8t27NVrz66l92+7ZRS0WmsO6I/tENswLcuP06OPdXAkyah/oZwNi
	 V06u8V9uEwoHGAlxXfUBXn+N/34aO9AzIg/Zm95RJC1ff+jGQKSX5+IkcFCHcq74BD
	 VT0S2BJ/o2y3+8CIsYBFXVQ7EfuAxP1s52EhZ9TmCR91uO3hg+PptuNcWfu+L4iGSL
	 vIR412hZQdbxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF8C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862139357.12136.17710263045364127224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42f4a8d14ce3f101c3597952d00068fd6e556c393a45e214c4cdee6be1e286f
Date: Fri, 30 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748621393
