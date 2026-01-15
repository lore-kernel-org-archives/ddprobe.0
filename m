Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166611684BE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768503834; cv=none; b=dvMPTV0rt88cdL3tG/MQZcFCTw+/UpDY+HHHlw+BZUchVQmtnElSAzyeNcNWeXQRYP2dli7c5o1HVy/mjLohhjGBFbGo7LqiWShS+cqH2xOMO+DsDr/Mu95xijhHE5kv6pmtYy7BrYPxXp7pqA68iYmOXYGaclL4sbe8D+6UFjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768503834; c=relaxed/simple;
	bh=vypfKueUR5pUFQfMYMRF+II7Wmvd1D6srYsXigCmOm0=;
	h=To:Subject:From:Message-Id:Date; b=VnXjOaQXi4i7PCOXOmFF4tiqlqRU2NfeK4xWwnUHvurLeP7K1Aa/4nEetTS1QnB1FmiI+qHkRVwaYiXRi6NtHl/1CnLM6UlYhjlQ5gafO10pxFlaQ3aVU4GWhkRnnr5DN9Qeeej71Uy8BBzLVmpTGd5H1frTEu4wUR77843EGYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jizJwgyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jizJwgyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DDDC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768503833;
	bh=vypfKueUR5pUFQfMYMRF+II7Wmvd1D6srYsXigCmOm0=;
	h=To:Subject:From:Date:From;
	b=jizJwgynRp/kHzwOgjnM0yg0EfVimn5qjxNeW01m76y8c2ysP2AwZoMpMkrMOu9tc
	 kle7ARP8OpUli87M2RQTXmdIGlZwonY9ffrbq/G22YvDEBemI0nzZIOMcnXio+Y0CI
	 5/ioeRBzZVcKSwZo79xCSi4qT3aEAboEmDsaf0Yn0yhBIGzNpvX6iZRIKVk5l79PBJ
	 RMMQsR7+Bw+jkseL7ZvwwPtAmb65lk5hOxmSJin9hvMAgpKzTjCbiLXsGwpYn8a8rZ
	 AjZNwMq0QaFgVXFv7aeTWsVoIJfzuq5tjQq1ygDDYMoIuMEXa170xG8smneNUVD6lU
	 Bmu6ChDOk8gkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B0D46613
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850383359.23645.2450535430903803011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d5eb014d889dafdb56d13bd7abef0c9771f0211b8a7d58951402489b500724
Date: Thu, 15 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768503833
