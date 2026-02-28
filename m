Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE1D202F71
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772247894; cv=none; b=GUFfJSTupZFvXxFGLLk9whxSiRg8w0U4br19S96HU7a6XlXk3hOjfpHB2nG82YwYS4boTNDdjoiBYG1903jI4egA8bRZMpa5VtAAerWJoIppKYTtyimPQhLZo3+av0Om2zsvNhhyVnZMG2ZLSO21TnOlacPwtt6acwZvAD6CdYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772247894; c=relaxed/simple;
	bh=eiphCYyFumw7Qe0fZ+iWjWiMpqYWKU5vGoMhBQwBokI=;
	h=To:Subject:From:Message-Id:Date; b=T0D1k/3QDRocSZlKKa8mcYVt6lEEGtcML2iHnnemasTNYfsOrS8OYCOyGkPZW1xW8hfBxELFqzDBEe5NzEMIk36ek0oKpKeduu1W308zXQjfbLm7x9ODQLV0onUdBbgETwjZpTd2lHoEdsvDCgs4wdSTwLzC3XAR1rdDn3PcMLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cT8FAvBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cT8FAvBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB06BC116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772247893;
	bh=eiphCYyFumw7Qe0fZ+iWjWiMpqYWKU5vGoMhBQwBokI=;
	h=To:Subject:From:Date:From;
	b=cT8FAvBj/PqRUx8GB4Z86ji0eKj4ytp2a1L/FLbvgS3uY1mdQhMEP58qsYHEKulkH
	 xMAUqSMyE2Q6cUcwraG7cVE3ptfNsMRJNPEyJpdbyJCbUYD25H8rUeKhUScRuVxAS+
	 qpyjwYQTVc8yhUNEYokzSrPVjkhy97y1+cZ8ek35COmDsqWw+6OMu7KBYnBaTlLkb5
	 w4P1FJ7vdNdaOae6pVODLjO6F+aCxU7AlnBTIAL5igVnYTdR0L5jbftlr9vVRkwKOf
	 L/+K5MgWKafh5awjm6fdZ5PzoWb/wrMKlShecYpYrPMdM5x3HECri/zH2X3EPrsjSm
	 Bp04ZYcqsxm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B04D104892C
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224789359.13054.10374410605027431333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3d0cb7ed0aab77c756b1d77548cf0f4ad84775fbd68b5d22936868757f546e
Date: Sat, 28 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772247893
