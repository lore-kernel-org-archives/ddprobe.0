Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121C226159E
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760040594; cv=none; b=DOfcCzX0E+2xFmpVfWBksfEDZxLg9UMMWSAUjxJbwIQOt4l+sNvPgCfsa10p6GED/ykEvszPPxfB0yN6ei8E4263IBlSl4yGqBrbPoVtQEIp36WmFwhTgCne5/aWAP/yeLdR5eGEkkgue66GwBzLz05XU+Tq7bZ9FJqDPu7yvJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760040594; c=relaxed/simple;
	bh=8dXlFhCNKQwxkFpqohIyowFF43X70mZ3b0+KwK6dd2Q=;
	h=To:Subject:From:Message-Id:Date; b=bYMh/+dbK8dTdqQs869GrSr+2KIMlCRBOGAyZX3jJlU/0OL7JMF4ZoF0e8XkYQkVFyCVAjJM/OZ8jvquAjD4FqCVhTiiK8r3M+s0WyRoXxiL5pvbkHKND4BdyPuE5+5Td/lpBx2elmFaxXDAp9UaW77PR7lPUF16aVHSpPqcdkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLkKQfmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLkKQfmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E59EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760040593;
	bh=8dXlFhCNKQwxkFpqohIyowFF43X70mZ3b0+KwK6dd2Q=;
	h=To:Subject:From:Date:From;
	b=OLkKQfmEMLfAvDcPFx5CdVd1+Kp9qr69ZQxKrZ/U64T6KMCadB8BVkf73uDMvyc57
	 9EwswPfzznBmzNr2TxQBNGVP0eYGpgJhfDxUfW9TDaQVoHDEYhItkIZ76ZipCsHSic
	 Cy60N4grLUjpEo/8WMjT+XISSREwZllmEP7T6uXYtWk3L4FBt+t+G1wJO33BJVNqYk
	 f2GmlilVCVVenXkq2eYTgtNK4vHNPeBtbB36ELP+hLAKCftZ0ZFMQkBJNbyDP+Fdm0
	 2d5xCNuA0VNTy3C9z0c8jIQ3L+UpgEwMgkpXJgAeK7+J2SlWqZG/yWPeROnIB+lwnZ
	 EFLREbJIh0j4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E1CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004059357.5547.10003059363115395451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c27db0bba8878dc53020f8c162a288beb06e5539fb5c970652266a9c62edcaa
Date: Thu, 09 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760040593
