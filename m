Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BE41F4295
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760304594; cv=none; b=ZG/DREIJCX88aNTGF10KOoGO0bly4yy58FoVm2w8p6yl5nDLmu99KrPr8NB3stF/73jpQfjA0tqY2L2KhxxCOT1amCGR2oykRrvbgDxJnHb3Rf7oaiSDxFUJaP7X2s+0yK+Sdp9NeyJ7hBy5dWRKfer09oR8BzfQE+IQW4/HxW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760304594; c=relaxed/simple;
	bh=6Qt4P35qtBaq0X97Xdd038kjOIerhboF3y15cpJGaVw=;
	h=To:Subject:From:Message-Id:Date; b=g+IC/sZyw7VbVmRriUFNuLJb0w/qY42kCauKsgXgPzfC6n8A/LT/TFtZ09f8Ao6mjkuoHnK7tbj+PaYQQC7oUAoBdXdMzS4tTNM2oQf1TREsegyUV5SiaUCabrEAz2Hesl2F1hAY+Tug3ni606Osp4ttbQHvhoErubOX4VK2EI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkBGAwpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkBGAwpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B909CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760304593;
	bh=6Qt4P35qtBaq0X97Xdd038kjOIerhboF3y15cpJGaVw=;
	h=To:Subject:From:Date:From;
	b=QkBGAwpazsIm/cxorhzC/cEUGdHSKYcz7BHp9VKFo0sRruh8Qp8IP9gs35G32H1lz
	 3EG1Rf6H7IYfoLhzKrF+CnmaJdT5q0hrER2soQRK7mHu9/yG0Ps78nxe9QysegQIc/
	 O5uQ//kEsDbuMqddTjKjGaAzcmaf0AiIz3PRbYLYVf+2WqimiL61y23qnCq6xusS3G
	 5tLa/aP7/5zVxxSthVoR4sqLVWbrKGePKOgrSqIqqLn0MtvE0hwlGV+IbSntXcngiE
	 Qj3X7ygwIEEa/+b+LrR+7Zt0UFOSzR0QyYBfDPCDdLtmgFBS1/TgntWIn/+La8DhC/
	 5AIqgxkm4Kn3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A335ECCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030459364.5157.2942576101121900692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3821cc95b3390d7de1c1f1685ab5df879352cae56067288dabec9f29070d92
Date: Sun, 12 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760304593
