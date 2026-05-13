Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F9C379EFC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778667036; cv=none; b=sBGtECIhf8Ybe51SVIrkH0boi1TuqVeaRkdNVU8erHTpPAxG38vcXVkcogdJJ+2GAP+kIfjtxk9Z9hCZjjWOhsRID51svi4dT970y4g6ygITr3ZCWHv5JyGHr/lUqBMfizsD6ps+Z3y+vQ5sgqP3/pB0QMrIwJiyXaO6H/SZHeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778667036; c=relaxed/simple;
	bh=bAvXPlzwC1gPJYklwUxkAsahrzhYYYFnJm1rnhyiXlo=;
	h=To:Subject:From:Message-Id:Date; b=oUEsxt/pK/twL2X/1WHvgjhdPB20FMZ+g7nUAqRlYt507BrQX5ZA4moAC+WfqHdBmGwI9b6evtQSivcclzTNABWjERZa8kA24r0OH1irk2LbZhxnxNeJyeE2N13G0ryGD8FgdsvcRYT8LWhFbRC4c9NHpr5IoaT0T/gA1yQqJX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VK8wddfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VK8wddfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78A9C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778667033;
	bh=bAvXPlzwC1gPJYklwUxkAsahrzhYYYFnJm1rnhyiXlo=;
	h=To:Subject:From:Date:From;
	b=VK8wddfk5Yr4Myb43n+G7kpFekyR3D4g0kc7RKFHGvgLJhh9d9j72mAGrpiCQ7a45
	 oVbr/ZGjfWm9pez4WJsLH6cTIaDTZJEJxAWDDrPQwSL43WxOpRZWS5qUyQoyM1n2Uv
	 pJGLZlD94qMLMDNKfZc/PRzXB5I78akbJ0W3MrPW4Uv5+BASOn3VquQC/IAWHScyF8
	 WyH76slVtdW8i8JAdOBFs2D1SjMusFsKn2F9f1VQUwa6LoE77fE8U5Aagzf8FkQ505
	 uFgorK7tipOf5v53DfORk9LZ8AAe6MLHxVwaMpu0EQqYpJMpFMgqutXqgPfCEoWpwb
	 Gps2R2QfVHTnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2542CD4F39
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866703372.25328.9802357477489832247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9882474973494227aadd7057b42df83dad2ea732bf156fef29a9281c703be7
Date: Wed, 13 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778667033
