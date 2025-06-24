Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46004E545
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750754394; cv=none; b=k+AaQTYPCuxnMdg3LgAECTnc+ukm7X3sS4o3ojWedAJO9RG9CprBk/tt70hUog5GDFuHrxG1CPK7XzdoZLKJxmFqya906DNdmD9aPMeESKVtYTlZeFb8mRibSVD02Nh7cRxL7VH9HQ9jddXl98RfJiDwUia7ZNYg1/LYDSzKiPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750754394; c=relaxed/simple;
	bh=xdn3bNrp/1Fd8aPLxiAXUA/gUqPBHMYIgUZpo7ms5Eo=;
	h=To:Subject:From:Message-Id:Date; b=ACg5Vkno3WOyoY8J31KAL06gFQi7ZBlADFrucLPBB0BewYvasXtjCUaQVi5HwkUjFf0ASViq2ksKSsTcgHNOsQwI4qjDSuLTbWsdba8wqRBhg1UyvrlYH9q08IMWItAdSOl5GniEpouLkaVeK3S4uZDTSHkQeL0/HCN9GdII+tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3RZDqu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3RZDqu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B581AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750754393;
	bh=xdn3bNrp/1Fd8aPLxiAXUA/gUqPBHMYIgUZpo7ms5Eo=;
	h=To:Subject:From:Date:From;
	b=j3RZDqu17Q7e6oGNq9ImpzsQUugxKlnoJ+xpcWTazg/XO9nv2CryFovlrWhU5UVsL
	 cpnoIaPDD2HjSm/gt7DrMdHaBrb178xHYerUq7TVx52coIelXxnEdsl8wbNcJ0rCMW
	 BSjUrFSNsLlYKtrAtZfZ39szeiRJaeW9gvhvYQJ7W1Y6F8HvvX+2I/INomqWkse1+q
	 T2bbNsj8sh3a1D8FDU4tWqNeRyUc0WUF0MOvYXWA/vsv+2fY0EU9j+fF2Fgi4wRsr/
	 WGGgVcu47+qGJjGm9wx0019M/+5uKiJCVwhyAOUKq/7eW0kYpsjq2lRMY/ltAwOjPX
	 zaNgmlLSGXtGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E94C7EE2A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075439364.28299.16614894083374698279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d334e234dfc72432ac7fd77799e6edddac84f49cd1e5fbf7cef1dfca5c9b7c
Date: Tue, 24 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750754393
