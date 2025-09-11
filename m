Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB0A32274C
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757594993; cv=none; b=Jse3WLSL0rEeEXEzcdbasZFPUp9ATs78udkiD+/RtG+P4T4xoJiPlRlUP0s40/Cb/cRTemirwTG4EAQU0UI8a5U10AOueeG03ey3Byz1D+PFY6oQqJXWJvE+ixVLD3Kzhr83XcU33f0GRdqa/QP3JtZguM9XESCEOaaCzO7Yz64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757594993; c=relaxed/simple;
	bh=4hbO+XlxwsJmIiPlCMQ58ebzlfmKwc2q5qiB1M9euGc=;
	h=To:Subject:From:Message-Id:Date; b=FYWmX915FPIiX8q5s6k21nNmGucbUSrM+5OHF8ptbfy5MJ/Ux36SvGSw70xFeEbpfs5OxTznVC5TsTgOcsVsmdDP9vwNEkCIPQ1fwI7ee3iSyNQ8sJhzJriwzjXT5T6LbtKY7oFK8Kws/Xuef28GJDq+ZgFdNGhu84o+YZP357I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dExqAnLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dExqAnLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6DAC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757594993;
	bh=4hbO+XlxwsJmIiPlCMQ58ebzlfmKwc2q5qiB1M9euGc=;
	h=To:Subject:From:Date:From;
	b=dExqAnLqxhj0HKiZXQ4s/i+gZ1LJt3F8I8b+ZT00hzWjpdilv/DXDoDbPG/kCXro8
	 46J8N2yKkLZSJwvbgpIwd/ttLKQed7c3E/sjBZHlW3iTKK1evAhj95IVvrWDfHC2Ka
	 7+PWiJp6/lN8AIuNATi7cfmfOdFwC6inPgXa4skUdnj+d9UX3e9nTDWbHleHi1/hyW
	 Zx1LQjphhHJTBj9YiMqg2jN7m7hSaY3jby+RT/BZ8/3InKnwTKYUxy+jaC/sPNEtuk
	 EYcaguc+vjjxf6UtzhUcZl0U72c8UIN6dEvEnQrfcr//f7n5jnuDS//fyN3xwDi+Ld
	 CzTSMpma9cA+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE5CAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759499358.21379.4825379739244571819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc2233f81fb44a74da804d52c56b475b06fdf552220e02a8d8895d798597204
Date: Thu, 11 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757594993
