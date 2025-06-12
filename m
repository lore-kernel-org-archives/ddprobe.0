Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E643B153BD9
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749769194; cv=none; b=fyDodYJw8/hGJq8+h9SJOLnGZdlXfF3P6umT4yf234DK8wT6TI1cQ5pGn7O5Sl5nF2Vo50uZ8iIG65MDd93/e7kggRpRUYJ41gZjagqqp50xstZjPjw2ktvNVQjsfBmxa+fcqmvVhT6oG2Erc/0Z6wBVxzDS6I0F27NifDVVAvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749769194; c=relaxed/simple;
	bh=g5SW6VzfUCMTIhPDZ+qzYbDFcB65BxAj2JR/qi7bJIs=;
	h=To:Subject:From:Message-Id:Date; b=rLVha+PcSkbjhgRlQWX5yEtsJs1AXKUl38itzVCUbFSAJ38IIlGdZp0Lw7dml52XBhfskr8FSpczH01Bn4l5AJt0gFQ3pBtS9ov7dUVMhSEGoNbecPK3rR41/KYU6csHFFWYSDd4NBEOiGRP03GKsKs43tI9zs2bfuCcGCad7Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbrrvW5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbrrvW5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F1C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749769193;
	bh=g5SW6VzfUCMTIhPDZ+qzYbDFcB65BxAj2JR/qi7bJIs=;
	h=To:Subject:From:Date:From;
	b=BbrrvW5FHl2EBrJHIEL8hn+jiLuniFoke689cEYSw9AbBoaBB2bVgITxBRBl0Ypno
	 I1PLEH8RMH2AuCPrib2EqX2tE1p/6CpRm6Ky2X7WaYH6rGLkjE+mqqRXml99Fu2JfA
	 WcVxc0b5BWE3VGXDEegEizUEuZ1N3PKs9RwiKtbndL+Bl2MAsZLXXSPE//6hqy88ST
	 b0LCPUMMXVt2RvVp1z1hThdiRKy4KLChoKngAuWyx/UeVAArUAEeMqCv1f8+/qVlIg
	 TC+mdBzRo/dWWRKpS+GdC2L5N2ogW+Q/zHyCUsEe1zbmhuMVVf+bJ8aLLAPZpUr8bx
	 CAAWmFw7aOSCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BFC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976919357.718.7337923386586391510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec18239d5599f9352296509aaaebca32970374cb95a0af157d619c37a117c85
Date: Thu, 12 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749769193
