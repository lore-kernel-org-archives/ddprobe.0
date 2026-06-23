Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3722C0F7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782221194; cv=none; b=s6sqyI5U+g5zQs/tLPNtkVhoAizmk1PyRVBIfzqjREHWMnZRH0bG+lsAWUB34b/vlHbxB3tXv2zJJMvUJ0gxYKKwAcsseemk/Jlnq/oldBEdJeVWUB8DLviMjsF0Cy+p6qKVIwXYDxFgEBADEGDa1PbJ6cmq/Ydc5CcgRooR2ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782221194; c=relaxed/simple;
	bh=cvRZRN4IxSAQOaGat482C6Ke4DCJu2wTYFQGpXCC10I=;
	h=To:Subject:From:Message-Id:Date; b=VrutEmpnV/G67ypjAVuYC/mc1f6bqd+LikU4vdO6WohQZvYy660ojHGrrpr6vAQwMToCGsIedhCAD3ygHQoq2ytYQFh+Ch63E7i056jTZ8AM9uUgTVtJqMDOqkFTILyBCvg4RwyZN7GJ0UirvAzwyrZtZNej0vu0/xBtkb6bQSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0z03Psj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0z03Psj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1824C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782221193;
	bh=cvRZRN4IxSAQOaGat482C6Ke4DCJu2wTYFQGpXCC10I=;
	h=To:Subject:From:Date:From;
	b=B0z03PsjYummK+fz1ssRIlCb0mWqvm5EA4+ulYXjycjPPbnjBm0n6hMF7ndwZ0tl9
	 VbtN2IOL2dliLyOTu2hcKwKWMq4EoHhwN0Q2u0lTPriVQcyDsfOowJoUPXloq8uOcg
	 Hlmp4zV764rfGjMd4aOhWFOHg5UlpisFusVhWr0uy+UJKYQ7a1aWN+2D0P/ceIG0Pd
	 nIzUNfpjbPPTrvgTRN5kYFmHkJKjfvtMHQIva2FDzInWkYWbXfrGNNErHFfDkGZxvg
	 tWOn1Rz/EDB9+AY9hlwswU35s5SFEb+eXDrphNym/HB+l71JyKCdmSy8H/ehQvrjsz
	 F1BpyHoSe09pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CDFCD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222119372.20006.10393995045722258359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7cd305be489e5d97507fc9e8af456fd463ce93092871ee4e69e33915abd24dc
Date: Tue, 23 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782221193
