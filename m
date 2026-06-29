Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511EA44BC8E
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782750514; cv=none; b=oCmM4CEyp9x3Al/UVAEibiBq0Sdqre2oa5ypRDedyd3uEALmLMIsDJBxpMhTDEGBTYa8+oRvuEemxarCnigzFBIOq/rjKrINPx9+e7V+W5sB0bN5E+hKnzJI1NhUOJ4mPyJEZnjK8NIv2wC4C3sWi2CU2xwdcGAbkFjwdREjhAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782750514; c=relaxed/simple;
	bh=SY8bdSItoYaDSiC6sHtwRbWdSEXNbZcwqZCb9apsvtU=;
	h=To:Subject:From:Message-Id:Date; b=BsbBiWLZ9eIy9d4y6o8pRb9gHCYJE2bVWSP+K0cb6BYNjHRaN8e7fOro+Yq/aNVg3yaEiVBLLDUBgLMrQuf2XXoB3YRi6/ViEQv1nqzdp7VwjCRKNJnHf1Uf5mYHbCb04M5iruFXUP2GkKBEj9HNIYMA7K6bI2kyu7kdSzGbfvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngkjm7OE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngkjm7OE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01C2C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782750513;
	bh=SY8bdSItoYaDSiC6sHtwRbWdSEXNbZcwqZCb9apsvtU=;
	h=To:Subject:From:Date:From;
	b=ngkjm7OED+rdzrkykbYxm1tGEhg0c55EigqEbbdl7eQdmVI0YxdFfN8bO6u0DPGhJ
	 2nCe6baMxgEQnc/4zVvK+NBcirONqhaxQOAK0V/D5PBrYSIvsQoM357iKd3RqzEEFp
	 GFEh/J6xsTNBTjLWnEiWVBSi2dMunVCSH58iuuVtd/1vhBCcVENpEMXwoiX0KoOkQf
	 ynCk2l7Ux8Z56BZY/UxtpnDpNGWDz9B/3J288wjKoT0O1QMZv+id2AwKaXQhuxO346
	 Yp2S69D5Dhf1+8LXclGy+saGEiX4Ly1pnv9wcAHhzNHMdRqM0VuFDfBgkm1c2BIsel
	 YSFZsmn+ORyHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97B7C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275051368.16136.13246254769388830840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc04da0990487645e0ab14504ede895617e982e757734d8ca93d9f9c87e23f75
Date: Mon, 29 Jun 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782750513
