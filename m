Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A27119CC1C
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727104554; cv=none; b=E84ns5gpQuvcPZkWbnuiO76QRvvdjFuBwPpo4ZhAvHJOZht7puIcbZ1JAmlUmv0Fn3JNH9LnOoC6POgyTLI0JKjlxvpDJmCRWYy6MTWNUqcDpLESFC84NdNMQAzmPu4e3yj5eq7Do/9TW0BGSae5ptk7D+oeew5AFgoIvl3cgVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727104554; c=relaxed/simple;
	bh=eHKqihe4i+xveyVRzDTzJ0julxIzUya2hhg0nu4T57Q=;
	h=To:Subject:From:Message-Id:Date; b=UbKGvD6IriLKv/byfJ/50JwGgAZNGBy8jNGWnXYPDZWw5zkHk2Ydos9lMjACriTxvmMe9WPXw2Wf0EzHKyEyYcbYtk0ftBxyHFjkCembnS55TQMUzDxJa1fhtKTI4iPX0PfjY+VXpRKw1Zy7GorTDjSYJHJ32oq2YdF8r1OBC34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAnel3mC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAnel3mC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE26C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727104553;
	bh=eHKqihe4i+xveyVRzDTzJ0julxIzUya2hhg0nu4T57Q=;
	h=To:Subject:From:Date:From;
	b=UAnel3mCJYFWd1LjfSQ31STFMZdBWDg0uj/nH3ONz2yuNEo9Kxpnmiz/yr0VHO/je
	 GfYeTSTl+8EOvdptpjK1n+2S30XhUt/CnAPiEzPukOLb046bu7sdX+62WsbtVtB18N
	 UfsqCftvjk4f+keWkouIw3fD4SjJzm7q3ZsRLD4ROSoSyvYAL1TDuIkjBlRpMIM1eI
	 Tje45/StKLGrE4vYwg8jiYkgv3CFaiNuZxAlhD41E8iFjFjgXUeqmVNZjyYhOCENcg
	 POyg/NT9PuHB5UFPTnBV+4bh0kjsCMD//TU2wfqPjzFmK1x/iQH3hJl4UTc8PAH0ov
	 liPRrYY/mkKJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98921CF9C72
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172710455360.32595.5168253768125075678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df80766e3c44712334dad9106ef5f1a3157148ea5f4aac94d867283b4ff2dfd
Date: Mon, 23 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727104553
