Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D38C84A36
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718234903; cv=none; b=VOC4KYpCx2ukVtI+kGnklBEp/POa0rR0nTcB5jg9anC61I8W/wCgkwSQMAOZQpUmEHnCNcg/3FXUhk2gJFRsvoJ9jJXtEHBISTvlrIm6APgnbZtOST472pb9Ddj+20ferLp/Iw4mUjsFFMJHdIwf18fjtdvUCOnt4AFKfr2VUGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718234903; c=relaxed/simple;
	bh=1+GXfo+kydJeqnWjncxMfRbgJ0zCGjrMm9nLXOV3av4=;
	h=To:Subject:From:Message-Id:Date; b=ZY2T3nuRLCaHEAdi9mZg6OYsY2lu9V2hfFcT+XVMyFbakcHpnm0x7t0hu9Acf7JJiWV7hSfa1b238RxkH8PeyeG6YaWFFDsb2guBVcwxktWL8hhbAEdDR73fyparBkOFrPG7wrCZIduGmfKKhvdTdOGtpvLsCUVZMgebrW/cD3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+0E+yjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+0E+yjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7039C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718234902;
	bh=1+GXfo+kydJeqnWjncxMfRbgJ0zCGjrMm9nLXOV3av4=;
	h=To:Subject:From:Date:From;
	b=S+0E+yjm4sumlQAJNojhySRP5AXazQGnwLG5lEK//VQv1NliU73QrfUMDcidk5XgJ
	 gQfIADC8xWubBaNAmmRrHfatFVZPoX+lb1uyGhOLvdJiKlDA4B0ODsrYAzAJuwSuWs
	 O2277Q225nzg0KMN9o3NvKsGQbRRHABXziI3TCjcoPYEs9QY4lKL9p2G+VA+Lugf+c
	 DqBnDXtLuZYqdqozu9IU19qRGaHwjQPrS9bL2XEfXJqP4YnggBSSlCFQQidZHseIq1
	 PzizyNJXMl9Aq6V8v1mVbesvlZB1x/gZ+ZzFu52G3y+T5OYapvsrix7n0wAj+yL1M3
	 qU+v212w2ULoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C590BC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823490277.14132.16955718121241167772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4646984d1d0197fb98cd71f6e752c812a48381b2ada031eea6471b4f35cde4
Date: Wed, 12 Jun 2024 23:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718234902
