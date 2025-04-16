Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A193236420
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744795794; cv=none; b=hRYSaWHbZQ8UIi6jwrQL43w2oGeSipEna3QSh/2JuYR1rRkvceJRARdUUz2iCEBoZxm3gDsial9a21WNEBkWkz+SG4POCdFex8M5JyCUQkyyDVNCgB1QSBfHsug1u5qRCtipR/ntKSWplg5yFXxgSAaRcQ0SreyKlRaldRhL6gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744795794; c=relaxed/simple;
	bh=eehmQY4XTIb3E8gFhKPGkOoVT+8RchcsOkHuOnPTH6U=;
	h=To:Subject:From:Message-Id:Date; b=B67O77F2FdWzyCtQDCMIp8bFWb+ZNYC+hnhTJZE6n7g8C4t3p0rfm9gFvL1Gk+i0t1b7XZTbAPQ5HMFbRX3nvX1grmipTAnmsi2xVEpR1g8Rdd6tRATk6jxtKm70Nz9FLyRXQv8wn5XVpeNaqk2P7xRsgsW8l607IpiKuUH/Hp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEKvZxRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEKvZxRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58EFC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744795793;
	bh=eehmQY4XTIb3E8gFhKPGkOoVT+8RchcsOkHuOnPTH6U=;
	h=To:Subject:From:Date:From;
	b=sEKvZxRJBQ1X0aGCZTIzDXFLA89QRy0BXbKRlEGohnzOaKxb66oX4jHZ7L+LT9AYs
	 TTUS1KmVMYLxBvoybubOQzw23vL2Pyx1j5nlyfYsk2gQpewNAlb1tIB1ascONm38fr
	 zek5nBYHLH1RjQ+/4fxfiA+/l2t6GRLJwBF1XpoqOVjPo3zz7JBjGI6kfmIYkoQDOd
	 0v5ZA5VLlJNcNk3KHIv9+YLAT0nfItFa3hGa47RBDaO0dsBzERKLWycmJf0DybOOag
	 uEobgcFc0dvRNqD3yin5CT2g8jVO6FDFyZ286JqR/H/TwijsIPpXXHgxqhZSDonbfn
	 qyO/uukwDpKVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92186C369B9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479579358.25334.12091938768546750054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83dffd5eb0113ded8fd90de8d3712c8ae31c2bd0ea3a0834418ed7024d8f288c
Date: Wed, 16 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744795793
