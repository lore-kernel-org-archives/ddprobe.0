Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664141E2307
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761704394; cv=none; b=E1PpGDdXdjF/Oa4Vk5iZl4fBpqydlryl+f81+8EOpTp3NLBxazNEWWhGSnJDmmE6RYhlHzPpFHG3tDkpPQ+hp7yT4uEq2rxTL62j0qEF63hVEAPEeMFqgpWtCp4P3bXlqwU7ycvpHvm1+080Upy08/f3coDVwDheElKAyMazvF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761704394; c=relaxed/simple;
	bh=uR1OBJBIg78JXcZR9t5L2y6GNQRSuXHIpbDoZo9EPu8=;
	h=To:Subject:From:Message-Id:Date; b=EQKtc+7Ao/OXy+IWSNxyDGBYu31tyuNQvqVW/MmBp8WgxzR+VsNT/XSt8Jx7o1iHJit1wIL6wunw+QVefbIOzef1Y2dvw3ZlL4kPXRMRijJRu3PXjx7GZJNZJ69cYdcQW6F8tUT3RIu8J+oakW3XGnvTvnml4ETToCc/bmVeuho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dcnkcqqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dcnkcqqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20C0C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761704393;
	bh=uR1OBJBIg78JXcZR9t5L2y6GNQRSuXHIpbDoZo9EPu8=;
	h=To:Subject:From:Date:From;
	b=Dcnkcqqmzf6G1haVEIze03ju3bbMoeYcxg5mLlrGxv+il++Vh7KEHuBQgwjfECQNx
	 7oQ4AoSAJD3QGmt9iOd9Z3u/Vn9veZmHG93MLOm/lNxGJwnLOvouOaBn/Py+fXcj6E
	 pspnX32eU+DT0g7omfOdlwSfgBEeLnyR0OXH1DcaCPakVASs/Cdxgpuge42B97HNeF
	 DrC+NzfQ1YXqpxQ/KIDwYFtfW034J+LDK0gRJ8C4o4j3JwE01RtKbe0i0M3LsgYn7z
	 owsWDNpXhMVa36WR+wsAz0pcEMGaOz2aHNGFrOvTKxWUmNp75w0EHE/Q4e358AiEEx
	 2169rvPbFKu4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96CCCF9EA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170439357.14788.14821201530005505912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d2c3ad1b8f6a28b8d6a88e0c211d14a0255b343c709f7a32f37c07ed8d2a9e
Date: Wed, 29 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761704393
