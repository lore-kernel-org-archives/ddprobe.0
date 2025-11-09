Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5962433987
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762688394; cv=none; b=b01+VYjtgig5afulJFZOidnzVun6pTyIkLdaMWDxtbQw6ECcrRFO3BNT7zShOnzmdFtnFK112HpGBlR5iUelOSrUh6sz1NqYVfmX2pp7YNMqRFGtKpHqm4mycSndnDuLwsS/5cvUITWrkAKe8vIP9I7he1AKFuqi3LUObbKASpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762688394; c=relaxed/simple;
	bh=Yj/r4Jnpa8rTVbGeEtH1xt9VUoV4gnD28MK29/nEncA=;
	h=To:Subject:From:Message-Id:Date; b=UyLb2iDCpfRB+xbS40X31W4o18PoS4T0syybA/YOSVB/EJPDpvGvTGOeAxRYZZ+sWqzPrlOG/tkhPNctndr1pw/mnLMz+T/yikpCasj97IvwGE0dEcawxGTx03sj2sFDJwrapfWU+io3PXxUcsjmFo59AscBv9frFGsnyy8e88A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idVNCi+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idVNCi+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3466C2BC87
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762688393;
	bh=Yj/r4Jnpa8rTVbGeEtH1xt9VUoV4gnD28MK29/nEncA=;
	h=To:Subject:From:Date:From;
	b=idVNCi+kyxiVuXW0P63PAFqIhSzt9zIo7qtfcdFHPGPk95hhmsKKu9Qbz+tDwIpQq
	 /t1e7X61Z+4jMKVw5KpBWs0/czbaGu8lr10uDoWhV8juJ2tLiivHDidqJ5O04or/CT
	 U7SvNo0Yv5z2zhUI9X72k2Lk6W30qt/aWGOue2uGqZKS5DUJIZTPgQ3Xz00T9Ba/JY
	 TlHL4PDFfxZwHimAyi8cuRj5Ge+cjc05QwUM99Qr0JsHaGX7Rt0wDO3RMJ9HoP0SzV
	 FGKS1GJnn+0pMwU8Iw3GPQJKHo6kZxuk/N11zzQK81+OQC43rc8sj0/8QIGGxRoVdy
	 uzeEPwzQq1v+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94915CCFA1E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268839357.15170.613429135526586478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74150f9ce92e7143da7f9a4a554b183a149a73202a1704af96807256017af8d2
Date: Sun, 09 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762688393
