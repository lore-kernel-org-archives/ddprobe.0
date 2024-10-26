Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F54513D521
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729970754; cv=none; b=Knm2W/7oC4j54qYrGVfIXPLJmvP1HMb50Y+g1CE3wZCQNR7he4epoRRWIfHqG9o7XnOomBIwmdd2LScdd8GihJFFClk8X2ZF7mSSnHXuON+FWQg99J3vXsW2I/myAx7UgjjEgF0oiZ4wFOaPWG4QfHRnCQiy+Ai161VkzHVVTNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729970754; c=relaxed/simple;
	bh=iZzKh8oP9/5ifJxe6E9w55oMiXYoqxqoHq4/AL2mqKo=;
	h=To:Subject:From:Message-Id:Date; b=PRQO0SLoSgs1pCtrhTd7rseCuMJRzMDitT4RLyrqHrrwst/HNCD/3xzEMqAqQYq6mNqLbeNwObhPv7vpo0kgFCjp5+uCd8XeO78FWQgiu6+TripqOcuDCnvlHveTjD/kNvlAI/ScSJAoHS+XSAleZsnxKtv0IfnCFKVMLMuXHTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4gxpxuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4gxpxuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B35C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729970753;
	bh=iZzKh8oP9/5ifJxe6E9w55oMiXYoqxqoHq4/AL2mqKo=;
	h=To:Subject:From:Date:From;
	b=G4gxpxuhTjflQKIIBXI0RSuDsfYhRtZ7iQOQkfNTawWJav1GZjEXlBH7eVeBmHzfG
	 WqvyzhQy4q6SLBpQ/xheAvbNvE2LdCBm9gDdESY+HgzO69acYqcvqZuKR3mBI1pTly
	 seL7tCuaUY9xlYEo7qM2drRWbI1MbktXEVJhDuxIqJNqgliNVxK99uA0sAUuuIjKG2
	 qOK3dN9fJdSeL9pn2+nh+Q95laooL7bkSeFP6hqcUy9e2N75lRUp19rryMsorxn+mC
	 nuZft5QfvxNVT7YE3+fG2rrZSqEdIqrO4x6gKYhLNdSXeXLmxnr1n6hXKOjlpVE6kx
	 7LQlLhOmusJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95070D0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172997075359.23123.6373998327281683764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42b996b5b9978e85f537342b1359cd3e95b13540f2dc3c63ae700295357ce73
Date: Sat, 26 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729970753
