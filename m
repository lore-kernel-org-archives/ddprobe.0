Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7EF2248B8
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764898374; cv=none; b=C0uT2PRFkqDiGAzP+WwVnyjkU04NWt46LZ2ALWVylpgEOTdv0KcbSahcrqrhEEjsT+tWhEoEAP9QSWY9/eK4D1doqGyH4SM26erf35Ra7P/e1wUvQeEhF4Z3f/XumKf7J3U0dg1rSXOyDl/yFkWrvocw/dS3V9y3JRaYgjKreVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764898374; c=relaxed/simple;
	bh=m9x8XSkvzZ5oukvYHS2omRkE/dRaoI9bWJMRlEaiXrI=;
	h=To:Subject:From:Message-Id:Date; b=VbnEGKor4W3JbYwY3M4hb83IHRVDBLCruH8HN4JjZNR1F/WsMmf1a24LhkfMWDW9y7QAnUXDbZT8VP1YXyhy+LnfzWCYRoHywY5URekxGHBUFNnV843iUBfWAPdYOiyM3HT+f76vxgsLekvqCUgte1D+5L6gDs++kB4zan+xFBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIjlwlpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIjlwlpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA0DC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764898373;
	bh=m9x8XSkvzZ5oukvYHS2omRkE/dRaoI9bWJMRlEaiXrI=;
	h=To:Subject:From:Date:From;
	b=bIjlwlplWSoORl8GNNKE0ZADbqr57kgbmRBKTNou6lu9nTe652uMODgVf21pZbr55
	 mm2Wv6rL4YyXLCZ68TZe2sa2xWhx7gvuBsVfUeXhuyKGfP8IgjTA6VdjZTiD3v75r7
	 FDBof/pj/HdvVfUt48oTlScYblQMiaqK18cBSZgpXU8jBPciqVEcpdSTQnBpbT5Ezz
	 i8w8rhYimiyTsgYv+zOvhQGdvaUGq7DelD+t8O/L8RP1JRDSx6BK7zvPWxBBIKvSGK
	 26gLUYAUBL5Gc2sx65Nl0m2npAiPyp3ej6pGifZV0EDZwKBUfyX5Ki8l4F7Dl2rsfg
	 so7oyxj+WYj3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3DD2CDF2
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489837358.18226.15913652433595067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2909bb82f2d07c7ae6fc52bb8f0839627824437d1202a55ffc8818d4edc1999
Date: Fri, 05 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764898373
