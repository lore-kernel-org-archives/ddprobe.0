Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97B231F9A7
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777212453; cv=none; b=lpfDJzlBtMw/m0jNok5YdsfjEiD/31s3zAGGncPhpq/m20fPvbfGJbQYhz1j8sTl71JsnT3e9M+Z7Q6y9bKXHBYCMtsM0JTWmDZ/JHW0qVYwzZB5hIdaIbnrppNtbjqjL0U6JUIy1oX+Ypc9MSIFCW9CTmhPfc6JjHPGTQrOYi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777212453; c=relaxed/simple;
	bh=Y+ZGXkRzn8P4KFqxyaVq8N6LdDEClU1pH752JED0VF8=;
	h=To:Subject:From:Message-Id:Date; b=GmG+vI/QmA1EulerEJlq3OgGkkQgEhAK8oswQ3fv/9NjDKQKnUeeCqEGpDB5a1jf9Zxj3olZaGOQs4SvNe/rIumSd//rjl36Ftqd/ZLqDoqrcgqmPZMPVFZG0QzeqIZaswx4Uv9sPe+COfJrYSSfhAo2UlQmP4ey+diBh5vU6vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNNp+xFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNNp+xFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA24C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777212453;
	bh=Y+ZGXkRzn8P4KFqxyaVq8N6LdDEClU1pH752JED0VF8=;
	h=To:Subject:From:Date:From;
	b=ZNNp+xFXIPKG0OESgTHDF8NkChxluDIJPfTTty/zvPc4duLHY+S1ka3PsVm/dd2CV
	 VcXH4IXdma8BrbUV7mcZ9Il1XyRReaLgLv1BoMiXo+2JOIcYfloL7sOj0P5DEJwjx+
	 DTEIiAMe4vV4RDglCS0TM6doFai43quyDTm46YbYtrdts8bOphCJsRnYXh7I0C6pCO
	 sx7Jo4tzV3jIHFkVOUQ56huebGvjHxGdoR9ecqLkjdYT5Voru+1c/klWJCGRhxfSOm
	 IaaslYNmuPomeTy5LIfEGsEvtgDObhiMEuOa5PGIeESeifNeGe6fSDQKtV6pl7Agvy
	 o68WV3M2aHt9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC197FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721245368.21187.3032867783760552236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8508ef86a5a15b58237de9f57bce1f1e13695440dd95e578c5437f9407418a8c
Date: Sun, 26 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777212453
