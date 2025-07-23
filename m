Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2491F582A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753301394; cv=none; b=NuBOxbPhBlFiuGakFYM7n8pcqBbiCjLzVN1Jqrw1AZ4nEfrGyClENoswF/D/4CfLq8ksXQ8y9vxIu/RDNW7Z2V6N/eI4th/HOx7hxW4zuifWcx233CvfnwMlEMMLZ5zaSPv+g7R5KA+ULA/lTjXNrz84cnNaAU1a0uNXeLAh30A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753301394; c=relaxed/simple;
	bh=QC6wzKOrXq5/DNA2TK87REX1CkAp0iTHmULB8yahe4g=;
	h=To:Subject:From:Message-Id:Date; b=cottmN3FKJgoIAKf+1BLHF3UTHygWXCj4AzwQH34FeMUov6AVA7lti2wmE4wyE3LY6IzspshHofmolxt5N4RXMdEVuPWFOHu7xgxTDj/vBlnSQtzfIz7m6XH0RY9mclWyVJA6hQb6lLENTVhYjP9M8hBfFR0T4AVXKLsNXITEDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rkbm/3fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rkbm/3fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28AEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753301393;
	bh=QC6wzKOrXq5/DNA2TK87REX1CkAp0iTHmULB8yahe4g=;
	h=To:Subject:From:Date:From;
	b=Rkbm/3fd8XJxdnBLH8n5GFPMn6rPLJ2Ic+FloLLFbKICvoCUOhNdPfthh7F+4syIC
	 O6MgDr/puVRP5Y9J1Cpy7aB9Ufla4PfyZlPzmwBStpUZQ+WV9sC3K3T7XavAIPakRl
	 o8Y0KftblyxGqKab0mrNt1tQOJ6LxrTUVyq1HJI21i00gJqove6XJGMy/efuXLi9mF
	 hRqyvI+0ZHfebvxKm/Jf+ACObrZNEOJw6hoAqOeoPcc/gyBa33+lc9qDC2lD7wpYrB
	 1sg1gt5nAZlyKDBjVxC+k5fxA2o1LQ5F33gseWVy5+1eB0gyArr+/19bDPpiNenemN
	 HDk50vUmf+F7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92557C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330139357.31956.951937374946865903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878a460e7b82fb50768c1593d33cf7965f4be2dd84b559e0932bc27618820417
Date: Wed, 23 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753301393
