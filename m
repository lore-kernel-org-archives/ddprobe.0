Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A564347DD
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768168434; cv=none; b=EBwBK04prPCMM3V2dpTKXK1wQbd94ckYF4cGMd0dglLbFIPLTAQfjnmbmqLPcQVwriZCjVuL8SKKUcd9pNKGV0mBHs3/zIOv491MXuj1xI10u1iDotfKi+PpvBvKFXR8wQ65QwUJsI7e4dPW4I3erDHA8nb5lJ4UzB6RhRH1tI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768168434; c=relaxed/simple;
	bh=VGFcIYLXsKNbx4sYEa0ZcbE4Bdc3hYqyLGT/NrtAsJE=;
	h=To:Subject:From:Message-Id:Date; b=L3cKxmz5lfdmpiy/9CE3uPjtEffxuHp+bFL1bdtN/x/D7VmfHsXi4S5LkX6CxEDnbF/PH5h35A/wLiRyFsNJSnF11w9GyDP5bEsYwmRVBAfIHDRNgjW0kgp1C528dgpipa7yNlmmQZ+yrkRTOubGsT9eg6+Yn2WMUVFuJ10Ck0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLzALmFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLzALmFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C55C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768168433;
	bh=VGFcIYLXsKNbx4sYEa0ZcbE4Bdc3hYqyLGT/NrtAsJE=;
	h=To:Subject:From:Date:From;
	b=NLzALmFlHhMDIB9Ozz2MhK1F08kpUhEFNasR0yRAfT9ZDSRij9NhdsMFpI5mO04sy
	 1vG0PHeNTGUHN2ccDEx3opNIMbyslqtjq06sPUauJcqtbf39qgpJWHxjmL2b85pwDA
	 XXKph5t2CydpmN4VHQfp+9YTLX8Jqn8imivQheSUB2RnhykCZLQLnff2t31f5BBOB9
	 1kP5EgX06xi+RJAvOO04/243EHXuOSp6le3eZOKAFv62tE77aRYUC5xat8ldmjVYl1
	 ntyaM3k2JUX6XztMUeWkZlas5VR1xoJHCQEfkzUUd5gTwdUThHKGVbxJAheQOz6HuC
	 8QzCBTbpMWy5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C7D25031
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816843358.7242.16690123165775594093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4857ce3391b360e4b440389cd89bc4bb0a15ce83a869a97d646625a37ff0aac9
Date: Sun, 11 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768168433
