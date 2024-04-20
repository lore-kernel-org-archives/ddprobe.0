Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B71B17C66
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713640223; cv=none; b=XoNnPlhZWnMbHoe1yj2quaUtq0Pt0FIoS07Zt1NphJzgLZJeeJq7KhgNX+jUMMAm2EcojxR1JM948rfNLP/JsDCgCEQi5x03QcSccRCEMDfa5Oe5a8MmhFmxwdbM1c/whyMsG18u+0bb48/gJrq38iy7ZquD+bNx8Pyt6iK6a4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713640223; c=relaxed/simple;
	bh=Wb9zE2PdcYgsgN5EZWzi4ih41VtduqVpmflDajFDvQc=;
	h=To:Subject:From:Message-Id:Date; b=Hgs5UIHdtjpmjSCUO7zxhVB0+yL1OMJrlefau1JuvIFP2yuOLINta52J18XRbaNKuoSeihWEIM9D/XdtlTt3/aBlaO7ED1QLA3E+xKbSNhQC3ENRFLpdgoURcIXnvSV+lYrhojoonkxVRXtVlfBAeH7LKS3aitiWLWmo06V0bT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuYHmj11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuYHmj11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1908C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713640222;
	bh=Wb9zE2PdcYgsgN5EZWzi4ih41VtduqVpmflDajFDvQc=;
	h=To:Subject:From:Date:From;
	b=WuYHmj11akTNtw6kmSlVgi/OMj6mL00sc98CB0P9vUpLDeYPORdUXkH37ueF5vLIu
	 sLo7LbVXSi4uQAVjrjiXLDqBsfPqut8lLsT/RkM28IPbkXkzfkJlY0jiag6/xoHD8R
	 pbw9SO9qUxJ21MseKps7lM6geqR2swaseTN8Lmw6j63eXNjTodgfe1dRnEdqW4qIMU
	 SHNK4dLD8LiIqRi6XHyRJhpGa5MytKGRdKOrPv3mdQ6hlcRx1Moeqcs4IIVbaSgFGr
	 18+Qx1v1ht464CQM5U6Hz6mWoXx0cu4a1QsB9+e3PZto6Z87UMKxSQwVMv8j2vKjCH
	 Y4wRwFGAyMEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4017C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364022277.22268.10226423977991726115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1f340c2c3cf0c4f9d391a1bfbb61eb3f0be5f43f9a006b61bf9a7ae093cca5
Date: Sat, 20 Apr 2024 19:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713640222
