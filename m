Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24F37489
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706158097; cv=none; b=YhPl2AbTWqsQ9csv4PPq5yuycg3XMNeMSuOA1vcDmkXrjOEkBnFROcHmV3td5RTG+j15p1Q5rIk9VroPct/aatWD7/uLHs8jcr1DQeSaN+ldsyPWko3x88/XRwX8EtuXrQWkjSMJdG78AH8/0mAIvjHETAApLzNGfuT3iggVos8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706158097; c=relaxed/simple;
	bh=BZmDq6lsew8tr+sXCAvvHGkH/KRL8XxFx1JuLimEP9k=;
	h=To:Subject:From:Message-Id:Date; b=YcXqk6dhdrvZQRILEDCEblxNgpA79YPFeIFqGsITZ/vCMHqZs7CN+u/8cIkcGyHOk3Ae6J+wtu68v8yxRW6iGJcB6ES6jNSwaU2DfbEQzsvqCHbFDpKMOeCjIPD5I9ni0uJDDFAN3whSmUf7DC/jGuyeyLiehKknnjg6bLjGUyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1Rjl49T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1Rjl49T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768DEC433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706158096;
	bh=BZmDq6lsew8tr+sXCAvvHGkH/KRL8XxFx1JuLimEP9k=;
	h=To:Subject:From:Date:From;
	b=Y1Rjl49TpCvj+l+Iv1U2pBx7S+hKCS9ywY7x/h18Ed9FoQGibmbC8vXXhHm7E2Wx7
	 6tWVGwkggvgTrzEzMDq+LNCad5wWvF8wuEkBcoWtIrtoYKkhAN3C75vj9K9YQpAE/b
	 4p2wLs1QrKvotU+BTPXxhNqSKGTVu9Di9jSWgT3mtpG12vIOSGZOQLrB6KPmkyyRj1
	 DWOzsCXswFC4zB4qhEto5gjvTtJoAJuTMZj6OoLhVdkFq3nBCjCLy6k0AqJDI6e09W
	 94TFtl8SxqC7N8ZvbpfAZ7y0731u4BzPmX5mEiRokk9U8a2NDpWEa7Qdw6LUUqT0ou
	 H3dJUYzPeaImw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BAC5C47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170615809636.21434.14576374845527122171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a21cc273f3f2a8d25c1f9dbe2a231be4d58c657e92e33da3c934bb641ca113
Date: Thu, 25 Jan 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706158096
