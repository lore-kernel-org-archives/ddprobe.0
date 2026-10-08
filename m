Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3D82139C9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791417634; cv=none; b=ZwbEDRgybzCu3yxFeJmn7nhYuMc2DJ5K5SRA/w6kbiQVx9mtwFxvLua1sWjXBLLPgbuwH7rEoUH4i9Hd7FXAQLEwd9TGtANkxdm/qDy68covpdYFSS9RdgUmvMp/vrXSxfkcvRf68tGusZw+1QWgdIRMODPjhwWc58fQB9qwjBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791417634; c=relaxed/simple;
	bh=wNpCzpTYPj6SUE2FYa4KwB8pKM3uQtQ9ASz/dCgxG78=;
	h=To:Subject:From:Message-Id:Date; b=UrmEmQmykq7cW98SGpsyx5r88nc/fVuJ6ekaF32JNUoNcgPG5Zn7acKswWpJ3X5ufrkZksUfXQnhrRN/HnaKnZa6hj/eCNm2HLIrRjZczQHbAwUzXsqVd5l4As4E0QNTcHtSegh3OPAhexrQZGg+BLivrTQWRPzGjtwpGLp6iN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfSx+gBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfSx+gBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FD0C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791417633;
	bh=wNpCzpTYPj6SUE2FYa4KwB8pKM3uQtQ9ASz/dCgxG78=;
	h=To:Subject:From:Date:From;
	b=FfSx+gBoTi/FXykfcRpyq4+DufeQP2rRvKmWUPxxme8ws11gL3ESGQioYJHABDYpb
	 igLlZXXV51LYTuadswGtGPmRiKDCStS5fPFpcwfQU05JSbtVHnxaKVsf4dBuqpU0uk
	 T39C3pCi3gLiZxfZvT//k9XO5GEKNvMiWY74yXDF7t014PECRZd5lHk+L6vjUCvSjU
	 VHqJ3GWKWU9UWx4mOixfs6lnbvsYW/6Xrh9Ykd0ClOkQDc1jdlPaMCHPcnfcTN7va2
	 DgJmEKK20oHZgf6ECr5kC81ETllyE34SnRFGNb07znPKZhAGzv8xqGQ6OUmdttSxs9
	 vC7SJIBzwEH+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA24CA6009
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141763370.14961.17867762934774421331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1516fe7bd0dc7644c52eadd58d7d08d986a4903e71d0c15bfb832c81ceae62
Date: Thu, 08 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791417633
