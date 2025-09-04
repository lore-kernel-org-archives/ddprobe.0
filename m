Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300DE2FC01B
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756985394; cv=none; b=hivdT6iyIlMF61EY1DkSSy7OX8dDp0QIOZJE5FCIt1JvI15Op8/AdEfJ29DQbgyXhh9TdxJVQIub6wHl+4TKD9Z2DqtA/eG3d/dSi6nLILjdTIGuNoV0kbQeUHsbRP8/+vNRLsRV9bwyPAiduTsDmCTpa4jUkzlyDNSLQP+nxdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756985394; c=relaxed/simple;
	bh=1MfFXKv/meGwUnwowUaq57bQCCtF0YpNBO1BRsvgHaI=;
	h=To:Subject:From:Message-Id:Date; b=O388FmJz8vTAeN8D/McRCNiXJey3dBXRla8ib9I/gKNjUey3ofax0HYMVnMh47zUaX+digGa0ljm7mztoHhtzOyImuCb12o2y9LrDEENimvAT9Fm+6Dap63/v+6dNhZXAPf4yVU4Ygs0GJs4z2qr3nUjwup3Hyzb7TbmjdbzOS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgZyrczP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgZyrczP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A1C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756985393;
	bh=1MfFXKv/meGwUnwowUaq57bQCCtF0YpNBO1BRsvgHaI=;
	h=To:Subject:From:Date:From;
	b=XgZyrczPR2FZITfLbDjdBpFcyRwiH1FuIAHD6hxkLDxjT6BVveMp04kiU7SwgF8iN
	 JqK6wszLV33EfIxwFn2gAEszTG86auFU98yEL5pCbLVsRYPGiz9lpLbb7+3ONGoTXy
	 p/Toc8KDzRHpcG4cJvzuYpgUU95FWc9dI5kN34XhyI8m8I1yA5oAUiMwadnd9WwjLk
	 m/m9C096lCMLCOby7kIqQkhCJrlc9q9WvnEXoZ2o9P4JyixGNfp7nt7PX88J53cFBq
	 jYCES0IdG4ZHmmgz62CAFsKTA2Ok5zWRauemN7QjYDhe9MS1wdb4awBvDKJ5Gca1XF
	 Mv7SYb9a0731A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2CCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698539358.6341.10298656489942263424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65fd803810d98221958aa945982f8742b7c907d37a9628d7ec5d3e434f22e13
Date: Thu, 04 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756985393
