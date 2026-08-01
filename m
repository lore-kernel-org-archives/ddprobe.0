Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3D3256C8B
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785543634; cv=none; b=rdmPODjnFnFbhGxJfYTcx3ExelVfnoWzMh+q4MtoZW+HU5k5Jo2ku6ROtZ4VAQSWWsgxlDjXfjWZ7l0Y7Fd9DzTJ+2JhiJZroEJ3ipQCnDfKwpXp56lE+WIfR6hkzg6ls9j1DAMsubjXXsOgUBMJBby6haeyZECSGM4XgJuU44k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785543634; c=relaxed/simple;
	bh=HlyTK5LR8HpoMeT7H53ptQ7XF+hvoU+LAFQQK7eefMY=;
	h=To:Subject:From:Message-Id:Date; b=nCxEpH+POzH+ghtif+tTqvYzsZEkY1MHaegRBUQEdjICMQvLyKZPv88jBzUIanaSAAK4PpogNflXZVHBUImEqsdl4VwgII7ilKr+K5ZdoNGRO3RYmKRgW+rdQX0W8LY6T+GOuidyAPn6tl7zntnLt/wQR+LR6/8q36nT6CdrsA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToM02HoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToM02HoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A54C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785543633;
	bh=HlyTK5LR8HpoMeT7H53ptQ7XF+hvoU+LAFQQK7eefMY=;
	h=To:Subject:From:Date:From;
	b=ToM02HoGOfKmD2vFxhSKZHuxleHmm9NsaxxWfgDD5nWdI0QZpgpyuG2DtD+fodGZt
	 liNP2aoz4zoz2hlM+hpSKAsWYSksziKkT1RaI9uHJlIKpmR9XS0CK/Wp20Ac0tydoB
	 aG3VSH+AnYyl+Ib9IrAEeevZMsXiLfTdmZjdI+h5PiLbKiuuEd2omBg1EJQVMx1cCN
	 dwg0fIEzoVuxJdHDJ9td9B1Z/TAhUIKBAQ11rN7z/25x2VWojksDN/KVYCWGFJE1YZ
	 oM9gXWVsSkzIR/GLRjwGHmD0KoKNoy8u2s5dkQ5DJVliOh6Bv+FJ05vxlrYLNfKLCk
	 tQ0gPznUp/sTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA965C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554363368.3849.6057669706876748502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8266a1dfa03191bfc488106786a0595b5101897aae3b626f66ebdab5d3890402
Date: Sat, 01 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785543633
