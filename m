Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF27261B70
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761176994; cv=none; b=E4XwVGlIKIG/+BhJ6TlSSJ1KrBv23hsOE8ok9+DCiOKfJBfm1N983hw1yV3SAoQfhXqoYg9WVS6P+JYYhI/X8BMqGha8aaKHDhjL1KfIFizdFKePfUNsdjWHxD79JBTEMnvE02dcv169cvvOtZQ0ekIEjclPgyByxf3qAuCbI0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761176994; c=relaxed/simple;
	bh=GrSZ2OkT3gIa4WuOCUMfHKt6vw4kRwXAEqA+sXmFmvU=;
	h=To:Subject:From:Message-Id:Date; b=LomRkprUXicGIPTp3bxdAc0CHDTdoyvMe+XqCAcr4SlGfYeJuito8T5xWat7u0u172eW5B0O8UGQDqclee7/d7dxom/Z6LY4UI09pH19EEElv/t9e8tazSprq4eCG/w1uIIGVsBMLEIdPKteY5F42HEvxfCrseTVDEUzTde4H+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGOY8D1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGOY8D1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A440EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761176993;
	bh=GrSZ2OkT3gIa4WuOCUMfHKt6vw4kRwXAEqA+sXmFmvU=;
	h=To:Subject:From:Date:From;
	b=cGOY8D1ItoNueWhgp4e5iBqGUXEzXEfZV6/Tj7D9pGw4ULujDVzA/RRGniDs4Wmwg
	 VVttNhTSWZRPuGHOcqtVqWPjzACmAmoXAQhUkzVj2VKjUf4n3u1VKtVdQ6muBlidv/
	 CCPi0GjLHtnbtmjHelQf42gD4oEuMon8o8yRk8mHID0hdq+YMFvbk0omCk8IxlrhFQ
	 jho9DaFDBwHrzwBIWmxFG3k8tjXSpRDiOMGP7ewnO9dD8eGd7glj6JRxxrr7Na9fWp
	 LKLu9A7i/e4uuJUbha9r/TMR54uZA2RaMtc/6hugjnc8O7+Ban/IGRM3gCe0PWTXRP
	 2WWASTCvZcbqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F27CCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117699357.17676.14153807241827989480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9211040e3653605a593aa73ae43376fc31198e6939a93aa5615b27a2539f6c1e
Date: Wed, 22 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761176993
