Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB0A2DC32E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774999494; cv=none; b=G3zk86ZTTyQWKD453SBAwK2z6UKWP8WZlLqHuTplS4/S6Ue78eLsw4lbOo4DxPDVxgYVRfFNQh3U8Kt2S8x9bE7Q0iEawtu15pwLQ4knap8UyLi921MNEWvERQPjDFkPJC6Yhsh5IC4lyBZDNe9nyYKkyeTZ+0+tqzaFu1ai/oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774999494; c=relaxed/simple;
	bh=pqH50sWCv8FysnzJf2enDRuP+FHNqTXICb24itDUQHE=;
	h=To:Subject:From:Message-Id:Date; b=IbZftrCERx9g3pPY3B+n6z8x6L56zhd4mJb7DcYiSc4pxzwaiPV6vnxKq6iAOis1+RcD/f2HSBmRx7mCkrfV6JI/7DwV8As2knkNwmvPwwEpln+9YPA2eH+RjFVnps5+2HFS7uqdPiw3POhJZZj7ypg5ox1j0iKDwPn18UeDpbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYsGE2wu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYsGE2wu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A943DC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774999493;
	bh=pqH50sWCv8FysnzJf2enDRuP+FHNqTXICb24itDUQHE=;
	h=To:Subject:From:Date:From;
	b=eYsGE2wunellmyUpqbiujPNV90SBujZsX4zxc31BzGXkZGNdSH1oHRdYHBlc8tXab
	 i8AGIELU6ZmGvl/XZyyyUA7ibBG41Z6SvjAjeUbGmrq/07GMuW8BEcWc91HyZI/pSw
	 gzjQpXghXE907lAgiuQhaoo961QWVhI78kZilKNhXbcpcllnJiZhjcN54Ok4EEB4QS
	 3yyuij5mlk6Ll4xgOWqxQxes85nFwuYYsk5AAAVpXPWPgQI3U5RvwGUpeuo4WVGATW
	 axLqJ2zIuJ50f/Te4PMaXA6ixrObH//mQtTHiVVTDl9mvO60nBChEW33RryAaCCqVi
	 gpvh1kDz7qQyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9447010F930A
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499949358.22425.5145942731627370042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1797a321f16d3ce63fe3d3829dc44e2576dba5d0c7a14676d5df0a751dcbd736
Date: Tue, 31 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774999493
