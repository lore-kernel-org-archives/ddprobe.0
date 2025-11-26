Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2578B2E88BB
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764195174; cv=none; b=CmgU6G/kYIzYzCsoEAb8bz/+dbEd1iOKEAVaY0zL8O/oVGRZsXUvtd57KTMu24vOR6zlFuy3+dg8661LxrFrpjTYzeYi/r9HH+a3ycqCgIbs1A9DzHRoxNVdikLJPBmg6BmK+zpOBkfxmQOFoVoqDYuJ67oxxRTeis7nx6Z0210=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764195174; c=relaxed/simple;
	bh=gMBPeDLvJSpUR5W/RKzfVym0wibVhiEZKSGZnUJ/N4M=;
	h=To:Subject:From:Message-Id:Date; b=gS4u0eQ82Qa3cgJ+Z4t6LSGNdtC1XcthydfnrcC2E6dWAFvizWHhoNbNVMQveTKvcFjVqSoa8/TjK408fakDHUN3dhJeGkgk/OMGy+oZZWNE4RrG/dS1MFq4FbIBVraz/u6ZeVR7hhZYB58ydVNLod1aqsXzO9Nbi9wng2WxkBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vbn1hdsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vbn1hdsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC43C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764195173;
	bh=gMBPeDLvJSpUR5W/RKzfVym0wibVhiEZKSGZnUJ/N4M=;
	h=To:Subject:From:Date:From;
	b=Vbn1hdsMaZzn/oUwqP/6mnme2DAIjOvCswV4O18k0X8pVHF+NPrJxhH/2D3eo1ju/
	 N/v3rR65hg1rF2lEfjL07dMR51Wi1lZWZM5qk67RieyXfCcRQ9aHVrtC17JJPcnjaG
	 zWQEcT7hK8mGPBoQtgM4IuKlokQo/LRmpIoZHIE4ANkWd4BcfUeL0icUOrGEjVwe3S
	 snF1nfUQduK/R2Wo3MOC6JZt0/9MqcYVAXeln13BJmCEnyE2MG4pkGCiT7IOKIkUL7
	 g2rXNTp06gbpXcwxUITkadrByxFT0S2jJoYO65KdFvLzf7azIxAPM+gWVPyOHFBpt3
	 Yp4tcWWn8SN2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BA5D111B3
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419517361.9803.14521449059226825811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8d53eb4e0be76a69c22ee15947ea910c2ec1997b622ff92ba7f160cf9e6520
Date: Wed, 26 Nov 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764195173
