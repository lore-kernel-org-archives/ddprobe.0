Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A0E1E1A3D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788042634; cv=none; b=UpC8cl9DCKI5sg/q4lgo4PBn2Us83zUO4WTgtPB+xlbigtf4ZnBba+a1vWSheFUELYIsmqV3h95Wi2irDzj+iOQV8F8ZEagx2WIn5SPOMQNgu0miVgunnXRsAR4cjMjuYs8rAYhP9czmF7GxFHf3H23jU9/6kdpatKlcgzb8pSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788042634; c=relaxed/simple;
	bh=gMGEp80bBw8JlwRzovFTcZhKfElJKMEq5w0lofW/Pxo=;
	h=To:Subject:From:Message-Id:Date; b=AZgs12vO8rlo3z2CX2PkR6gbm1pK3ygel0qQ4Xuc7brO2uHzXPHM4pVwH1R9Xc/4VgddgzrIjdkIhhQQlW5h4XcImZdBRyflUElW+QfL4d1XGSc3ceBOQaKoNcC4aokuHoRFqwcnuXkjQYohpRj3nMjgWXoLRhbSuhQFBHArtUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWSnFEUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWSnFEUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A26C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788042633;
	bh=gMGEp80bBw8JlwRzovFTcZhKfElJKMEq5w0lofW/Pxo=;
	h=To:Subject:From:Date:From;
	b=BWSnFEUS8TbIxjkfcrhPDtFRh9T1qFVB+iktU4zAoN1dgAFFbW/h8eFumNkWp4Lqx
	 UkwbfOKydzbjSPUofLRd9zVQ8WZiBttRPB0X77TyS/lQ4v+7AJtbghRHdc+F3qjOIc
	 wC3pG/G+EbwnoodxE9oi54SZ4bP69zAQtl8OACRxIfeN5l8DUp2NENuQVap2KJ+Zas
	 ogL2cWEE4GPxpMEqe0N2cviBLBWlo7UuN8ck+4qNaqxukeqfqraZyvlsKbq5w2IfLD
	 KJOld9/QsNxfzoC3Xe3Sg2Wa/Dtu3Ms2VfpemqMmK9EgGL/6HC5Ao3TLZWnc3HdkZe
	 kiGs/eRQGWmmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06DEC61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804263368.32588.16111242149495057135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25073d26bda2f9080b670a4e872884861a533cf53b50850b8bd685e5180ac9fb
Date: Sat, 29 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788042633
