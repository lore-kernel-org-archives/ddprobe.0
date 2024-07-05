Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6903A8CB
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720221323; cv=none; b=UFPvKYZ59yn8SQ2XDsSD+LiGPIQOyket1CEmA23QbthvULPfJZTf6dhWzg/y2KfRWt65qzOw/eXVnrcsCwODFAwNz/gelnuFJRS/duJemSYRRZM/p8f81pD19m/Z9GAmWurrCeQvmnkKehsKUoU4tMArRvV96RH5N3ZwPLPyYqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720221323; c=relaxed/simple;
	bh=+TZUWnXgKfSjz/hrrDoGrQuau/rVc52f4czV2dwlrlI=;
	h=To:Subject:From:Message-Id:Date; b=XeG1hlJuDmWmU+YePB6IyPIsy+zIeMHci1IIbKKp4HILfypTLcjj8QGgekXswJ0vMZdNtlzVWuaFomR7v/ugV/GQgirMw0VGsoXMxDgEqgOd1lYVeeyx4afk/3DjscURGisgc0uXKS9tkR3aVZOektMEuijElDcMOHxNkTmCD5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/X3SAUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/X3SAUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA44BC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720221322;
	bh=+TZUWnXgKfSjz/hrrDoGrQuau/rVc52f4czV2dwlrlI=;
	h=To:Subject:From:Date:From;
	b=o/X3SAUnK8jO50Kh610nn6V2Ipta3oHlMpjPIG+tshcA9ODJ5giItsKUTYJdnI3X1
	 vQG9CVkWgaIueUcIP3CLPXdxJP8MCKAmv/qlQAcCY3dmAARqhkK+gzgXaEMoJAmcve
	 eEXvqC0KgeQP2I1+hNMiPA15rA/mNx9871QYYkqp5InXqQQNApyDxTZSg+UBuXc2tZ
	 fVHUgFXrR8F9ZHcpFzFy+1DbOgXta9AkzTtbQD3VzYB4XHt7a7hEheTSIAWgWWUMQW
	 Ldeo13B4FElzl0cAa1vgCumDdPLZ1LdI/XfWUhBgbhLI04L+UJpUzolnVJl2eEXAPd
	 NJyBrYfVQ8teQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C287BC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022132277.25994.17894712814584881351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a01b12bd87433e561d83d2ee3473ad2f25b91e9fbfc7e1012a72f7b328ef7f
Date: Fri, 05 Jul 2024 23:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720221322
