Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168A8524F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763769714; cv=none; b=ulYGLtdwYybAdUn4amSEG3cvp76a2mWjzx/IFUDSX59XTh8fmGSLkEprcT3UZWZPPrx+y4EVKoahIoUj0B5fWEqPhZLUvtPewfWykItRuMYa71pNU5J+AqcYk10+ApVIllCSgV6Kd6TD01ltt32ZVf/BtzyemaXy0p4NiBVEM5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763769714; c=relaxed/simple;
	bh=EDC0KROK3cNood06vy2FqPDSCHYTyVBB4bdVXk6SzCM=;
	h=To:Subject:From:Message-Id:Date; b=qimxebo4Lenifyt8jn0mj19kh1KXomU9ZO2i/h7QdaxLtK2c0Uzzi9myLlKP2a2eVNNMssQQdrID0Kn3DhDYbx0+RwZ/RsUrlO6vVRs0MR9vqgZBqaf2fsOcb1+Kui16N9wrEpuiKfoqQ+XgqpL7I8iWSBNQhrPm0+Yd3LUic0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHRmvphP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHRmvphP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9166C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763769713;
	bh=EDC0KROK3cNood06vy2FqPDSCHYTyVBB4bdVXk6SzCM=;
	h=To:Subject:From:Date:From;
	b=IHRmvphPPnC8D+BKSQ494FU3bogixWobjWxbDgomX//cTa4gaZ+tjoC/o09JKOIB6
	 VQKHIN67B2AGwg/kz11/UaKx9m4Y5RgCEgZatQ/Y20f4IoPLdel+vzTDVofyRwgxT9
	 WdzmB3wu59Wu40zZ2HqdxqltUPtH5p8rvERQWdT1IUFXN6wNcTtZAsl9NC8HadBFd6
	 Ifj1WQ8jjYSWwA27MBAWhPCGbIxsawo89Te6FJiKjkg6V2OOZdS+N1bX+XTnYAachB
	 tw1xSNN6IDM2povHCfs5+JO0b4yTg2dBAk2I6pNRbWQ0LpFz4RheWFzzPs3AxauewK
	 zhrI/B2Ex3O5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC9CFC516
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376971360.8731.7206238748593298524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3277e2268cc33f1a484154ff049fdb08524c6f261606c3e1af1d76808f08c9
Date: Sat, 22 Nov 2025 00:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763769713
