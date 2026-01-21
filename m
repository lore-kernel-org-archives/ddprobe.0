Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9F323C8A0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768975434; cv=none; b=T/H5d2Uho1jTRYf7cDQYaxoa6L8wkuN8VmyrXGWRqaDU6+TcQIoaDqIkUzpvHVMX/BaWJf2gBAdFBWVJ1C4ewLFMPcCZq2ThMsEtz/yT68jMBgdxvYtLvfREuENEn1KQJv3QN7k+St0qpmPyHjVhiiX8z8nFCR++gxZ9Mv3HbCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768975434; c=relaxed/simple;
	bh=xHe86Jw4UalZGfMrMEeVKO9Vknukvz82EDty+3E9w90=;
	h=To:Subject:From:Message-Id:Date; b=i78Ty4O4wW2CL079GJo4OKE7uxetCzaNkgxf6nXvwBtXI8Ro4prSiBpbH8TZ4ndWtKfnkzwIu6YsSUkaMoSaEWU0varEEZCrMhpesUQ/Otoq98fB2T9LDN2d/0pz7FdHTtQk9H5s4IbJhQs2yzorAepmRVaL1miem/qDEibU7BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glBVabsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glBVabsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7749C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768975433;
	bh=xHe86Jw4UalZGfMrMEeVKO9Vknukvz82EDty+3E9w90=;
	h=To:Subject:From:Date:From;
	b=glBVabsa2B9Pez04IB8s0KuCc75qhDKTJRlYnijVnrWznIODxWsx6YOL6LZOXnXXL
	 mQzu8O+bnO5HWlm6w5Y0uqodZZmrneNfL3rHsIYdQfEM0WKpCtCnVbP+6hzr7Mo0PZ
	 12/53wf0qjtU3v5QlDnweAfk7KXHm/GkR+fSxvEW3NqEa3UHGcLUCze7aYAoXWNpmF
	 n39tgqdB37SZd0QrOEXe2e7cROQxeVguQnila5uCj1SlrSHalWf3yhZAm1fSsnvcfh
	 p3QGWOMNT+UH5fzN90RyrtBcCOBGVRNF6GY7pJjs8zVx6dWtg+ihBOck32Yn2jS4oG
	 vsJXt0Oc3x/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1748D262B7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897543364.21310.8403546563112008187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402c5f2cb8c162c90d6f03a7768fb4ed641d5e0d41ecba3013d63044ab8277fd
Date: Wed, 21 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768975433
