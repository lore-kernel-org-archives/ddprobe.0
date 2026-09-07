Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4753CCFD2
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788789034; cv=none; b=RJFIEfFCjqUDee2xv1JLqW4gvmH7wKLljvyNMhU1ofWkNUbGhPb0t3gs/cc3fx0mPpKJVvWhovVSQgna12IlmfyEQxshO3Aj2SMHTihDOkYAlbYsrFPrJqwokgj9ntnWV3eRzm2esFLxp/ax0SNjQAphNmrMh9oCCWnB7QcxjNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788789034; c=relaxed/simple;
	bh=x5aSOcbCQhFQivmkFuj6IJ7nETWRz/H9o23KCJyPQ2k=;
	h=To:Subject:From:Message-Id:Date; b=belaL8X2mRsfsPWq+4WnYDcFHUenmaQfwAoP0k5NtAwkNdlRWFpSRCUFsKLYODjBXzLjbr+YWliVzXv3m91iQn7SqzwredoEcCx4UhoO5CzG+qgYTSbnWKEOXwi+OIPwF9pOJds3FHHHYCDgtqYnboG9Za/BzD+ocUGAAh/70MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aniAtg1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aniAtg1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE97DC2BCFA
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788789033;
	bh=x5aSOcbCQhFQivmkFuj6IJ7nETWRz/H9o23KCJyPQ2k=;
	h=To:Subject:From:Date:From;
	b=aniAtg1c+KHlXLcCof9IqAHJmE/rh7OtO8O+1MXvd5mBT6nwPVvwcZvp6wpnhLt/C
	 XVr7svIgb2PAZPocNrpyjdKeY3GpeY6vuOZ5lw6elLkd/9BCWV1DSf0ljoeaUPBXpC
	 o0q1DUkrtM7wUayazfMPdvgkrlIR+iZhMFTKEJMAackT3NqbeVY3zn/P+OyWBn2h25
	 Ns9ERGOZ6YvH9C87g+xfFzymquDT4UEPk7GvABQAgpRYDo7ZdXKU0NARbWaEEnEeHd
	 /1HC58TYbBfo7094or1XrYGhsDxh9FzPx3CNITbtRC75FfyyCGZVXeRpSBANaxDxLa
	 ppAFsCE/+27bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB851C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878903369.27420.3194881503301726975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ddcfd3c71274f0048183cf63dfde245ce3ecf730a9a4ed91787e37d5e91899
Date: Mon, 07 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788789033
