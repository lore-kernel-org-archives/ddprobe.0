Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3700B13DBA0
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754030994; cv=none; b=QXhKYMhxfbq8fGc0zwK146gLamNGxrTjCbQM5vVRlQLhSWYUKe5IwDo2O4KPqelM16OU4ArY4j4Iphf77iRwZLaqo5thJeNy06nnfaGyGnoViqhD+SfI4POV77BVWP9tLjpzfGUMtel90oFJtWJCFMmyEU3RcGCoQXIc/3D/iSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754030994; c=relaxed/simple;
	bh=tlyURY6TB9LU1YHgEOCWbmOJb5874NMoeuoatzsH/0s=;
	h=To:Subject:From:Message-Id:Date; b=GRi3qyWpP+U4Ji1656id/ZqORXDxOOo/wSQJwH/u1FPulm8SO0c5F3MTLODmNTNqlgpF5Z4SG3OwS1nOdIyMyrpPWoyPI5aIDB6LEGgnPHoJSxOFx00J3xwdFqiNkdl8A/HeWPJ8UCMvT2bNCuVarpd8SCcRl7xq5FW5Br8JEDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuwx7kTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuwx7kTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AD7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754030993;
	bh=tlyURY6TB9LU1YHgEOCWbmOJb5874NMoeuoatzsH/0s=;
	h=To:Subject:From:Date:From;
	b=uuwx7kTtRA6E22TBZiwgIvZaSpeia+S7LwNROGdfisv3LWorYgabSqqQEz79zE3AC
	 HurFNBR7iQ+nv5DqslFs73Euz9qgg2k2YJvbTYdS4W951SvqM7qRwIobu1EHRQyXAv
	 f2dHnkj0Wg3YRWy8PkmlW4dVUjulympPvdIZMjDTYkhpon4FKVWcsTBtwIISSCCtnO
	 o3K0ChUqFNekZ15cIL/3KeKKXFIdR5qmu6U7ouRUhXoyxPP2kKUGnRiJ1FcQd5h6ni
	 qaMHgf9OAIFFY6xK/izOHRyNzDBtolNqhSklS6gd8nTj9qlKPZBV/nOOVm9eYqowIt
	 SGFJHRY9bu6GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BEC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403099357.13655.17298349287827617074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de723ebf32c45e99c3c22404ad0d421678882d6dd3739e3efa2d27e10099ea5
Date: Fri, 01 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754030993
