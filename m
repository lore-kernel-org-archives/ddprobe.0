Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28364230BD9
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765949634; cv=none; b=s/VRx+CxZs2f1g2oD0k1TMBQtT/BmI58AlCZ4a4bwHztkE0OxHEF5lTO82pXTZ5gyYTbV5EMo3z/LH2Ke7JDvXAASM5Jldb5+QyDXDJk1jwUqz9QR2tCm4Dl3f9JXyvWVc3RdNCHGkqqbCRqYMXNd2CvFBr0TMOfvqXDhb/3sRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765949634; c=relaxed/simple;
	bh=ZCZkVTsdknoRgojQh+SaGlgvrPAGsenRkVfbpkeVoSI=;
	h=To:Subject:From:Message-Id:Date; b=Yja0xxnGPsZj2GUf8TUojM72n8Rm/TrN5yTWHcXaxSuv4kJ7+G3xZcbG4blqicS/Rsc2G2WiZrwmbBa9qKkPElJ51rJ4+mtMEudkgR6IBnkMa9czKh8y0IjqzbseHYgRXxwunoIE7RRxJ7iUDo9tcueabE3MzNtuhl3x85iGzyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKwhJzR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKwhJzR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA04C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765949633;
	bh=ZCZkVTsdknoRgojQh+SaGlgvrPAGsenRkVfbpkeVoSI=;
	h=To:Subject:From:Date:From;
	b=WKwhJzR+oYjorCjgVkNtZ+VkKmVCfQ2sDUccl3rlS3/g7Z8MLvQQk6YI8w8Ku7x5D
	 0EoOgzgD2m696Z9DonJMvJdhcNeKSIViEWcA0L/PuPYYcQQzDzS2+Gus/S2oCXJrCf
	 4NwQLVu33zwME9OJI/vnm0jPxW0TGjDHbNgT9OYjMdgjmsSekcs2/jxj7B9j+IC3Xn
	 8aHh10XJOh3JIeMz/2HY4EAa583iaxtpoVA1448SxIKVZl6H5iF06yBJDO9nxn9Zkz
	 aMLiD+nGIMLV9+VsjebO8iSNkcrgwxEpmR69GvE0L9vFB0Hhm9aIpqf1wHZ7I3DMkh
	 RQ1L11+SAHoNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99648D64072
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594963359.12777.16364066418956077046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068b011b23df55e17b87df79341a12c9577e0b8b42891ece975a31d1ff5a46ad
Date: Wed, 17 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765949633
