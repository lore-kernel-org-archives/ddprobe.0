Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC792BEFE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757021394; cv=none; b=fjG7J/aF6I9oQnkL++jnvWvnoFX2zJQxTWiXEeasrZ6i0Z6wui9qVM1G0C8TvdyXpDg6KYKP+W0hHhcMeSnYxrKyk0AMgFnp3tAXwmPh3E+mGlmQXjMYWD4ZH3XU1p2+U7mtDF2bqeeMSIiVRaeX2VS/w+0qBsFxDFuUTLeR8ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757021394; c=relaxed/simple;
	bh=/W+WwrKzoVO26Tpr8Bx04peYCpoR2tgZ+WJHVpcCS9M=;
	h=To:Subject:From:Message-Id:Date; b=QyzrFwjDOw4xeNduAbmlWImw6ld/C1BoYC/tRm5usDwXU9O9z0DLZw6uxfQ3ulW+moyC4ulPWwBdSkCkcGw+G84RgbPqjN8Ncvsd6HYOoq563Wi/6yv0+1nIY2/Nuck1CoQPYrnHRhrXapSrLI/c1tVAsSerzIfKNQpw8vqTZ2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osSDiWhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osSDiWhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B78C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757021393;
	bh=/W+WwrKzoVO26Tpr8Bx04peYCpoR2tgZ+WJHVpcCS9M=;
	h=To:Subject:From:Date:From;
	b=osSDiWhGwr6/7YIoQ1Ldf0/S2EIFzeAKz2IhFQ+TBywYQWrQ/w4HRRWAvqWEIqTQE
	 fwd5VUCLA3gQd/S4/YGweHPwSfUzvIcD6PiWt1XurXqYjl4y06Mw15LsR19x/F9LgX
	 k15hKViWzTYxhBqQqnQeWmsEDqlEgXDDbcuW61S8sI5yXD/4yvAgtlTQjmqDdZ5O3F
	 QHarzDx94/wGWm7hZTG//B+YLyW2t4DNXo9hpFgluGKMBChLJvFRty4z+/Y+t8WQbb
	 DOV7Wr+0EQHExvqzM1zUYV4CPAjBHJXKDpAiZ6GBBHH6++ze1dkIO6tj40bqHwogzo
	 TInd3/1Srf4Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C3CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702139358.6987.12079867715664580293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81124262fcf631ee477e7a086d0c2cee9e68d0ae0bebcafa7897aca1b911f54
Date: Thu, 04 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757021393
