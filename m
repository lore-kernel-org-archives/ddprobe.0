Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2A424468C
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762455594; cv=none; b=D0iVdnLBicd5ucgtUapWZwN1arSSRrnvFl+ZCPESExwWIKH/STv/38i3eTJNyEvl/TSFOpMPKdlRNxHA8fkbkG7e7MSMqZZwxTgumg4ZzprbwecUR70i04/PEE27bdV0Od8uYL2LtfNUxY7DR3V+WJ1mOFWfcjCnUhipQl9VkBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762455594; c=relaxed/simple;
	bh=wqX9cyuo5YkUI0xlCA1kfaDTIlOVYrX/nJ4juNVOYOE=;
	h=To:Subject:From:Message-Id:Date; b=Ry5CYR5B1g8yZ52os2LtD5Y384qdDTLLGG6s+pXSSS0zC6ouL7TolHLOFP0e9qgVjTP7wAy0xfIyX+7C8Tcr/MeOBoSIPiTcEaUL+TSueyJ9fMljXMZBAGx+EcmCWa4D77XtNzn+VUl9LwpvWYPpIMwtfa0ATiRbMG3fnHNGQXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMFf0unz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMFf0unz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA69FC116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762455593;
	bh=wqX9cyuo5YkUI0xlCA1kfaDTIlOVYrX/nJ4juNVOYOE=;
	h=To:Subject:From:Date:From;
	b=DMFf0unzePS5rBygv+EkUK5y28Ch5kZ9MdDwFfl7teCE/joPxDwKVPh7pU7OXsxT2
	 FlnOysTFb4GvgdSSRnOjymoh+ymbty0SWTvR9dyLTwirtdFnushofAorEzZGwaYpIF
	 LtRw6PApJUnkOhj5nr7kttL3Hn6GUAxGEwi7oSEI6SIkbw7T/RnzlVMGNw9qz40+TK
	 pQtQWNUBa3TX8FV1BE20e8WFshjbnRZ7lXPoW70cFPAdsiFDkDahlda9P19c12sTnV
	 JkQFqN0SjHEgkjWOVTfgq63ZKXvdU855V3A2DcFq2ZoNB3At0RQdoFah1gVqlM0EFP
	 u7QzzC8hfv9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9147ECCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245559358.534.10299158585838363366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2d5d671a14072ec5669664377519c77f46f297c7ad0a55d4b250ee305b3ce8
Date: Thu, 06 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762455593
