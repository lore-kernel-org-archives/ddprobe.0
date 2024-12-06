Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1EB220680
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733507154; cv=none; b=tG5zcyUE9EuGPVDpb6BY9cBooEMuiyMx6i30k3Oolp1OEAe053J65GvGS1rYbYxV2/sQBUBiRiFSIPB6Q9tGe0cqSK8oUwCyw8NAMHJ01AU/vF1LFml44aG671uSBn52Bd/Jij3NUU5sFbC2VNxnAcWWVzJ/Ga3O23zaIzEbtA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733507154; c=relaxed/simple;
	bh=fH3btB18M/LYk263ewjK8B9Gfk322sqw89TaXJX026Y=;
	h=To:Subject:From:Message-Id:Date; b=ZZa9whPKm2O267e/lsaqQDLQrBhLlBQja7cm79VlHR6AYRHvtOdq4eA8iCtT6x4uWGX0eGIQI1h+9+tW5GJPBIwiNgdRltpoqGkDX6lTKCSVx/AHQfRvWrzmYMzO1cnhnit8JMb/P12xHCgYgg85vWoUwx+isPpw3LbpzBLsCrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6yX3djq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6yX3djq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB096C4CEDE
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733507153;
	bh=fH3btB18M/LYk263ewjK8B9Gfk322sqw89TaXJX026Y=;
	h=To:Subject:From:Date:From;
	b=m6yX3djqCcDCCp4OKELZRhiEUstCsDqowFl6lGxNCN1E98jKGQ8tHER3DdF5THStl
	 FQ0SkiykM2N0GKnEASLhUsoX3idMcmihIZ4Q4c2RR4hz+d/eludE1TUBPp9yhFyGCH
	 y3Tkh1JwtAY6MTvzKUmmrKMJ7/Y8bR8RdvbqGidjZzNJ/078iYmkf1b0cSiAuf4Wxo
	 9I6F9akmKoNN/jeyY7heNq/OB+FNXth3d3mPqHeNZBN+gsFXTdaUYFTolj3GDchubE
	 H4vUt4Zgexa8nvBOb4ULwmSvSAu2apitVG81bdM/4PsXvbD6GGbSGq53XRrN2JK1Ry
	 ifUQfJxjRoe5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DFFE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173350715360.3062.5954790743069876140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed00701db86d7661d90cf462cf831d76b9388e483c2d37f2bbf717ce3414598
Date: Fri, 06 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733507153
