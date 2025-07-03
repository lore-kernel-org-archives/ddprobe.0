Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055142EF9BD
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751555394; cv=none; b=hOQK0mK/x+UYOvzR1IA/LLCDRh6R7qw/yWrSCpXh5j8ZOkI7f7h/PTdRFEufRf7pL6mOZELlBy+a/UVSs69N2be5YuFNDtHuUI4TxjfIyYvw02JCykTsaQZXOjrsuJ0P3lqyIxJGHksZonk09NZlXl/2znop2/Jw09RydubBw4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751555394; c=relaxed/simple;
	bh=GUBGgdEPz8hg5gHzRzUR8A7krxoEV+KNEC02a/gkLMM=;
	h=To:Subject:From:Message-Id:Date; b=mQIv4klc4sUPenN9u2/hSUi5r6oYSILCCqm6SGm0qljOr4upgJfvw8crCu/42m8J4GU9ChfZvn6ds4BBsN3PD2oNADGc2WKLGJvehrgrscq7RgqOT4bdZ9DD0KRx12p12k/CknjFBgANzaUppKFeCqUMarNQ4uoFy184j6i4Wfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmFPZK8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmFPZK8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA82EC4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751555393;
	bh=GUBGgdEPz8hg5gHzRzUR8A7krxoEV+KNEC02a/gkLMM=;
	h=To:Subject:From:Date:From;
	b=XmFPZK8uJv6DM3PEbo5aeKTAPUJ6O+VOPFcYPwGmotoFZxe8oFgJWu7F+7A7LFYi3
	 YWt9GwDnIndv0rEjO2z8zGPu1HBHh7m5i1YsTXNJxyrkFPp58ycsLr8RprX8q8MfPU
	 lHU31LmpyrTPVApRw8jMIUrcuUwqjpsqVQMAOnJlS2euo6jTiX30k08aG7VaSSXVex
	 UPYQnNk+aS360NQGwM7bw/V3LjgXRKvTlvHBl/wxyBqScZNyPFgCf5SOyHmGBixyS7
	 MWML5kV0Ha4jdNxp79fHcv7cwt4BxR6N1sq15rl8txiWnSgSgEBjGwoHiTAwyrILHx
	 pMqiNFP83x0bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5AFC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155539357.3020.7456813632013448464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6bd42fb64914462dcfd677897ba7c9f017dc8945bd271d77c6c35e0a2809f8
Date: Thu, 03 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751555393
