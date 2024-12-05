Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388D0202C29
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733398554; cv=none; b=roHJFmRmvqIE8Xf/c1BzsE9nAsC0LngE/xlfK2vJ5xXnMzRzvz7JL7e0n6U5I2zwnQ5Zu6vlWK67V+DrNAjS3oX3JGf78+cIREIvhIh3ZCjbPp7YzXXkhY8uEeHrZgxocHfp4uWKSekgf14BfNSBTApNF+hgI7N6oKpVzBv9jKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733398554; c=relaxed/simple;
	bh=Imz8wkbQyfDOsCfRKfUX03Qkrii9hyqyWK6XhOw44mo=;
	h=To:Subject:From:Message-Id:Date; b=U57TVe0XuwSHMERXci00T8TjBzeQD33UEjPGMSfCOZlY4pHXfiR/UeViibWcP8H7dRpy53KkmCm0ztxQrsRCEuy8N2w8Wvao/NjHInQqjijvExWSjskPS8etFv6Z5TU9IBDKgYqeTuE4ApKsnWGmzbhbHpaVdFHNGhWvmHbbm0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCutcDDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCutcDDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A214EC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733398553;
	bh=Imz8wkbQyfDOsCfRKfUX03Qkrii9hyqyWK6XhOw44mo=;
	h=To:Subject:From:Date:From;
	b=iCutcDDdZ1FHoSyDIT3kQGaiuHMOouhCFEiR/pPCTwDYKw8wGiWLuEIwQFZUPeAob
	 G1Sv69FBirY+Rghyv98eNc15kuuGBOC28sS9X1xsdImhmTxI7xJ03y2z8VjdcRHhUD
	 QK+DeJTW6eKNQqs5yAqpbrE8m/HJ6/vC/AKgSSGCKCmUcbCOQ1U6baYO7AntrTW3df
	 o/uKvGkS0JdKi3IvYo2aCNQGAE2HBUG0VCn8xdelr3vyopnOdOjZ/XitMJI/u9sv6e
	 cVG6L1qbbgD391YZ7hFQL3lmCmBSQPMoQN32+SvCkfZYNOSxvNQmbNYsfNszJGmGTy
	 FDwEVv/pnL1uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB4E7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173339855358.22852.11819981813628718086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccddd7c5b22fa6e706c1535de92f0289eb5f4eb2f11c9141bc32b16dfb4a9b5
Date: Thu, 05 Dec 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733398553
