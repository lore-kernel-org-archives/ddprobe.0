Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC404CB37
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719596063; cv=none; b=NhfL76Dm0hlo39fZ9rTOoS+xMq6Tj0nlEHVRcFPaT1SzNs0ikqZvO39X9gsN2BA6KuqNbyrIDjOmlXSBtkvCXeRQ+vdwmVqX8ym8VYrQyZd1v3xhisyuzOZAG04hybk0FrwkrZluwJ13p7S35JZpQq0e9GOIBrl2SNl39Rlu7Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719596063; c=relaxed/simple;
	bh=P2fTe7rDa6bx2z61xNzaqB8CUJ7dCTo/EzAqNHPreO0=;
	h=To:Subject:From:Message-Id:Date; b=l33OSX3C7rSdUVdwYlmaDTe25VmDQvtBQHNLfbov+0G10B5fnB/X4FAJxIOJGjocNNQt+iK7JkyR+a7THfGnesQrCL4a56+AN4qnbQpQUl3XBMMLjB77RlXuxodLohqjwo/soDJPwg3YaxNefSJDC8RDmza+b65Kmn2zqm4Df0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqOlaHDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqOlaHDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE45C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719596062;
	bh=P2fTe7rDa6bx2z61xNzaqB8CUJ7dCTo/EzAqNHPreO0=;
	h=To:Subject:From:Date:From;
	b=nqOlaHDzJPgz2nzLhD+TIbMh4xvn3RTr2BfEz90WM36jlcb+cEsgLAe6UzlSrzdjJ
	 KyCq97cLAxjpO0eHN54dlqS+qZ2t/1ceZxoST5jL/xKGY08HpXfYA+xCX72xH3MJ9N
	 2ac80mj+blTwLhNcI0zokDd0vtnSywzwQknRxX67/+hVVbX+156AbFAZS9xChMUJHh
	 /axwgYF1cgVSsOZZtPikdlM/W1lEeo9ET4oda+Oil74MLcH/uf8si1wIvtAlm/vnM1
	 itRWu2rSHCQBvSMedMBRxblbzDeyz5Un+GnGGcqgsMJ0LxatqjcK4Vn+FYKN3spxmc
	 NLkOTAR5aQgOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C735EC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959606280.24842.9171704597755853682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d91d5f763a190221937a4a833703e7bec2531f86fbd56c1eaab5042c6ffe35e
Date: Fri, 28 Jun 2024 17:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719596062
