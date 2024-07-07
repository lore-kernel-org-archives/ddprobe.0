Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C6B3A8CE
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720377383; cv=none; b=gdJUGdySbe2t8i78hy0nORc5Ye3gS3/q1pTb1oW8M/xvffz6YzO1WsCvxyiRUNXa8XBIp5TIkgy64UzweulZOK+DBJnPkExDyGttP1McdGh4rkzpGSA0u0iR+9av8RBDSfYipdx6LEhrhlQZecJa8DBEqgoHymyZtnLM/Q2N6Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720377383; c=relaxed/simple;
	bh=CEHHK8hmt8fzU7xMAeTAL8duClKvPTgfCrMODRsnU2Q=;
	h=To:Subject:From:Message-Id:Date; b=gMLVyXWT/oGFgfULWAwXuGJYxS4XeHXBiZNCcHt89KcHHkXsLxm9Ns2pjtdjqUMg8080w+W8phdfYFGuYnRweC37q+BFynpnxmIxDTrQOiy29Py9FoQMna/BiBEaoZvMa0ha/axfWjJ5q01t42dUr0vBodBzn2gbvKQIySlAN6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zp8DLB1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zp8DLB1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF61C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720377382;
	bh=CEHHK8hmt8fzU7xMAeTAL8duClKvPTgfCrMODRsnU2Q=;
	h=To:Subject:From:Date:From;
	b=Zp8DLB1vNJiaw6871hOXQj++2W/exKqpUD4epYH5OW1GDNeh9xKThjef29wshUCYU
	 0688rS6eCaXS6uilZs9T3rcBBRjfltW5X8Fl0TXuhHAvHKLncw+RqqrgcnoBbp43eN
	 VwwBP4XbFwQ4c8zVbFVUlKDlsgUbM8hm54Y725TwcUA1HYIV7mEBNlImC76wHyK1xq
	 Q26pmr/BCoGbl4imu63GPVQl1LlLPUc7g9NNG048rUDmNbA/09X8Sb5+HOCDsk5vH5
	 eXH8XtsaiH5NypLFKTWQ1oX4cuIJhrUtCdE/cbKM9EDug8FQsp3Gew73uWwbWIW1Ls
	 3K9VLoHbMozZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85B5C3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037738278.1850.6221845337903478999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c29eeb1f589e43f76a1672400197461460351ca0a9ea48f23e2dc34b8ea7fa
Date: Sun, 07 Jul 2024 18:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720377382
