Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C131DFF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771550094; cv=none; b=jIcfYGtKEOuIIa/YYINfpKsjqiEPSzpU9YRFEMKgjmX5/++VQGp4btvo7RXqWgSB+eZVzPGswkYFIytFd5b+ZBg+Xqlm0tMcx7bpaQMWWMV9+gziC21x1TaD3dCB1Ezdh2PvSN/DVt4FKlCDThAfo9h+OjtWnvvB6wp/TUflHf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771550094; c=relaxed/simple;
	bh=/ivGd80mzPzXlL5OD175O6jTqiGzlpHXW50hYamBG4c=;
	h=To:Subject:From:Message-Id:Date; b=fk0zEsCdt1NJpaIZRrcrWdYhV0J+VE28MnSKcOkq0vMFi8R9/gwli+VKMTipzkKdlLAx9YwugnURPGk6nig4yUPYN9U3Q+wCUvR88ICbUItVoGo5XL8YM/KM3rmWp6fNt5DarXR3puVREzFRvLm4vrSTGivDJoVWJfncRGaU3BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzEfoQFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzEfoQFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ECAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771550093;
	bh=/ivGd80mzPzXlL5OD175O6jTqiGzlpHXW50hYamBG4c=;
	h=To:Subject:From:Date:From;
	b=WzEfoQFjtTKHxSeoASa1kPVrwlEWDLajRJt166Cg411xAvHWpV0GDmVENn5u1EgPA
	 iGqreHG5muDxdPDy3wYdOcuxOu0fs7t1y/eJmd4IvZt3H9fW92lEbLzH4yClxktNvC
	 ejZsxUOZ+OtbVGXjIrk2UrpUFyxWLv1IcXqk1u942JbdQDADWh4qrQRzfWMqv1Ewdl
	 Qy600ewhsDCw571VlKhZQylV3D0pt7Pk2hc2VoN9tCuYiowIUfAUkthoWY8lLiHpsF
	 XBpYqbnxypZFmVoqwppD8sMMhmueki4+NHA89F5BGerJNLrr1r/tfK5X9sxol9v1p0
	 laVI0q2kAW9bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987F7C531EA
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155009359.20259.6514515879176836975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b45d82e479cbbc19feb2141270ab259ea1aa0e82adf945fd4d049706a18344
Date: Fri, 20 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771550093
