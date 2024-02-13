Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED29C60890
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707854297; cv=none; b=Ykkax62tY3UaSEOsKmDkDMcIF89mNcwqzysPcAwT0qFuBAr4Ug3LLy55VNaq2TCLPOXpqxbPlAvDlw/m3pVp/zad6/O+qPU7klqFXDH9a9wSPn2tsWPuvemNukdJEWfb9gzACH14MZ32XTPmlYwPSuaegNvfzeZVM+MYu46a6cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707854297; c=relaxed/simple;
	bh=DBrH+xhHgLl8/YXY/QF0TP0MKh7oK4vTOATtJZui0Dc=;
	h=To:Subject:From:Message-Id:Date; b=hxF9QJIykkFE7UHjgF/1NsjTOwfE6deAR2quKZmaR+qtqqyrkmNl+yHSrgZiFgjEnEJw7U48gxe8PGIxvDYs83jlge0dOAnq7HFQap9Y+rwgw5bRw39g4StnSkSVMiVzL15qCDcHdn31ND19S/NbeX2Q9Pgq4fVmeSwsV7Iqij0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXf/Bzha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXf/Bzha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8263CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707854296;
	bh=DBrH+xhHgLl8/YXY/QF0TP0MKh7oK4vTOATtJZui0Dc=;
	h=To:Subject:From:Date:From;
	b=VXf/BzhaJyPlsIrw1X+c3bRYr3dvTs4gzRu6psDCTpAmPlLQmlC6VeggtsQZufqm7
	 hWnNsZhaK5ctZ01kwbbuAQQc6/ZNKGktVWUZXabjhLyGX0zWBzeyQx5uiLw3gEwh3a
	 Wm/bjM95eb93NMVaUbul13RXqpVoDY+RGpHWXoBehCIgrpxbAGlWfEziGbwp/DhM61
	 zXLO9pVGs0bd5Ks6udyINGjYKFVOeY78IPuUYzWkQ0GgYhkyuOXbCoDocaV0boDJgV
	 T5Na5xy7uwapaGyVdqppM7mzTlqGnijxdo+SHkmUsjUyiwSpZAptvjPt8vUhhjv2rk
	 t2L+A+MeyQIJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649B3C48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170785429638.30340.10636722745249870190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e0c6c32de9ab8ef7b9c7ce4a19c53eb45c71ec3e682938ac0c3f48dd3fd89e
Date: Tue, 13 Feb 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707854296
