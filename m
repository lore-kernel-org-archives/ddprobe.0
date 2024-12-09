Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FF613B59A
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733769954; cv=none; b=F2kkanIAmWEiZE62CHiE+gDcgpoRrEzi286/Ho5MeG1Ndr3HO38I1dvKN0EESp3NfGkgmMzI9OXYWJvtpMkXb8aBsAi0obNT+IKNxp8Dt2kPGzKX75dJUFOz7bBL9p22143NVcl2uyHwJ5Vz3Zmt10rOg7oLVt97j4LQobMJzRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733769954; c=relaxed/simple;
	bh=bJzAuxIOIHoskqXS6lmPGSVQ6viDa0+J8LESq21d+cs=;
	h=To:Subject:From:Message-Id:Date; b=PqmAHdm2hvbPXp0Z+wOWNKwuBsU2347bjR5fBmH978UFR7it/ZEQo0S437aq+8WQ5CTInmW6j7HYZ+zNqw3NcuPNIrXlGcrLTAUuUm2us+PolgjfheWd8hkKXw8YFpaCdxcd/hGzbBOk9LPxO9EL0vPar0MCR/RljpntZR5pzaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyTJ/lSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyTJ/lSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3116C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733769953;
	bh=bJzAuxIOIHoskqXS6lmPGSVQ6viDa0+J8LESq21d+cs=;
	h=To:Subject:From:Date:From;
	b=ZyTJ/lSsB5IwItiybpSJ/dumArGIapQVOkx8cE/f9OMXffGR1BjnTlsraufyQWZF1
	 PZoPR8pOGZzA/BTZT2FbYgtKrO0wMIWNsQtgzwMV87GhUU7QsazRwDTXfql5wUajyV
	 jHDmIEqkEuQ9hVG5cKFnDCeuvfSzSKrmzN6MocDFqUSQLdlKnckSuNFPmEuvHPJdtT
	 +XMaYfnIewOJhqhMptfPo1poCK5C9390DuBBHNXEjM8036qosWjl4RXycMrlQsvSo8
	 gar22vXKXNesj4oFJKkQ419LbWtzUA+vRa0vKLS2M7a2HkQQjcSTHqkMkAIYABqKsD
	 JnY1Iyh5CgIzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C7E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173376995357.2159.12113647185619721075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6db4aacfb948ad125f1e397f24c76353e5f2a60ee6ad79b76ebe77017e3e69b
Date: Mon, 09 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733769953
