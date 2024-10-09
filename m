Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2551E19994D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728486354; cv=none; b=PCdb/qiEGmiRozUsxtyqF2U66SyAIRvkZaRHOkj+LLlz7icn75Fj1ofzVqEyQxvZlL84kwohv5WjomBz2Xl/bfnjaLIO92/KTYOrwkJwEgdvqoUunwpKJtvt8dJuUSkek31ZwHIyqN5UyB5aIEU4wEHixbOk5ukVexho85RY41g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728486354; c=relaxed/simple;
	bh=a+eFfelGLbST04KpuE3nBATpV4Db1BazPiXcPAcYk7g=;
	h=To:Subject:From:Message-Id:Date; b=AEmE5ZtRTJxEO/f0nYGj6nvBp1PWnuLmS8h3Q6pfz2QymESHP/5Qg2Ch2D+Cp/ZYLHkzf2Yj2vpbi0RGqnzgFw0ljgrWpHwFDFZzyVIMS0+NFBCg8byeOsrrITFcXVTSTcXsPMxbzslXH627SlN7HpsOBUxBVMB2wBBrLeZGs3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EirXbRYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EirXbRYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C43C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728486353;
	bh=a+eFfelGLbST04KpuE3nBATpV4Db1BazPiXcPAcYk7g=;
	h=To:Subject:From:Date:From;
	b=EirXbRYFuLm13jgFvMq143iHbO7QRcc5faXj78cjicgNIHDkvCFYOU2dsjUeDMUkv
	 37VJkMAbq4eUwRkQRfwwhY9J4WSphoJbwivEiMCJwjoizQdgWQkGZtIiVxiRQIW5pV
	 A7kDVXH56lVVnT0BZoco/U6zVkgUzKd0MyVKk+R+YMrYUeG58Snub4iiwWrdfxIa6a
	 ojZYILe/mVjr1ouS3F5Uxjko8FV0J4sFhn8ex2x3xQvZrj3LIwWEFsOWGe94xxBxUB
	 MTNDb4LPorlNcfp/o/mVK4QMaGvAAxOsnEkPloQC/FvUnDSXuqECYc3XLIoitaY8mx
	 YfxgK6TnTJ79A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AF2CEDDA3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172848635360.21099.8239504557840898760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fd7dcfb61c0f583610042a78e035f9c14237761a48b4302d211ebac5987c4b
Date: Wed, 09 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728486353
