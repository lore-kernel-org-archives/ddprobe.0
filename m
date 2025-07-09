Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32544182
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752025794; cv=none; b=aReRc6QUVpKXoRwiFHY9smSKU0hVwMtvCztAeR+lr4C2uPuiPQTwgmJZi0/Wb09lJ7obbuN2+zEXEmrpjSRfB9FfmYYXD790pZwuOnNTEI2Wo90XrT4m8FjH88fMFKYncmsOGdjYE71561MKNqaKClU7PgoR87XhefnNXkndvXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752025794; c=relaxed/simple;
	bh=HzIzEjVMoPH3eXMRM04FBk3yThg1Jr3zEM5rRSS1i2c=;
	h=To:Subject:From:Message-Id:Date; b=oKJgn6GJarWCQi+H45pzlh9M/U5eCqH3HKCabl/3Vt1qNXzOi3tP5pfK8nZvd9N3iQk+JN4+uXaf0qxn00IMBf2kxGXIJSXtZb8ALCLR3Vr6vf6uoDoO7TTnkgXrziNMrqadVWVZLyRoz0wkorr6hayVFErcJUWbRGPh9UXqP5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzpiQGLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzpiQGLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E9AC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752025793;
	bh=HzIzEjVMoPH3eXMRM04FBk3yThg1Jr3zEM5rRSS1i2c=;
	h=To:Subject:From:Date:From;
	b=XzpiQGLbIcX+yuYG+e+4Wx2BnEQqv3PgX5M6wpqRaEu0nq1dWyjtEYkXWclzFgLEE
	 9ewQFD6ccVe8az8u7osA3V6KLgt1kqrQx5A1XYpOCnTBFULgo9MC89FQyxlOQvZwPV
	 igTLmh98qe20JB0ASMNRXH+4pwc7C8Q6vnsfHm+vBsxuEzIbWFnpXbDqvQFd99S4YM
	 CsRAs5HbYPS6QyOYu/iHqz7147yo0E+Qozy0F9w+tGkv7Bf1nbaleTxDcCuVnaV1ce
	 2YReYAu1XGKLbYk2IOPWAtg82eo8zP+UrSnkzjdaV1fEu3wexRGZ33cv39dwekjgTm
	 wtcpnP1D5oNQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E0C8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202579357.21569.17567749641427250186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885433ea64eeac83c5ad974f513973a2cd4654d703c0d931c8eaee0da70b7c3e
Date: Wed, 09 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752025793
