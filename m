Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0953225A338
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751567394; cv=none; b=KLa6AVADHQAznGixqGx6546QOPhjrBMknEH5zDd41r9Qj5iF2gr0kfXBWO1ILGr1ewJ6mkAMCv38NW3400ufGY0NX+dox+OdfC6EeCvkhgK6ChSvhf3DeXGyFl4QF5OwqM4Q54mkV4Y6tMaDEfZP0sZi9f065paRDiyoexKxOQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751567394; c=relaxed/simple;
	bh=naP0LQiVCfz97nr0OC9vIiGxkZrFwslDQN24mLRu2/Y=;
	h=To:Subject:From:Message-Id:Date; b=nCBz9By6D1F4F+SHbMtWKIr2C6l8lRXicPT0qTgBGqkVSZ5ieCHV0yooxqBpPTy8UfTmilGaJhl5gK91ZfOPWCRyQMr0wzT6R4ry6Ts7jDcroDl8+Q/wtbZDCmvSvs2W0DmLrCGcKowIhEhdFnC8bGvob/+YAouu8G2LIqBsE00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8vO+oD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8vO+oD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB3CC4CEF2
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751567393;
	bh=naP0LQiVCfz97nr0OC9vIiGxkZrFwslDQN24mLRu2/Y=;
	h=To:Subject:From:Date:From;
	b=e8vO+oD/diZH/jeaboo9aK0rjYwpeJwbeaWVvwYk+FGZGCRYx99xBIvuyU8TtjNqM
	 DbYEPjb/ZYLfd/3u0sZQ3KQ0YLWnHBNLzjkryZQXTmSbRnzjRAMmpdmJNHoMntq81R
	 nbHvF27VAOCerA+tSA7dODEFTMVeegs3+lJg8/6+3woVksQ8p/Wyir1t6+3AUN4ogc
	 OQ//TyDXAR9DJ0G+TNDy8DQEeUgC09mAYsf6WFlknXnzDiFIwpv1xxzK3w+5fNlO+H
	 0Fp4kXqPi4C2bAG1lXzTkRVsVaiN+gMSYNNQjbH6P5qjaGVcumIorLM+69ZUSf2CZ5
	 s6s6JApnuGZ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E070C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156739357.30206.1848040794180065737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6917ec9f6bbfab05c1c86d658d89e1924b9426552a0d7b6551dae1830ec3180a
Date: Thu, 03 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751567393
