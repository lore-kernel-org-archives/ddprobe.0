Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324A648094F
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791395434; cv=none; b=jHZnZXOlUMzQ/rWAy1suKrTNujpA9TLnL6ci9Ywlu1/ijz6ZgpMl3EuyoISSsx9z61nlw6iYmhgkk+QsAnc+N+K7jewPdNwUw8TKtJBRckuIaVoUk1YIMfS2z1lSuhkL+3pM9+v0cqILpS97A9DNlP5V/EsBbH5AbDoo7I2Rfcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791395434; c=relaxed/simple;
	bh=7VTN3XyYWXzl7t+Aw9wQFCcR1AAr0cmvuxV3XIY8eeM=;
	h=To:Subject:From:Message-Id:Date; b=SXH5NyG04Eb+VVFxFoSsgYlv8fxZy5aZf95y2gRn4LTu2PpPZCvcKpFM84M1GKDL0xeZtCLtT+vKLCyszh1l41vPXsVhZVk3w9vJfyW3/QKcNPQWR96oVtlZ8xKz9fOQP5JJjHfnOjrs7ALc7vuOdjy5L9RoL0HbPy7teW7Ufpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBgSb1NA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBgSb1NA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35B1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791395433;
	bh=7VTN3XyYWXzl7t+Aw9wQFCcR1AAr0cmvuxV3XIY8eeM=;
	h=To:Subject:From:Date:From;
	b=GBgSb1NARCfIUcq0FX7hKUL/uopJvKYs5EU3hMf+/OuVSD4Z+smRZ7priacXD+udW
	 ASK6OM2wJ2aU9DL4Af1c1wJRAzYkLXTmyWcJArPTswUd0ECnxrxoBs8moaZ30gaJpw
	 kEsMN8S41rmxBQtUvRe9QakZYv19XQmotNorkYGrDtJXY9fXnvNj7uzjAR8oEr7suE
	 m1qv+QGXPbizu6mYQ6VztlYe0iUt02GsI27ksidxJfFqGVoQjFLlkPp+yZ2T4EyW3Q
	 iLh8rrWJVwoNu45Rwk0bKfNmSN5ULUPolxTmR2DAxc6UqtsNWIDPfHHNPTCqO8/Oto
	 BJht8YisCD8zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBD4CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139543369.14353.6480263750913095592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a23a1a1aded96b3d4a99ee0252a7a5e44136fd64dabf2b83fc072b76fa77a90
Date: Wed, 07 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791395433
