Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3310913635E
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746909594; cv=none; b=HwZ3Fe5/4WEGGYS/x+feW7FsAqoCu/pz4Jw/LLu7y3+nSzU3Ou1q0VkJlLqo/UcfwQYyMWsmXoKG5BVCCzaCD4GSBlGNYlWQynQP10piVdI1GpsUqGqLLcIeImlMzHAX8zUqlbzdDsArMFcytUABj1KP2odNGJ9w/gqP8nGDhxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746909594; c=relaxed/simple;
	bh=h3t9BPxdT4I4ZxxKeLNNtO6rjRE4RfQ5Es8VJ49nos4=;
	h=To:Subject:From:Message-Id:Date; b=RZNrqsfuD+DHKbKTVOIJHKHgTD6Y+XMxoK79ssnZ8sClryuYl0AILs6FhWrehRYpOpeq635D0KQxiUfAC/DCJXGtB3CDWZVO/niiPTg3n7xQU/vpJmIVY06cRbIVXExgmxWe4vEGDnNAI8Im6VwWM0p91dwLvbq9+80IK2QN3Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pD9zmS8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pD9zmS8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7670C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746909593;
	bh=h3t9BPxdT4I4ZxxKeLNNtO6rjRE4RfQ5Es8VJ49nos4=;
	h=To:Subject:From:Date:From;
	b=pD9zmS8YCErSScqq+DDy+FwvuSxl3s1QAieO5Vsi06uBC2tKS5RhmiHhsEoHO/x5P
	 uEn26PbC9CQX7EbN3u4tiYaxPzns2vWowLvqga+1F+5RqOzOK4oUcBfXoVvTUEnu+s
	 P4LnQ533CNI06XQEA16EzvGP/Uld/sgtnEtsl7OJOgLmm6J7UvKpBgAc5NCk0csJa4
	 wtf6v9nzzB4r7AJDzKz6PkdZe8mgAso4SjXQiqDZl0SGEWYElVHHN/EHnbTTeSq3UD
	 /sAFOpp8poTlamtAtF1fodl2RNJP4Cdh6nB6gY2m/tfVRzFWb92F/i32kKc8CUn/kI
	 6XACUdjDnBr2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91686C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690959357.5330.13594909027887134577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e008183929d78d5ad4f97c5b7f3ea89905bd9002184556c6980429e45f69ce81
Date: Sat, 10 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746909593
