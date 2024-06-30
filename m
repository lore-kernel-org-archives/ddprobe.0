Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605F2156C47
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719780263; cv=none; b=FPQWN2cZHSjvtM4XHDnxPEZo50iAh94ekk+u0ecPh3UWPruEoeOTm4yVcT9S6vJoHKvBgtxqhT2Ze1yv5FJ2Ob+AI+46UKwOUnlM88N0o2ZPS7Qvjm2vxRT+phoztK8hXXjYFosBMsD4pU5KmPP3ITHjVUrHRRS22GQZvDU+vIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719780263; c=relaxed/simple;
	bh=YnzKKyEnR/wJCyBTnP8a5bxGjQ5N6xYJji4g7J4FstA=;
	h=To:Subject:From:Message-Id:Date; b=p6YY8Xs2bj3oBu/sXlr+ltIh95bAy1OXp9MubVqNvHl390O4DFa5qjdDd2En6Cmz7yKVE41AbhCXnzzFjxsny81O/FeGZBdBHXk02Ci1I7dZbtGc6KsZCKMMmLmmee6TrZToJSa0ewE1Q0nPZcZn3vTXOiqFD1gmmOa75x2IdNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG+unSMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG+unSMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15FFC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719780262;
	bh=YnzKKyEnR/wJCyBTnP8a5bxGjQ5N6xYJji4g7J4FstA=;
	h=To:Subject:From:Date:From;
	b=sG+unSMMppigME4m8ve/9hvuYriKIw0X4goU6pnQdMaAPiNJilIDFlZxMMjd2HoKk
	 jHVBWhmeROr9ojLHdS66fj8wK51zj3XgQUXHlSr9yus9J47qiiIxOF3XMvy2IOIr6t
	 EwAvNkpVSjiFXiEi8Kh/6Q0AzYnHpLb7ggs9dYlVfTjBrSrT3eulB6i85rNL0LliaK
	 cS/ClTJR/T+nK1EP83MeYSC1VoU7PpDOwMI5qr8m2S1HxIn2GX5BuoffQaJN6RCeWd
	 39YdTMBLcB2L2DYonQCA0/uHhmaXQVIkW1JBrIvvlVMsnNvT22UCzE+oIWVrDKjFMj
	 nXeYGl55JVcGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF14C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978026276.29969.5654748732472910186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df48fcbb6c8e8dda677cf54ca6e872addd9b8432266cda956156d5e8e87d4453
Date: Sun, 30 Jun 2024 20:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719780262
