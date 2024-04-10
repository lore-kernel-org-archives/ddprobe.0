Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB82BC129
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712729297; cv=none; b=uYFlx77jS2rlhDLlfEICy5mb0PuO1YR+Nxi3Ijj/N4cWjTKhRECv0gwq8mCJZ2wJau618y2+0I8eZqvfH1TcaH9iJVJ1bmttwRmz5oDNVy+XS4ZOt7XHIEAwHnuGkkenhhkzPP4W6x3fhU+xM0CLFmHDA4EcqtvTtDZ+z/bXlcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712729297; c=relaxed/simple;
	bh=s7LXvx9w9yDUd4ivprU0xkxuOSG3VZy8FnBzXhTwqhI=;
	h=To:Subject:From:Message-Id:Date; b=UWcBNHoo4wee+5G88k72hiS8TiID6zIdYq2PiUvZH02fChojWC/Nrl2qxynKxZ2aenLwZ/MKwlOWfvn+uMpgB23+0UCa8FgqbWr9XrkN3sYAv7WluOKnJM46XLdSscXwmseNC8WZd2qk12381wg1aIiVyc7UQ8MSAcX/0XbeoYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smfmKe7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smfmKe7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F016C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712729296;
	bh=s7LXvx9w9yDUd4ivprU0xkxuOSG3VZy8FnBzXhTwqhI=;
	h=To:Subject:From:Date:From;
	b=smfmKe7AEVrInhjlT1auHwbe5SSdQPdh6gmP+aM3gRquF2nv43CmdUIcbmfJni5Rg
	 h2Y9CCKQDa17vNzaC2u02sWD7vIOsnQnSUMFi2XJnghl1oRvYdrGo04d85X3spLboI
	 4cpy3FzRLCqCYBo39RFwJgxY1879xnAE5AbKuoQYRyMo//jwgc36q8/2ZnefWIIiti
	 97wb9irm7zi35k9BRc6N7ns33NJdFFTNadtA226JHBS7o5E24Xhp3qfUegt8x6Ql12
	 fVlHZRMw8+kXh6WCbnw1teIdhmVPyQSEqwnD8vEju59K1YWKK59hGnUhDUzJXyY3t8
	 WWkiuBZNPJbOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61138CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171272929638.21809.12470734223125542838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478769c617f4fc6feffe824d573fbc7303ecddc6c952f737d673b0f227f741b3
Date: Wed, 10 Apr 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712729296
