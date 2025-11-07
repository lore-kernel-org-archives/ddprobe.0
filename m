Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D2F2AF1B
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762484994; cv=none; b=mEZ56PViw364lKA6gUQHWmyCRQpXmaZB0RBUGasAhW+As6ZYWnNkbmaonoiiPObOIPr1FpVAtus/kPtA6Ier8xWMn1CL12PSYzqWpisXqZ+AgDrsvJ66DLYLlKSVQalFGgLE13omO6bp9NH5lo1XNpEiWlek6ZFZsERGpDjvbBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762484994; c=relaxed/simple;
	bh=ZEmZwjvxoffJZdSge5jcZf6SEOFNNQWLasOSue3G0YU=;
	h=To:Subject:From:Message-Id:Date; b=U25wEB8YA3aF2LTlQeuRUwQUrid8jc/KoQjXi151HjnBIzgk21j9EXPySAybBD/3t13o4eB+3e1xNUfpunfs2NzXc0WsOogfiZGXdNWGnvpjdqx8P6S4mTEjKLwneWQrlEk+jAp1EhAwLofpzuARR+lnf5+J+g56XY+pXKWkktc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRoXp1Jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRoXp1Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB90C116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762484993;
	bh=ZEmZwjvxoffJZdSge5jcZf6SEOFNNQWLasOSue3G0YU=;
	h=To:Subject:From:Date:From;
	b=SRoXp1Jm4giuWvSgGgfFUGhCwUNhUhQQGZ3P3ueTdtirjHJu/sBbjdZAMtTlicLWn
	 NKvq+T5UL8W5To3NMAdNasydUoUCHH9Yy/36OoJZW5o+x0AC5L9Oz776aZQioVVLrb
	 TIEuXd2VsdOpby3yk14PcN0T63mK+IQm0EDlJ6PuH3tT7ulqq+uhuYOUo0bWmNe8sP
	 tzn5a6hifs0w8vQGFntANCRPK5JAUTeQpUdf5etIwsv9g5VrELhuWFLdkDlbJx5GNr
	 F+q2Fvxf2jQGDFM9h2H6SsRYsW07ow13lNoudmctpCgXi1DRoDTrkNYJd3pfnI5q73
	 83JhVudJ8h9dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DFFCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248499358.16440.7105813572475997342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e228bd5bb1cafcc9ed397f4e17358b78b099b1a91a3302d93e3d1f758a554f
Date: Fri, 07 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762484993
