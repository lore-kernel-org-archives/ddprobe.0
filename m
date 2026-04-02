Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3813B3AD535
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775173534; cv=none; b=ey5ZR8WZ1F11SUUf9OsRRtxmsKVPl9SJs8nfREojbhU/O5n5zoW4Wa3drVP0oYSFkLDBQLFx+fP+u9adT+rutMPAa06XvuN8wjjVenNsnZp80rh5hrQ3VSzquLPyuQ0sEKPnzzW+wYVqrbJmSMt+B6rIyvQg/YBedzvOhlG43JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775173534; c=relaxed/simple;
	bh=boPFVrRRVI/BciczO6g9F5G9M/MrHV1B7tMtPCdWguY=;
	h=To:Subject:From:Message-Id:Date; b=jvph4mD/BqjwYUr+9nQ+LnSG+KY6KP0TqZ8EccyyuLSEKbT4NzKwszOCXg31vB5fx32ESb2aqfKaIJH7+f/xxTZVYzM7bLm7hZI6vtfUipd9AzMem59GcRtg5OgNw1AvZN+U3BoUEpuDfpFmYQc82GAo3YZB+5BabgpeZYr+B0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZU2tYWw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZU2tYWw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D87C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775173533;
	bh=boPFVrRRVI/BciczO6g9F5G9M/MrHV1B7tMtPCdWguY=;
	h=To:Subject:From:Date:From;
	b=ZU2tYWw8Ivr98DSRM0o2AJ9aqjgqoJVO4L3O2lpQ4ZCwjZ5zLKJjJ2INJiQAKoD35
	 O3vD2Z9WS7uPJD/4TGaWKDI/4YUoig2FjDkBYRhP1WKiFVf0Ptz3uBlp3v0n0znb4J
	 VZC4NrleGbgPDtTGJMPkK9oVrnvtTNYqmDaqCJ64ZYf6BdW0YLlgg7piONV27braEP
	 xNlaqwn2q3CKtJNRVTItweBc6lGzJlHOlLKELNl1t82s+Dcgyrztej0D2u3F0e28Pj
	 xKMqYpmAElS9zjipuswsbQg6fJWjamkH0tUad20gqYQ36zxvsGef7becnv7eeL9PbD
	 BrjlgYkEDmqdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B099FD6AB17
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517353368.14543.8515934577909804978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e762dd6572816afb8f84a66c12bdfe95d0e320f53795971780f89c736e05e4
Date: Thu, 02 Apr 2026 23:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775173533
