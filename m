Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435A18BE7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720573583; cv=none; b=aLJy6mLoD2FNt4oGM1AwOFd7i1NCr+KL6Ld/OvQD+MX3dMMOv879BtgSwKlK+fqmjCZWHDVmn3w/fVfT4KHXBeOQbRZAP6bHnPJT1D77d3u6eTtCeQg/+0+WZO59m4hOwl2yBYMCvwiHr+S7whDmqxkn/rpR3gCPlVtu6nctRwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720573583; c=relaxed/simple;
	bh=fVcRZRO/xN0L5G3CwgBT0nAFnAeFO8BR8ddg8MquPHI=;
	h=To:Subject:From:Message-Id:Date; b=OF7JP9hkLlv6QRh2zcSepQ3GPTQNqIgj3X7uAbtAGCui8eevmF9CPGlaBpHBdrauqqOY5xHe0jCnEcoHxCHNlXGdfVzYpzRNCmU0q9fYCTXDgJ8wwmH143Z4DXr6VLlxTZiV3NA+AJVc7By6BGcPeZC27WNT8nosSFaJT3m04cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaNCUhde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaNCUhde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60C8C3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720573582;
	bh=fVcRZRO/xN0L5G3CwgBT0nAFnAeFO8BR8ddg8MquPHI=;
	h=To:Subject:From:Date:From;
	b=jaNCUhdev6Mn1gaFUSdt2wedbGLKNgrkdGCJr8x5jQ1BShnPVdfnEsBgn6PoZ84bA
	 oeSjvOSKAhjry9zJAtQSIjkc4dIZmZ2QNyCmYFKnveOyGBxpZd5nN1E0LCKMsKYtc1
	 9tOUgeC3saKckCiU1T2UsPAeO6X4o459kfMxReWgHPIVFcs4IG9/JvUMRzCTk1oFhx
	 ic3CilbC20tOPQojtITQ8XpUyvLRzm6n+h3w6nw8BFXyDGDOyd0Wpycminr4KlauzX
	 6lJdB4q2PizSkcnFvOX0Ux5Obrm0s3CAHPEezfY3A0sslRExsbyGFMNxeiTT8zG60P
	 Pqg5KIibUL+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE18EC2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057358275.22794.16158728058972083311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdabafb7bb136d89c6744afc1c8b834876d1b4c2db5091a2d994eb88eb2af706
Date: Wed, 10 Jul 2024 01:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720573582
