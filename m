Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152861E1DE5
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760875194; cv=none; b=Rqa/4ydr96n0SeydW1A76ySYGLFBEEbdEQ/HZmCyklzhHQP9XGEFrDUievXZ4fU3oncqohKgTrjlFgBalmioo9ZdMXfuToKundYrSQWBbShqVzG6cCNrWsILx8AyK3iQ7wf/tlCmtDsCe3fsJ+CzNsQYYBT+EUmlvzL/Z+EkYG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760875194; c=relaxed/simple;
	bh=pVFJaYWE6s3+iCO7ZtGTpsVRUUPQ3uIyugMyFJXwst4=;
	h=To:Subject:From:Message-Id:Date; b=uQ3YqdnIyx2zyTA0rbzJexXBzDitLU1AiEMoOVv0hEccyzfJysJ4f+PqIin0a6HoNs4ArJdf+djbT94RZ+QQLFmzawhEw0T34spuXcHYe35ZD7dFloiQFPEgPOgW2jsBbbVm65Popcm1w0MqN8LMRVlcgWV0jrTcDdxE19tDsGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uv+pE586; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uv+pE586"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4961C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760875193;
	bh=pVFJaYWE6s3+iCO7ZtGTpsVRUUPQ3uIyugMyFJXwst4=;
	h=To:Subject:From:Date:From;
	b=uv+pE586eWbnqQR/4/GN91D8MJWOQWAPtP4QQ4vdHD/o3oTm5Z64OJ3jzmQGQLkaR
	 HTfZAW/vW2hMGbB9JNUZGV2QpFkTrHlBdmRu1cs97pCpGWwbMnDIawtMwwyNr0NTnd
	 BweRy9ZDUvtxRSNX3V8zOZC/ks5PK9G42johfxNXZumlDcs7DlTxIv5ev4Q+H74S/4
	 Urudnga4HH5MlLCe3Nxian1/tlnbts0ygwayDTnBRxh9toLwk8It66OJUA0z76lsP2
	 6DxOxSu2ZVMswazjXe05IaSo1Q46+paJIWpi76mWUFNf82IaO+9y/Ivh6YtZXb4Nuz
	 psY7LC7opfpGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92864CCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087519357.23548.9286926606751225163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8db5a74a3377a6839525db204e5d98756b336fcbedfd6565343b2ed52dfd70
Date: Sun, 19 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760875193
