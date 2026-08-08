Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABB435E92B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786218634; cv=none; b=qVV8q6gFZ2Vc+2T5Yn9bbbSlI+h7V1tEBQIS2iS04j9988aIEow33Ba3sxw4z7q+H3okHXYmcmSiWRNXDlKiYd1EzyfE4/5l/jiCs/R1BSLa4KWnZkO+j14OqKGfTFuG2vl8c/68GL1yMRsH7XRh5nIvahzX6ZNEII0M68ER7yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786218634; c=relaxed/simple;
	bh=wOiu4REjB0lctDlfbfzRXBq1LWKVP0Hd0qEVCpisnhU=;
	h=To:Subject:From:Message-Id:Date; b=dZBa0266C6gOT18YOH9Irm0CXto9KSrHpwap0OtX5nAFOBqIgu0Rd2n6/LQrWDJS8fBuUBjYwmYHjStuYXpRnkG20ni5IcsWWzDgvAtMmrnVjXfAkj376T7c0stWpeB1Ql6UH6ti8tl329h+1VTAVskhvFdn87EHulmCrJQfjhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2wCeNd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2wCeNd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE65C2BCF6
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786218633;
	bh=wOiu4REjB0lctDlfbfzRXBq1LWKVP0Hd0qEVCpisnhU=;
	h=To:Subject:From:Date:From;
	b=e2wCeNd3nCsnfasI2YHxY4uSpF7kndJWoRnPtfrnb0r5JOCk+VOhwurv1dWHCnBme
	 kfrkbGhfoBKy1Y9t7mghp/c4u7XeATpkQRNoPpzUvB5KZzhgJQNMhu/DECm2Mw1WhE
	 PAvQKPZcuCAIMLG8toLTEYVfVOyKdmSz2y8jsImgfIpW5BoFfrCEWF6+d+LRpUrrDa
	 VRXecnWg1WL7tb0yjJ63NuG36geYw7NfP2QlHKHkrUU0UdYLUgnGtZoL9vM51xoU2l
	 +UPlpGXKkYBRrAwI5IFJzSWrAIeyOIVboBdcEzckfxVGrZdLJOwg0o4DMd2p+jNMZh
	 4luftHxMLnJjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5CDC5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621863368.21953.18427635001948624601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb15871a0395e1e5a5e0875a185631de6ed8dd72d25488afc98a7cfa39fc8de3
Date: Sat, 08 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786218633
