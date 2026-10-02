Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C392E06E4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790941834; cv=none; b=j4mvNHWjyXhfqxdGEXrshSD14gjPuQzUCLpaSQGgjJPCYHbiZGzGPEiBL8sfpvGOFXEvIQFqY/g+5G0QqoexsI33gF+TleGZCoHc7TXdOiZjmdmmStjZioFgxIW6AmAYtCEFMdEHNHCAahRIDvD8B3k1njzebgRGiao6+Aa7Hgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790941834; c=relaxed/simple;
	bh=gkHFsjBA5sDHNlTvppHGlue3C3/guVgdVryTvPpG+9w=;
	h=To:Subject:From:Message-Id:Date; b=S6lBwylRMYPuNOWqp9M+vQVDrAybyYVh07lpl5+3UkucbPPxT/yEOKj+zKFK6iDq1ejMwg1A6yDVlAa/vPHPhz+K005XyXJ8ouE4d/Dn/tPNG1S/Ch66j7EIN8bQiz486TbxhhevpFXrQZ5t+Omc/mGgEXwQKM7xi3Q4erqejfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azAOF70U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azAOF70U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2CCC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790941833;
	bh=gkHFsjBA5sDHNlTvppHGlue3C3/guVgdVryTvPpG+9w=;
	h=To:Subject:From:Date:From;
	b=azAOF70ULIlPOQFb0BoMvbMhoDedtuGd2u/ckgZL04SEJraIiZhQndb3c8lyvnioq
	 /S1LZA+avfX/wPfv76a9N9H5x4iPnqkIsQTVT9RSmH5bJXBSw5sc0R/3Sl1UmwQVS2
	 7cFfKR0VcY6KKU485UpSnaeov1Ambd5MjoFBoISZFMcrKSlGqSQxol4wtyZhqyc/hI
	 VSg6fpuJBm+2YJ3ScF/GEEv6IpVq8gJkQeRqn4NdzPxoIloPRUjOG10TnmuAubUNsi
	 FIvwcmKPEHWNWUcDFKa1YRVtfntxqce8qUV44rXaZpT2OqGmPx3n0RFhfYDBSKJWx7
	 2BWNBDrAo3+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A943CCA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094183368.11783.1014278898454251266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f45d49ac59346223f1bfa8b84f2c7b6e3918a2c928795edf0d934e62d2ad01
Date: Fri, 02 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790941833
