Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416271DE8A0
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744661394; cv=none; b=mMOejw13TYMM7WCgMNoTZlO0byAvhEzRLIc/0A11vJaf6djJ/3QokqHcH+xp0EYck95tCkrk79DyMdWXiGVqCHVfmPGvFbXj4Ekhdd+fj1+eYhAZHs2ul50Ux5qXE5Al+ok+ax9DCblUe8GBdvyqN75myM7TSvsW9Pgwg40RDy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744661394; c=relaxed/simple;
	bh=QN6UgUfcmf22VtF12Lv+6ASNNcACvkpQL70T504eymw=;
	h=To:Subject:From:Message-Id:Date; b=qj+IkEL8QqrKFoWdfdmCkfn4y+dlXTOE4tM+Wbz1tOjK48YZgaeM0OfTDxWY8H016I8w8TW08FPuweZGT01DC1zLC26Q2USlD/fuc1J8pakHfRF4+cNF9ZyjRj1IpbGkysvvtGA3r0DIOZwtdBQWdweFnHcOFgluOLW2d/azi3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8Qqwc7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8Qqwc7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BBAC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744661393;
	bh=QN6UgUfcmf22VtF12Lv+6ASNNcACvkpQL70T504eymw=;
	h=To:Subject:From:Date:From;
	b=G8Qqwc7XOC/ejtv+nubL6UK1IXDy1zTHA9da/VGhLypYJN/yLDUp/7CwGkKpWkqz3
	 ypkbgUUtK9eIso35l2ySflccMEBNEpa31NV9Da7TzPcYahY2B0xoLRbeZ2Xtuh4Pr5
	 zPrWwURoVWAMhhVTSr3pJsC2jkVvllhOfSXZDgRSDd4Zskbf7atQ13w2NNwm2tsahU
	 unoJxuqWmR/XVSBee+gXA0z2Uokw0/v9PpecGkD23ga7HuSHhOXWehzgSRu/ubO8me
	 gWcYnVgYCY+FXP1Q2YanhP5aFSPaS1eF/IJh7NFenQu6CY1M6wa5psoSXg7v2HZDT+
	 FjIXdUX/zYdhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B9C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466139360.10280.16504449083838499792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345dc9afe9686d2ea4c6c2656008497a222c1fa696b380c5d261c208230acd61
Date: Mon, 14 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744661393
