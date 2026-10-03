Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47001227EBC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791010234; cv=none; b=CN+5L2pZE0sl3azGy3iqIaTAT1F7a2bTHTz2rouLLJxCoBtbO5eBHJ7ULmBm2jZS3Oj8PMiyLVAp9kQsJ1wd2+t+PQ8TnAYusJ+b71wx21X74RH9B6fYHN5owYyPLG60YiRHwPydlqJnDSWbyPGWA7uwUyZEzKBjfGWCbdUI53Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791010234; c=relaxed/simple;
	bh=L4ACixsVDH6q7xbd+ed1aAxSZThqXHvBzRmJkuzZy7E=;
	h=To:Subject:From:Message-Id:Date; b=hxcoBEBGGfQ+zuK3UlAz34b6sk+D2AVQLFfQGvuHbb5OSx7P8sr0gI3gQG7bSoGfPU1CeuIKgJC8YLFL6l+ST5cIgIfndeL4y7uLvgRK8+u/5s8/fsug+D8+2ALxzDED2aS0E4Uvnx68Vkd3k8B21df7fmdwdELTRjABEAG4yBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3uYwgsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3uYwgsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D183EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791010233;
	bh=L4ACixsVDH6q7xbd+ed1aAxSZThqXHvBzRmJkuzZy7E=;
	h=To:Subject:From:Date:From;
	b=g3uYwgsMbnfhLyjUKPQzIBrp+RAGaWaIk3Qr6vXelrbubZHAfIAbl3NdDuhOqtvJD
	 OPOE3A3zoxMRwFPAeb73vDr5S3AupiFuokcYBI8GveDYWtW9QUDjV/7BMHPgsdSD0I
	 bdE1ElGbjf9BfVeDeJDlW+T7KE9WRNvX8LmFhWLuWcbGw52fxwyV1bFXMr01LfPD/v
	 4IOoDGmYR7OwrqB4XPMjkROj/J1cpjVSM9DnrOBrlsvCw75QN5H8UzlT2kThQ5tPym
	 oonJYzKUezzePAgJ8xc8YhqLqa6TP38Z84SCBDfMgRaOmRpBPp0M/jIwO1dvGn6iCF
	 A1VrtP0eHqXqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF75DCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101023368.24683.1865150407359268597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d805dd53f8f4b27982dd59065755e5488ba22a889459df3ab01fb621116509e4
Date: Sat, 03 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791010233
