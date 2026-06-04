Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3753B4A07
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780565674; cv=none; b=Qm6skKjrhdEY2hnnGf3IsTBDZWIFIrm1Ge9GJzqDBbSWX34vwYFjL+SjrdvLNtmEdI7zGxTe812/pWGa9RVDkLj/DEP3P5bVAb+9n4bDfM8hdZ+9gVVYuOOm21CuHOPrhOweW7UVI+y9nZDFg956J2kqCDkeLNnsKJcnV4a5p6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780565674; c=relaxed/simple;
	bh=vS5I+CZGlG+e/RBtprRJWqix6m0GpPkkwcmFgv0iof0=;
	h=To:Subject:From:Message-Id:Date; b=Zmhsgrp2N6T1wXw6ZiQlfSdvDfc1+FaoqU1aUCEp0jm6XvTB8WfZspHOCF+AXdDINoNml/ob8pFcF4eDrEhqoMTPF0/xFpGcPptMjISxwTkKP67SHX8qQirUZQhOZxXgjHoA4dJGLJ8oVb8AXkPzPIAtyl33o6FmLhdrY3iGbf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2APxJhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2APxJhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1689C2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780565673;
	bh=vS5I+CZGlG+e/RBtprRJWqix6m0GpPkkwcmFgv0iof0=;
	h=To:Subject:From:Date:From;
	b=V2APxJhWGmNkp2z4fnIUhMPOlAsBI1tqMWM8Mx0m/N4MPvktHO2the4b5P0CyXDg6
	 ESAtpqAzCR0F+gDG8yOXQQhvks6k1FA8MRp8++FbgebSgwgGQ9No8dECuoYhTb5yem
	 Laka0sKdH5qdicKxXFMWc0J5fN3tZrc10Pekbl+CZ7pGac3R0jrRW1/mXesad+mGQJ
	 7mPqfM7tzbgXwwaloNcMweoz8yYWu6KdIQEvW7SejXqMgwh8UQ/zLvPsltVzXDjIIK
	 M8lbnn01l9y6qkbTPO7WBiv3mg0kIRJL47PomZmfb3ppe7eE8z03R62N5ody8dEKmu
	 RYVhkqO9bPAtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2423CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056567371.8282.9206504752297236832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306c36c01db5c34f0c70d61778997dfb32e738e3b28cf4acd887feecd3193e20
Date: Thu, 04 Jun 2026 09:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780565673
