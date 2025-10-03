Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248DA1F63CD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759474195; cv=none; b=Un8nDDl8hmUc6s3kTdSS7sI9ZYtX/m2ZxqZyq/hTh7xkGPNPh05BvXvCmTaa+DHvfORK6iA7Qsi83/oF9njDP7oTduUsJRr5IoJyA2EKPmc1KDgTPWq1Af3aesygW/XYxmcXV1v/6LtUQo9bTB1LOnGzXFu8WTTcWPlc0lRcIOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759474195; c=relaxed/simple;
	bh=afWV+hRVAs9fyzMUfX3aMgY5fIWUUllPWtuejPUQtig=;
	h=To:Subject:From:Message-Id:Date; b=Vgy7s+VJCZoGSK9/u+dc0kDtHhWSOb+rEk93fldGUgwuBNVGNAv428rp+dFgp92j7x2YOgo75aOtWHIcVzms2iG3rXV2gr6+yFXiCqGOrFYd9VlTYOVcaFcZGAIwwlwJvBN1/t1jZ10hfEK/st7ZBXzO2YcWKWN/050LzRWXLPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ahhp0O7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ahhp0O7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47F3C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759474193;
	bh=afWV+hRVAs9fyzMUfX3aMgY5fIWUUllPWtuejPUQtig=;
	h=To:Subject:From:Date:From;
	b=Ahhp0O7IDyB/dNj1EL8+teHTJTTNvrFbcXBtoAWhU2+PRUlJMlJkNCJQyaLf2oYy8
	 7vR0qnMxzrC9N+Y6c+FStUNHPj/LzEZwRBXZlUb36byncL3HhVDXn+3AJVi4nFsMnm
	 KWI2EtgoLgSY3VjJkaO6AqVZAEX4/nyEjsq2wr2+yzUypBUFs3gkRaLtOJwHKAY6sk
	 cK8993klmg8Z9R25yZGfF+cvSOtnb0fOqCvZAemuWLJqZxkZ08NalM7RIiSLwwnWxt
	 OJfsljK6mYpGLcJjhKzF0GiYuZbOt/zQIu8tJyFyirSvHSB7vfeTFbgHGjcdGJRRX6
	 FAnB1uqgEZp+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C99CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947419358.23895.13736254007269537388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3967145e935926ea3daffd8dedd70e1adb2c5993d64271bcc28f76949c1fa51d
Date: Fri, 03 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759474193
