Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3448826A0EB
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760356794; cv=none; b=ownI4PEEfmglZMPSmIDrJJxY85fUrDvkoedlCYvwRbiYCLv73QACoFQ9lPeeuT6tcyVdsOceuibSkdkNXTICmdjws+GTXcoLJbJtXxp8yuVVAZGVby9Mp6OR2v0U1jQyN2y0EgMmqFHL3F4IrhAKwo0Rd4v0S/e5YL+cKvHLfo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760356794; c=relaxed/simple;
	bh=j0TgsbLhEhia+Mj6/cfpCqyCSANSIxzT607qRVsAOBE=;
	h=To:Subject:From:Message-Id:Date; b=IeZHLbYzVjT7CtJEJG4oddk3LnT3MnLx+wZcLSx0xgqrchKpz157RComss5i3Of19DZKbLZ+OiDMALrtV/XvWi+Pn4/0+5/4J4oYdAVPx/AszIcNIxg0XHvtD/lYo9Rs5vnh0iixC8lnGGw09RxU3nwG1FTTv0hDYJ56ugyslKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emIkdxaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emIkdxaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A423AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760356793;
	bh=j0TgsbLhEhia+Mj6/cfpCqyCSANSIxzT607qRVsAOBE=;
	h=To:Subject:From:Date:From;
	b=emIkdxaVWLAHbqan5dnaHHPPJK9w+wE+PLfS9KOJnEtI/z5YIyQ91/QVSHaTuIYRY
	 OD1NI+Mc3L+4PUVBKpOLPj/TWuT7FsiR3jeV5KnT5NKxo941hQUPLc/5IXCltD++NS
	 gViW9buRxSQAFOAsp+tn1/zIe0oTynR0V4x12EA42Wf79esAQ4h2kVlSdY0OPwC32/
	 AUJvXG+LZEJtG2jWJOBe7AU+lDQalhrRZnTXfqjg8TkAOyplW7ldaFzyKWOW172wE6
	 D5YsqO3mrZWEDnRTCglh9QTzk4fqRelB6Ni6jTGpz0J1a+dGtznqVQReWHbVUnVYGI
	 DPW5i/lOSlr0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE9CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035679358.14862.17247689695936486938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2643c5142708d81687dd26445f90f16a40513ea92c7853ec0c59e11d6a34831
Date: Mon, 13 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760356793
