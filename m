Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622051A5B8B
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746286794; cv=none; b=Yqk7FCTqIMzU+SpIrVGkmJP2Eg0HT/T8MZDcgkpusuEYGmMEPmuoaBS+flyMfdvu+RlZ+MqT/cKEWIZTe5cOR8ydOjsp+p+oZnlqZIZjQKJrdIJrhx5T/op+6gqGarOYyeXGCJsNqqC7bOGBavXH8zU4XA+tNj/j9rgPcwKXe/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746286794; c=relaxed/simple;
	bh=SKbj/n97VrTsbH08miFiA8AlxR4PWcdWRn+MIR8yhqY=;
	h=To:Subject:From:Message-Id:Date; b=eyzZCj4pMf3YeyDcozd/UgDZlNey08ou7CpODKGssdsrxLxS65twk3g/mdvVpo1sQ+IBvW48jbSpRRPqPDFS+GOyZkZM6SNf3+MSyeW43y8KoiBmPT9y6dYWqb3VI4ERESQP+1g1dtj7FePM6B45+vX6AhyZXfjUWhdUtUcnPKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nz56sk/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nz56sk/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6772C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746286793;
	bh=SKbj/n97VrTsbH08miFiA8AlxR4PWcdWRn+MIR8yhqY=;
	h=To:Subject:From:Date:From;
	b=nz56sk/tkWU3+kS0ui3k9YzouhzObcJgfpFrD3vsThXtZ+i5V7uf9w9stTuhnRNVM
	 o1yU3pst8m76UGxINXhdqPBVw+5WQXq9q9qlsBnmiCv+gDqheq5yvCIYURrRgZzMwS
	 TA7dAwQjJaESg2oDuAMahZiMocvn0i9Tnnqee1qOIFGa7mZQVuVI6WKxgSwVW9pYaj
	 Oh/g8wmy3FuuAReV9Dd/8xJ69xkf6StFK/tWgGMtxd5uo23IHSfEA+AmGMk2WYmOPw
	 1XVUFO/EIPms29B91eZlqoj8wjKEOrMDl42ozpNmuw88uw8MGbhBQ8eNnldwOJNNUQ
	 NNTdvGA8uPm0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917BAC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628679357.9274.7070390399281165364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf4ce42deec45bf695cb4bc1e80039ba08883700d66a7188f0b002832cd10a1
Date: Sat, 03 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746286793
