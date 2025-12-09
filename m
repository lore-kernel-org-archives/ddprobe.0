Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0DE0243367
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765305773; cv=none; b=FoR41J3AMW9iQ2gT3XUtZB82JSarZjXgEE63QRuIMD/17mzc4pXa2Jcz77Ou5jr4/O5mnPu+5zkdn6eqBcvP/KJSCpePQfp7gIeXe++lZl/QZNIlCixC+QppK9+IHZhv/Rgg6lwULhhqHoeymuwmrVS6IlwnPoiAvqAm6jmrr1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765305773; c=relaxed/simple;
	bh=XinydfqeOv3Dgr1AUizFOkWhOMgjDBPYRZr25D5dASU=;
	h=To:Subject:From:Message-Id:Date; b=WySChtosnjPtk8YchBwcqTNY7pxH95KMO3xP+cCx4OFfGBI1w1eOVv+pR1Jul/a8GpjlJ7dWVN6bLJuVlk4/e2XMsFyHHfHdLwyjcjPXioDIsaiHORoQHJ6b3BIeuaIWgjneHyPPkaeIBdyU3AD1u0bKoiZ3DsmZkXpRjTWga1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+6nikU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+6nikU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DA2C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765305773;
	bh=XinydfqeOv3Dgr1AUizFOkWhOMgjDBPYRZr25D5dASU=;
	h=To:Subject:From:Date:From;
	b=L+6nikU7xqz69RZu89rZgblA/gjyAHNHK5isalqQXLwFhmPeCbCXB8cHp4ndhIj1v
	 swruijbs3z0Cpe8bWrsbyXXK8YF7FFVR5TTAh/LTw6mqWQ4FMMhDmFIs4uJenl+p6l
	 aFolfW0Q/KqX4pEIQej9iF1gwZagVMSgNJrSZITpIVcwMhAfYYGCjNX+9sgNtrc/RL
	 MHs00IJyCfWuzwDUgwigEqm5m9VeOM1i4ItprLLkkK4I/PuzeBQY0WvdiH2Q5065r4
	 tSGW2J7XbvMJLzODfF0+VlLOy4R2bCSvu4VydNmNA1i6c3Dtoqe3VQowDuOLPAWTXg
	 iSq0SF+avRsbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F5CD3B98E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530577358.8252.11510295081816494896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afce4431ef7625222be892a4b5ecf71ac224a0d0259c2b9dc2e8c7c2a0fe2b9a
Date: Tue, 09 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765305773
