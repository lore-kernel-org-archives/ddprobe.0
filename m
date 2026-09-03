Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB394DA54F
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788450634; cv=none; b=Xrexpjhjgvn2SQ9QRDazgtps7aHNN70Da65ZOJTq8RXEs5B7pyURYrscnEK0Ei1NguzFji1guZS1HtoAPQHVpsgdqG8xFJsqkx3Q3iaI+TxcKv2o601TqhWE8RbAYZMBNuWxdxeK9TjVV6LK9gYeAEHlKvzu8jbLV2s0DRuvymw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788450634; c=relaxed/simple;
	bh=690ns/dHGZ2x434gPmoS9HEPEwq4ArMDBkmMtXcwE6M=;
	h=To:Subject:From:Message-Id:Date; b=Gss5GRCzFemqoSyabVDOAYy0gIlGrJwFUZk8l3XTMQF7sbVNkS5BXxCYbpu+Q3i0IhPIVrKGZLL7uZ7cmS9wzVd1zbr5kFLButIw3Oiru6u6X6oiN6v1fEr4tJp7bcvqcQVngzcUh3ETjQUW+yLqv48ceppx7ZCAkJ0OUTfiimA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUsDEtvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUsDEtvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4173C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788450633;
	bh=690ns/dHGZ2x434gPmoS9HEPEwq4ArMDBkmMtXcwE6M=;
	h=To:Subject:From:Date:From;
	b=CUsDEtvfqn5Cz/8Hs+Kp+aehXOnMDO7bLI5TNsPwQL9sphtKocr1Q5IbeX2C1+m0o
	 d48nOXu85O7uuiLX2wFcSxVFp+OnHdBOMS8wCbrC80mg3Ucs/yQ5dIBOhfTRKEuotm
	 HMWqgNfl6EWrzWNDRSwaa9Fcd4MxPSz9NjAXogqh2MhRZjkvDZQtIKkYCMIt/fgfLF
	 2Xp8AcR2o4YaNp2h+jqduqxy32PurYDn8TGhbVbYrGte1TnuOsQKtdLSomwh2qHQME
	 5k2XNogGWc1OYCzCqeLQKkPgUN2UygoT7BCMc8fVZRIZ+opGNFR6XYJ5sqkoD0j0Su
	 l6ZLhfFolF9HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD744C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845063369.17130.6549777284767611710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d49f23263e26c2981eaf93352db8d1a18451a369779e04207a92ca09f7d286f
Date: Thu, 03 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788450633
