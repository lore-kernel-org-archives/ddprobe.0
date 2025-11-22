Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3364C2874E9
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763847714; cv=none; b=A/F5usbOGbuAuGq0eyuk2rBj3Rt2yLeUxx8dg1bnDusoGY3wNusK1NZufMwGuoipgHRS3JdIsWninL9Oz+kOjPsSW/PUE8LhvKRRMR2TQ/XSQHHno5t0QAMDtCTnPHoZQRFXrK3TtLxrrf1eEsGwkVm6InnAxCeGArmahMCVRV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763847714; c=relaxed/simple;
	bh=c4uSTso7ZV91fGsI3DbuRoD9olvBj+i38JLC5WnUpxA=;
	h=To:Subject:From:Message-Id:Date; b=P/o9OJzHj6QsxLkMr6h+CoCp9I70FyYg1P2/4QYI6kfZipwCbzcLHNVNCiZUE64anJ20kgqY9N+oFj4TCg4X0cSJ5wnURix5pfWyHfFX7tp2ZYhiB2cC7zV/j1dl+NOhnCJTi4bVvoOguyzEBItByOylfKxb567hnzP8aNdEuXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDpJ2Sp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDpJ2Sp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB546C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763847713;
	bh=c4uSTso7ZV91fGsI3DbuRoD9olvBj+i38JLC5WnUpxA=;
	h=To:Subject:From:Date:From;
	b=aDpJ2Sp9/jsZWsfQkGGINOqpd7LRoVH30k8SygpzrrHiVWaeMI3HZQ2Q1+AEEyFr5
	 5I8lEgN+OCYT88lt9I+m2w5LtQAramkAYk/BaBx9gVyGV6wlDLObo/JWb7wxf6Ozod
	 SG25gV3kCBwKYmVLLfrkAoX7QeBr0tHAFwkBib6ou1jOnmjE2cWXPVRnnRpFpwZHU0
	 jetk8sqEXa9wZOkf+7xOUPdzlI7pkgjspZXrulPByuUB0vjJRmu1BHSTGHBIPnI5wu
	 3JEDxlLoWWZl5KyngG+5LStpd8tfjItImlFsUBPQc21JoLjrtOa84Bw3dTcnscY7+D
	 EzLA1a2HDxnOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981C3CFD2EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384771358.19043.15913704852612930944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac7a7864a4df63f0da8d44b1ea9f1b5e5ea2f7a44f1b6c0ed3613a975347956
Date: Sat, 22 Nov 2025 21:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763847713
