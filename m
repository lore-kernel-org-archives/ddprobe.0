Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291EE24678F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767080634; cv=none; b=nzolV6BMIPpN0N+S/MJVkKVCD+rcdPAplt7k0IXxY82jvkMdehG50XIZS1v0KLMk2YVVpwUxrcAsP8D8edA5L/3A1BBoufnu4hLffhzCqD6/J6rxyjtr8aGa4e33x0xpFx80NNboOTIUPMeYZwOPCgvvp7wgde9zW9cJRc8bauo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767080634; c=relaxed/simple;
	bh=U49A/h3Lh9XwfjrVJZ3cLHG2D8Ngoln3bhRVr/pVT40=;
	h=To:Subject:From:Message-Id:Date; b=O+YXfXNtKvNuaukwNyipzKsjHGTGgP6dDzdS3SxyxphC18DeEcYO7qkyBB4IGdrAzD7dXCRSPtVR/LMZPIrzBvIsl1DhTQ59dX7R7mI99fFacwsrmnV49Wgpmxq926wds9t8C8JULPyqoLUuWR0SkNFZ3fe391yw6gpf9/4X8z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1/fHBN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1/fHBN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE090C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767080633;
	bh=U49A/h3Lh9XwfjrVJZ3cLHG2D8Ngoln3bhRVr/pVT40=;
	h=To:Subject:From:Date:From;
	b=P1/fHBN8Ni3IFnEFMftD0nAre0Ek7pvdE8PGDVAGZf0yf2Os78yso2n1H4dF/oMc7
	 8om2IEvVailwU+d+mJwUjgtYErBMsoehiOB1Tl2eFk7KU6CVx47/b1JKysUG7AM47o
	 S6kKLM4hZImjkYSZEgEvVn+9I8fCxRnRbc/oI9rbIUgGCVWOtfQPgC7njlP4lmj49u
	 kNSj+pf5nX8MsRtfAUTU6ToePmqPy4Ls+Rh957x8L2Qh1+8qSpxWvDF8TEl1y3BmY9
	 vNhHKjL7oRxVX8B4fvBX0WM0n3nwP6LymLfrKmqNi4bQEOkpzY5kOA6jpidWYgT2X7
	 Jthy4mvVwTD6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D01BE94120
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708063363.20094.1399919325857214551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b963c3770e5eac54fc1ec34d1c78c89c8ebdb0356d124d6b1d76e7b06fbc1835
Date: Tue, 30 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767080633
