Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCA53A7833
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773057293; cv=none; b=qnFVZ+2FuFiFFKeIN6use+jxYzb4xljtWnNuoiWGgOoDbYDosojLWew6fDvlf1F/9oc6dwcW5HkHb+66ms3+XItahQMDxXrp7tg/Dp/LawdGLOCqtFNACFvEOXSkzZp76yV4WaamdleOGNma3Y9a+4HDCp1L0HNworWNPUP0lg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773057293; c=relaxed/simple;
	bh=+e2XGg7961cNCDH0Vhnrt+oXv4ihQW+70iwmVzzpkhc=;
	h=To:Subject:From:Message-Id:Date; b=tVEd9n+nsCAbVH09AJrrhocuU8EluC8REDe4q4rIEb8gpgBeoN3KsCdyAjq5joBlyPPW60JWHbo9xBVFJWVwTKduQHO/nQF4tyA/vsWoWTncYJSqIdg/ipwS7P9Mo04OjETkbtlOCia9z3TaMMUIehUKdNywQN1k0sYzazkiZNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uK4SAsXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uK4SAsXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1D1C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773057293;
	bh=+e2XGg7961cNCDH0Vhnrt+oXv4ihQW+70iwmVzzpkhc=;
	h=To:Subject:From:Date:From;
	b=uK4SAsXgQ+2TZ6GkHTpQJUAEmPQpAdCq4ToUARw56HIwseyWAunufypDDSRD096Di
	 Z3lPN40ozfnRzh8yoJGDi8z/cj82qtu7SPIFkKkN1mrqxbylSat1rViPw0z31Kd0kp
	 4fbDZCxbk9ZRJEKu1KMcuXFergGgJgfYP5NgXwn9GcU+lR0F8Q0zELSyzXF7LhWYFK
	 1KN1CbcIv3OqLPl7xDqLquSvfYMh6KWMkqgZAGZ8ngU0fUwEk5S4fMckW1Ksb2vkIG
	 qYbKYrFIKKDS+iAWI6c0+iws2E2UM7kx2BWZLzPtNbLqdAN7jGlB+41v0xj+OKxWfq
	 dKgxf4kyHEIwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE6EFCD9D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305729357.14153.9150164297563302032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2778f3960e6d63d1ab615f547697466cbbc5da14bbf87d5f8357bd71adbdcbc8
Date: Mon, 09 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773057293
