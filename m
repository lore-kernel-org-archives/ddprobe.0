Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFF816A954
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 14:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720190123; cv=none; b=bc4y5BdR2mExcJTkxZmQZmgtuijFfZ6ltuxlLxTikR9cwOHfAXfENoRhyrILVJkwHKbdjWdsvd1FTQ2p31dKcbwzzfyu6Ue2xftAImU0gThhff88MWb1xq2Tezi0B6msOfnRP7bNHYV6IJpm+SE2w7wjBKJ1nPKl5bIyYyLyD14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720190123; c=relaxed/simple;
	bh=fpuUy1ZfDVTjOHIVlD9YoexFZOz9TSCpIh0YXBqhtxg=;
	h=To:Subject:From:Message-Id:Date; b=S3AwOYVL3pBVJ5JPu075sI7lTt6wZQnFSvZWCoxLsGYKOG+9AJFZVWHDDSH15x5AMsd34jrI1aiQXuemXcBmLC9Tf80ZoG34ZE5XWuCeIzzj4KPdBs+WQ07J+dKodVuBJWe4Mt/qxRSiFp6lB8T8x7m2Ew32eBoxMgwpIgDLO68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFLXrdT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFLXrdT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC351C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720190122;
	bh=fpuUy1ZfDVTjOHIVlD9YoexFZOz9TSCpIh0YXBqhtxg=;
	h=To:Subject:From:Date:From;
	b=fFLXrdT2PKRQ6+JVk2KaxukF1hvJvVjfbp/9EldOOCsPq/Aw2ez1+3LJBZq9QF45+
	 UUn3bhyiQ21RXIdWkgiFFrs1PAoN1+Z9eWaDg+8FbcFfJ3OvNJGesOSdtMlsEGTgp4
	 c5k3xggxfBDsspUpHakJC4iBbPn/xcqlCMAta73tJ5yScSiivTguJqefu675QnurI8
	 z+Z9sSfP8iKS1aAx6Few2WdqgWmbiUbB4y0svJ/Mzz0daNpEPTuwIjiheIOMdHhGFA
	 dzCN/+vIyxb2/1v8BwnKyBb0mYJuqqkcC9CJdjdeeRh2MIEyCeNmOAsYhywNMYQzV4
	 l0s7F6djwiJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9C72C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 14:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019012281.32653.12160844214313518263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbc36bf914b79f6fdf2b382fcd07662e810f7e1a165b001a239324ac4819246
Date: Fri, 05 Jul 2024 14:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720190122
