Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124F030F549
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771629894; cv=none; b=vFolwrU7usD7KGDjcc3tJzgkFjgzObtL3L//hlGwVWtP1MlCRnxdw9hR+Ven0Viz6yvLMGAGbchUoue7AGU9oEhlQX2SuVyIN98rNT9s1TE1SUMJnkvjtjzLZUkId0zvmnTGrDPagu6FDw5EwoKi2b04yG9yoS4eMeXxSyjJXSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771629894; c=relaxed/simple;
	bh=IjZzEXi7zBFahjUllFYPn3MJdFoRnCOx8QjtXDFco/M=;
	h=To:Subject:From:Message-Id:Date; b=Yw8fw4JdGnmCWzzFP0qp3VVCiUT++XH6UWqLykEVdeJznniHf+4DspkRD71ifKshYuV3XrQSrpsyWMqwPIdfW6/FTfERgpg5mxTZCInME+jvQYR70O07oAzKSaWpPlIcBGDoLQ8GualRNU6LIzL5rd5NExHLPU78xrF8QSVjGvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p91wKYub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p91wKYub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD51DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771629893;
	bh=IjZzEXi7zBFahjUllFYPn3MJdFoRnCOx8QjtXDFco/M=;
	h=To:Subject:From:Date:From;
	b=p91wKYubGv9usYdySR4lQZkNMzYMfpZcshGGqmS1gtmawvpefVR0JlfFMUwtmV/zB
	 gYwB4GICSqpW0Bm9GBpGAkTku0F9SiSwaxreSBVuuMxsGey0EL53TW1/fz3y3vWcUp
	 SMQcUEnA1C1wQw3AGv98U8PYOyTjJvA2tox2bWpmn/h67mvagqpZDGBGyLd14h17Dl
	 b75T4unoTnqn126heGi8tBg8Im400KYKnbb6WUX9EZKo5y+GF/WywB3OyuqC9S1/Kz
	 gUPyqYlJT1G97alileKgh4dKUt0I1xip6V317JdtJGmGJsCL/UQczvypd8Q18ZZg0c
	 rpPj54o+70WDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB8AC5CFEB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162989358.2497.4756203462171722116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192192bd1762118bda73d323eae28934df81abd225327d8b1679d7ced4ab0da5
Date: Fri, 20 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771629893
