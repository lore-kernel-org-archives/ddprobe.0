Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E34E339A0
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731339354; cv=none; b=C+hQYNYDfBsuhRRihx7c4M5r6cE5IKxz+uJkACZ6AmviIhJuh7JTJOcq0GMqQD5l0Qpn7tpSHoNWtobDEfuGYQONWylGBM2h5h0WpRKbFXWH1BeorlzlJtMdmZFJSJuxTUl9v/P8XgMHThH051p18QFTy3J09cydZ+SdQMG1ptI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731339354; c=relaxed/simple;
	bh=j4x47KCGb85pmXxzEJmDduOijx+fTuo5qkf3T271IME=;
	h=To:Subject:From:Message-Id:Date; b=rXh3hUIUW6sF+hadysMvW756ZjnOH/b+pwN5kH4dQPL3LT14dc+mTVvxdriOa80qxSFbV5gii+OlNCEJp8fBMAJOVgyTzjjedH8Z5DvuAWUgv8Y3trCVq5tyc8rL6nOqEtujwXJLlbo3iLsDpwJZEvi9n637YppdRe37JTegXeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOgIlwgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOgIlwgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A12C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731339353;
	bh=j4x47KCGb85pmXxzEJmDduOijx+fTuo5qkf3T271IME=;
	h=To:Subject:From:Date:From;
	b=YOgIlwgL6OMUpE+TrtoZ5McsYGL+jmm5cyD3Zm0snJnVI4JMQxwjnubdZ87GVD5Zv
	 UNl+wcDvAchMulos2M0091ibaBRJcITZCfFQzRXIvG5jXJ/8YP6ZMSYMibTJlfVeJ7
	 yeZKPNGC2hcBs6v9I6G8/Y0s6bQg5AqGTG5grd/KIsCOhdizctLlEpVl2xUqI/5deC
	 Gx0fNRFGGt0XsTh75CyG4ccWLVzIjnHvIFiH0FRBsPpbUl16jD2qLnuFlS8LY5hloX
	 4wAL4fya4wipsV+bNF4dqK7wCDwJDqODqKyNVBxK0bVyBfZ47PBplTTAeW4jWAoUeU
	 bpVf4f6lEVjCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9CD12D61
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173133935358.17342.12676876419505456650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc82956b6332d04cf2404081f9fa6a291c619e7b906de71ed6593d04d82a44c
Date: Mon, 11 Nov 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731339353
