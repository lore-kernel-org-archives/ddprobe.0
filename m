Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DACF42A144
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791361834; cv=none; b=E6Rj0H4h2MJCgL9nPYu1pvwg4wI5aGuUOBp8R9PopfcKe2dqUtjIOz7HPxYiO16vxzZFw6VL+wWzRbM9BfS+jqin1lxpqubVhu1J7oRNI0lQSBmHU/0ipjt8kPTuV4ke8Bqlaqinft1NfEkygRtgGVt27pTBFzUTSD4s+0UvcFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791361834; c=relaxed/simple;
	bh=hrB2IZ3b5gWpLb1Q9oQAskjNTH79vU9NxdMXF8H2CHo=;
	h=To:Subject:From:Message-Id:Date; b=h0+UYv/dwaAtzdEvBHnGDoHejyJPIPVJM566jTuo8qGLN/wUnkOiWaXT87fmrJqHX6wNlpXtxC/MSmvr5Z1gge6YimcMlO53LmsQ78gNbwBMxamSC8df/uYrxX0d7HqT31z2ec7ShOZCcesLNFIw/IFMrUcdRnRsWMhHu+ahtqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fo6wX/cO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo6wX/cO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D174CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791361833;
	bh=hrB2IZ3b5gWpLb1Q9oQAskjNTH79vU9NxdMXF8H2CHo=;
	h=To:Subject:From:Date:From;
	b=fo6wX/cOAYtfHwWNQBGht175xJjJBvd3D80bHyj3vhl4Q7BwD+1FiR6j6f0DWSTLo
	 KDiyMjFiN128in/1aAQjsNU+4emYvbgUYNj9y+tDzaXY75R2F9zNGiz9QHVU0b14uP
	 XzCFdDG+DcptxghDMjsJwx9p7Te0G191t4Drmvq7S92cjFNMjQ6D2Jr92zrVzN23HU
	 jqLpmR9zTeJg8cYI1KlZ6bKW9UfnkA2J0mx/jhtIgGAyASfYByVn8RkYvcZwkdblRT
	 lmMaSuTXRvH5/4PiBsZDf1D8I5gse40hUvMC86nusSxvO/0m51c0jwYBPH31GFgIE6
	 L66EMcwqDUVew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9734CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136183368.7220.6869032466961610120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf03a7f2a7a8b6a0929239f536004de8476aeea4ab2aeeb5dbe3321845032e9
Date: Wed, 07 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791361833
