Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10736DF53
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722455754; cv=none; b=h647v2iBZxkGQMhnxqePQLoYeQEqVBQnrpwy95lMdxIcvfni+hTEjey8rg/s8WXFhJDQdzJtYl2MCosGlp8okQt92c2AvcTFWE/52bh6GljgvcLJatNGBReUJ1wstVTerFvHKQach9we8nfbRjl4j7VLXL4SwoprzvZuk+VKG/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722455754; c=relaxed/simple;
	bh=kWeROviunGHcdiIaIwmDyF8o4R/3EoRWHxEWIaiCRGw=;
	h=To:Subject:From:Message-Id:Date; b=YL6muzw3YwXEVLOO1qjlnQ6XUNsfPCcdrm4IrZquBQSc/NCMswTJBp2UrB7vzXxnRDqnc/lsydXL0Ml6l7PhJVCt/N5kAG1lrQBJpmtY87xaYjtwiBxptepH/Jx1DbqyWOUQS5zAtPvHOvETQ898i/YiJW9ZUHGSDq7Lg+o4OyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsKo+/r+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsKo+/r+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCEAC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722455753;
	bh=kWeROviunGHcdiIaIwmDyF8o4R/3EoRWHxEWIaiCRGw=;
	h=To:Subject:From:Date:From;
	b=KsKo+/r+9wnsoET/kR0V7kS1JdGedKIozYzBVemqvJTfmvB42rYHs+NXj7l1jhcgx
	 KCGdQo9EFySh11rrd24LWliFGY8Ssz8Xqy887/MiSDdJ5B5Om8ljlBKS/0MeOYl0yz
	 dpnMY1VbS1Y4JRFtE9j95W3xMXQsmuqFTkv3octywffXVP/c33Wz1nfqMkSFOz1a1t
	 GUgdux1ZZUf6NCKyaGUgxK9/5EA2/vnwlEOobeNkOyLgXZZloV8e90uz/H5BtfnKy6
	 w/HNO44twygFk2S38BS7QRq2t7f0fQ+Lkf1x4C7YzRPdPMjTpjSIS8GFBYMsFLFYq8
	 K3G+kmAXdtDdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982C8C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172245575361.30767.15502272216882353691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbdefdc5379221f8e9b189829283ef03e4ac090b6eae4ea2dfae9639ad4b015
Date: Wed, 31 Jul 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722455753
