Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4353D75AE
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772653494; cv=none; b=uRjuOBzSPAZJUPLWEQQFm8IZuWuOtvnLLKNgwzp5rDXrAXxFRGuEjPi4jm6LMPDyAYU+S7E02tG2h6F+mE5DeBg6EDK65UErqoMylUciYjCNmRB1HL+CKy8jT6ny/oUv2zefzjCZi6A5RoAxrdU4y1rpHm6EGurDrD8cOz/6iUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772653494; c=relaxed/simple;
	bh=dkIBkZAydHP14widxRyNpIOpVOOPqat5ORyYXJ/5oAw=;
	h=To:Subject:From:Message-Id:Date; b=ZWN8DQO3PcoXCK0PJox1W/s+dEcyUSlOHlTk4YWLokPaq6tIcyzohB9bNMcrNj9lmg3D6sGd16Vdxs9e0NyQR9VH5JtbRWJXoAm1EvaJ/qw6K1zAlnpOtTrWCTtymCSmB4PidJ86uUiEbin5hLG9zSvXOxDfRGN0HouWhCVhfEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOLlS9cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOLlS9cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A7BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772653493;
	bh=dkIBkZAydHP14widxRyNpIOpVOOPqat5ORyYXJ/5oAw=;
	h=To:Subject:From:Date:From;
	b=XOLlS9cvErVvn1rXrOHHRW1TXJ6GThOd9pX3UmbPAxHnRlAZruqNmwO81tVDKoVqg
	 KQ+jfg3PdXi6otQCpPSSpitzQqth1RTrFnBAzwG7PKmP/xiNpx/gkqg7gxN+1et8z/
	 B8mj1hYIxFd5vWeajs4vUiwmiHVA/R35OYKiw5QEblc5gaH7sgFHjDBZOjmddkd7KN
	 +LmNjqhQZWu4wsCwSsEKXvt216bLNrwBZeYFqVGXENOGzYf6bQvR6cWQ1DUNCNrSTq
	 JlkPDjSl9SPwqa6HBRgRy9+hvwv0jcMZkxfUJwAuPJ3cePh5/SuT3Kx7f22iCnRxRW
	 3VYmBWQ+shIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F60EFCE41
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265349357.965.4666433065537183089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f818a79c04e0ddbf3e5f1a662faf6f5634ddc22a7e0700b48cb6c32b668cf21a
Date: Wed, 04 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772653493
