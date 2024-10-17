Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C75A2D
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729127754; cv=none; b=pp5XPutQDfpA1ZhFwo/EL1ZAjeYTYbBT7jTxrSnyw6kHH1LNM/9vcjk/Go6GqAn8uo7aUdDKsYTIXJ33pat76SSnz/87ODNp6lIi0FTFIgzPvFZ8Sg8hegWxy+4cQVmmO6dTXR+A3/smTs3bWdeaVy9g+29NAooAvxyEx31jf6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729127754; c=relaxed/simple;
	bh=mpYt3fFkp5W76rtBBXhSWxfMHv9bE7bE1CgYr7Ta4QY=;
	h=To:Subject:From:Message-Id:Date; b=Zd4qeT6ZXTILEx4aR/OugFyhCBaBsXBxnHoa4T2SCkJmEbUrtA/7INmayDTXLyWAAer8V+sCF8LlbgGNS+m6XMA0YyHI5f7IwPzAxQkO0eZjGxmRzfO9CMZhJF/UbyHafRS/iQGAfZyruk3hzkPvacnwh5Tb9+KW3wJTI9olBN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFfNgO3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFfNgO3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C59C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729127753;
	bh=mpYt3fFkp5W76rtBBXhSWxfMHv9bE7bE1CgYr7Ta4QY=;
	h=To:Subject:From:Date:From;
	b=XFfNgO3Kc8uFlx1ZFRHjBI1IWiOR/LWWHbCkwssA3CIGLfBbBrbvHDxlayYYo3EZl
	 tstiLXuARQXpWGxg2py0rfUPSxhUch+Ys58Nqm1iPsOSijQQJpRC9i1qizqgPG/HCH
	 auqVggkbA/JGUMA5dXWqjbW2trdnYu1oKtJ4FAetSiCMTZAeJbyMrWJsPjLeeT+pXv
	 h7H3gl9YftCXFgv1KnQgGiZdc5/SXz4TYY9q/PR5FXsk2L4ss2whLfkJ3gYC5uwbhR
	 9BTh16Ju+bQh5pRQz4EHSmynN3BUZlNKuwuPEmyduusNDpJzaeEj0da8aQqyeUXq3L
	 V+omkQ2klhO0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9052ED2F7D8
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172912775358.7908.17596655301452177929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005562a861a7ee5c087c15ecd041b91b3b510229795d636c6d63d7854d9c8a10
Date: Thu, 17 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729127753
