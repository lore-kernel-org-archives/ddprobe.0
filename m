Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EA440D56F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781742994; cv=none; b=DFWBQZN8U/0Q5YDO55tp7CcEiPAjxppw3LlrwwroSMBO330d1/qB7TiAanrnEU2Aix4sBqVGNDmUp7CIiAMIFWG+ALLr+gak35QHwMt0jZ65g07OvtebtCupx0vMJdSfxZLWBvjelZoiYzUl3+QZGO4K0P95W5DMTK7l2vNTdD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781742994; c=relaxed/simple;
	bh=ngjLh424i7Sh3Itw6ihC6cYffvHVk9PQEMsW0BnmA6g=;
	h=To:Subject:From:Message-Id:Date; b=tZFMwRwxuh5f704pRtShn9id2Xlf1+SdeOGl4Evq5Z9Sz5yCwwHR9QpPecacyqnVkPKF9vKU0v4aegkdV/TzdlIoBvfnSqOBvefbbirsSKBUQ9CJOil8HaSyyRv/0QwpMk7hRJ5/urj8UgSbu1sLfAsF20e665s0mHvZOnvzMRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmYYvstQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmYYvstQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E57CCC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781742993;
	bh=ngjLh424i7Sh3Itw6ihC6cYffvHVk9PQEMsW0BnmA6g=;
	h=To:Subject:From:Date:From;
	b=lmYYvstQorpd8LIiiaLMDvCTBcSIPMAivROchCYbHv9BjxAL+Ne8x9Qko7o00DRit
	 5u93vMpUjSDrt8rBFDhkzZEblibRvweKiHYJO3AFShI4XUXgB0v6TkTpsQkUixEDy0
	 vf9pd46KL9KUJHEPG7H+/ty5EQiIgODGjkvXci3DHWl+aVELztpJYBTKFiYVuf5KK5
	 X42a3MUt3jM6UdGhHeXP3NiEiLSpkFUnGI1rguE77v+2PIwTfa+shj9ZEMqeBFasMl
	 80DXY6hUihH03LmT0fYpsZrnHYIc2SbVVDLr9LlNpli+BaDsEEmNKY8NIHBBU1y4yX
	 P6pGk0i0pb+mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0DBCD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174299373.4440.12755408747165503405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3084c2f3f376821dbf4d823e1c71f63a47086f1cfd1ea801810cf45678f3dbf0
Date: Thu, 18 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781742993
