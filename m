Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAB354654
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765162374; cv=none; b=ux8HNnvRT2GOVCVL3+Rd/WolT7s/4rRgid6jFo/tf9rlfVrcldoGc9bCJZyjIGqQz6n/j8uyeULOTjORNvAlJsrrn6huAlNlNdAwkT+vf/WH1xT6O0Bhaf3sl3dE7uptL7ETMfJhWXpyprQMAKVovgroGQUBQTDba9bHHJHZjdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765162374; c=relaxed/simple;
	bh=CsqZ0R38RqPQlJ6jiYXbh2mV+A3xYlLMeIk8F1NT/HE=;
	h=To:Subject:From:Message-Id:Date; b=Y0b0udB2n4SVByHFZIjLZEGHp0cbE50e3gxYaboDzlDfib+ITkQCLnRlAX2ja6+FzjPFr7UNEUk972jo8Xz76j3UMJNTNNfdij+DAtKZ4k8IM5Ui0VqUV6MLOxI0DOHGlwT1hvwIgTr8vQdXdSGlAu5aPm8TKlIf3Ym8qX9b9vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s640QdX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s640QdX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9619C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765162373;
	bh=CsqZ0R38RqPQlJ6jiYXbh2mV+A3xYlLMeIk8F1NT/HE=;
	h=To:Subject:From:Date:From;
	b=s640QdX//0CvBdWRonH8l2MhlptAW0twzho4oGzi8JmQKTbxuTJjZxGADd+b0Ya5v
	 O+Vsqen+ChXigN1bAuYgC53Uhnp31IkAdByNxZVkQoWoQ8eCqxdQrSzaQZZSsQ+0pb
	 ZXHnVFPyPh48JRaAH4QbA7Tq+2bvT0G8RZey5vARWm9Rqj/nBv5kNYf9RK7fRiBPgu
	 JsrOlARh052iOrCrV80gymwwi047ugW1KzCVam3/QFy3R2Ku21vkkJ2bE+XG+ksQCG
	 CP3NOX3KNC4ojNOOB6nRkjYSw4Y6yrjfsOsYcHr7L+yOGQCt+NbP6SlACS1RiAWxnn
	 ky3PGZibQuTeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9408AD1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516237358.16065.11883676992891609730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846991d8c562e95ebb2986dcf1195769135f43634eae6ea6d1a9e01a0bd6fbd3
Date: Mon, 08 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765162373
