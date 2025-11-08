Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183C272602
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762614594; cv=none; b=gQWbjNYn/oKRQC17o8R11Y2AbgKajiE8Ib0daaL1hmp/AlFirEKo3WJRju7hXXCITfzvbhOhMvv3IF7JrLnDeoWs/dQqgZaiygp11iJKIN0TcJY973GhL2y6ODhKaqWCr/vKoN6wQwxhh8X0mU1FoA+Gl1SL9Y3LmUxOId91Y30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762614594; c=relaxed/simple;
	bh=t7jVQRQKPPoLL//D1sAPcdSnh6U6fy4huIOAT4WnzbI=;
	h=To:Subject:From:Message-Id:Date; b=Sb1p+HVkh5zYrTm8/DgJWxTCDoJIpT1nGRT8SaFIgUVjPzBefxVsXKSlSkvvzOb40I6Q6dJKRmj6ySh0DWcbtxFO42wPrRu6YienYB1nkqJ8IaPdup2vDr9EELdbikoErBhgbCi9lX+6szDSA/CTdfW/JhrlBOvizGyE1hoTKpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcYNmo6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcYNmo6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A41EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762614593;
	bh=t7jVQRQKPPoLL//D1sAPcdSnh6U6fy4huIOAT4WnzbI=;
	h=To:Subject:From:Date:From;
	b=KcYNmo6X9bC7k06phk74i8IQj0MkHRqiIIYzyIVszkrBb3s4tiMLA/tr+6RMLTtjl
	 HTGDew57iVp5x6+zIYLwCuVEFQ/+jzfDm70ub/m5bnK/IkehtNlG0FwnjZhDUlvypf
	 q+0rqr/08YMjl9YZFnsuw40XiGjo4rlH92+74EmzEHyvg2+Sb9lEN3Z6A8w94oBFjG
	 rfMXTDTKAWZq/+vLgtV8ucssMsBu22MJPMcsQknQWrZ72PUDE2Y2/UXfRaBa3A8FVg
	 +y6yuo4QLWZkH+SnDJWY+FOlx1lBlKcMXEIYqv1Qr3ScAm2gMIErXcAesRf+SHGabL
	 XrYTmVmCLRH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B4CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261459357.810.15184741876009058489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6b4414c181afc33ef966fef4f1dbd0df2b80676f652516afd243d83bc96a19
Date: Sat, 08 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762614593
