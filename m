Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD1020304
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 14:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713621623; cv=none; b=H/RDXlxDyH5Hj4uIsRrb0+y8Yyzy//QexSGFGHWzn+6jNHp2KGCVZXaQ/cb8SqtoFLUB8me+4bJZaXKIbAdll5FSfFcU8i0x0UwsTRN92XZGK10ntb3tTkRgVmjI9zkb0yxKmASGOmWZjLjz3duQLuLa5dHffoWq3SnQie5R4FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713621623; c=relaxed/simple;
	bh=ChAdhxaMcsrtnnwSOzwmgjy57JEBXcJa9SzrfUzi9dM=;
	h=To:Subject:From:Message-Id:Date; b=lhayGct0B9eBmCYaRvz/ZZ/Gqgfkfg5Rs+YIV48h2dEGluIYdljb5AdGxrayMvp2YeIdTErC960o/0FHJx0aVdJoSGZYkpb9Bws/1+b6gkRHAGBvWZQm+IExE20g9o8zDmomRj4vfayiT/yh2mxClRnRyZnCxTk2PVGzZvkJUw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLVYV1He; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLVYV1He"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2069C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713621622;
	bh=ChAdhxaMcsrtnnwSOzwmgjy57JEBXcJa9SzrfUzi9dM=;
	h=To:Subject:From:Date:From;
	b=tLVYV1He8keoOsdlVBWtzd6RZrpqo3K4MPMaGhnKtD/c6dnNGdWOi1fb157Xyulo4
	 jFMTuUFYhjHS2XjkRMY531/9AvZpYkM4Oy5ImYqOQy/Cy6mXhn5QbBK18fp3bn+scv
	 ZvqLuhEpxNb4Kb0VdmvlsvWaaCQgTS3n7nUBhffs0DJDRXD4asrQYTnTIGM0R/2Fs2
	 HsJUCyzFfEEChuiR3vXLafi4ToqCs+HaGzzSkoHp3djqZ1JwwXAiTXyDeyTS6otW3O
	 M07wB6Y2Atk9SkyT6svwVLkYV3iCCvnFMK6wdMFjQ1uErM+kEEErE2M+aqY2Ghd/l2
	 +YMsHWKCID2Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2181C071FD
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 14:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362162276.8241.18234980392168264796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14a6d0869a06838c3c88cb9818ae64e9656db267ae1f60e8f45981a971c9174
Date: Sat, 20 Apr 2024 14:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713621622
