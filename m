Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8981A2C04
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781225194; cv=none; b=k7FdyG5N2CyfQ3Xp0CranPhhx85MOPjuhBVDJ7I1hVFV+RatuCumOU3bHFF3nmybm3b7CM7UDzS6njOoDadSHcM5PPfjAmdXz+yVapZjalTYo7SpV2qprfE42Dzac1r/0zs6tfP+SDKYWe0x9rgmd+l3WsYksLiNWNpXoKNJ3QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781225194; c=relaxed/simple;
	bh=DlVf8oqXTalEpt7AKXgX3Da9hJSQjrG8T00YiaZ180o=;
	h=To:Subject:From:Message-Id:Date; b=StFrPpBUJSs4CKH2Bep1EADtAY1q/HQFxjeotDSbDaPbeJMLAH7FDN1LzVDXVWPwmiPnNJPSKQSlJg7deOQTjXn9xfFGQu1yS2yuufghGaJYYbNkeK2JaRaxlgVCGOXH4iOgrNMfO66e4PJq7zFP/oA00HWo2j1QrivGcsNB9bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RknKRY++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RknKRY++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AEEC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781225193;
	bh=DlVf8oqXTalEpt7AKXgX3Da9hJSQjrG8T00YiaZ180o=;
	h=To:Subject:From:Date:From;
	b=RknKRY++Qix2EvS73kvKKUMulBZ0+yKriMudCDXe71R+Jcul6FdxGRo2bVX0DF8kU
	 j/14fMV+C9WktjGv9yAgc49GM0j/su0IRxx4h1ERQHxsJNnsUxvNZcNAk6qTzQ5Nqn
	 crTNj2RVAbRMjIey4+Dq2hHoJKKFqchvPvBKC142U8bva4xVlZvn/3Wj3qeDZCIvcl
	 JN8sWFuy+FDD5ABFkjidKHxCvH3tFZd0kPU3BUWnwevs2HoMtOQb1TTT6B8rhDKiTY
	 QAnIrJ2djeNcPrhLAcC28hn4J4c766NuqyL9OrZvj6AFP7CUJ4HHlmIcFIL6FkPPr7
	 tVGAb06BTNIbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6519CD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122519369.20736.4468647855515236512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893bf17bb4f14c11a868d16837609917ab7ca5c383baa00bca65cde430addc0e
Date: Fri, 12 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781225193
