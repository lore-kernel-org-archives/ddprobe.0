Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B74D298C15
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747077594; cv=none; b=txziRAZmdTwChoehgK3gpm1UmeLONjgW02zP77htnVWGPW6hGyjjoa5Ix+36GIF2iohP9RU6UxIuoLDyjQpUf9QgIy+SYRReXYjfMmqu20OIXSIFq/3yx/r3K8mQ3J6xRbsN0fpCqXpwsG4mjfSHEhWDGrtPNXFLXvONoUqyQhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747077594; c=relaxed/simple;
	bh=f3c0U74yChabKjow0fpB6Hdg6w5uwn9+YvjQcl7tXA0=;
	h=To:Subject:From:Message-Id:Date; b=VDAF5CAr0RDCj4v8bFbGVacNcdhozJ/6hDpfuSrladvcYlDXqHRr3zDute9OdPoA8xtre9Z1kg2QFITVOmCnGsLSTSC4tZ8yJqXOyI9EfktbUFXufW7Ik2a7iiMlYP1qyjbEdjBOgmMlPRBFqYonKIbQWwCWkmfHIINFP12uDr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkMTc4m/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkMTc4m/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0C5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747077593;
	bh=f3c0U74yChabKjow0fpB6Hdg6w5uwn9+YvjQcl7tXA0=;
	h=To:Subject:From:Date:From;
	b=KkMTc4m/slVahDYYRNUc1w8Y2DklnkzbfQdVKRIpoR1rNO9LF7TNileMOIMxZjDnU
	 FVqV0AnfVCUhQAZssqSAkAgYpMmjHTfV3tUsv/Pssdl8EzCZ+KwExSErzEHOfFxjSo
	 dFupAPS8SIUBU8kebCFJcP/UdxLKTeZKHUZLh/SHI792pvMDoVx/cj4Z9ppN6szBWx
	 AOOw718IYy4TStLJ8txdWWNy/yDzeKbKiNlvWaQyqhrQ3Rjg2/u3Oe3qpX+E7p+NlU
	 2F1e6STFmnq9Ule+97+OlBfaJWHIQdExUQms7AK4W2WpxAiviwVenZxPBMAe0FkgbD
	 FuacgRux5t9bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F6C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707759357.21402.17698727611595295635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e336883f6da9fa7d2f610369ebe4dfdad45ab1b0c7da9ac2e692b0ada082f5cf
Date: Mon, 12 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747077593
