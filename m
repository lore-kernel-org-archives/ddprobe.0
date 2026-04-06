Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D40430F924
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775502934; cv=none; b=QK+JOOHW1yNzYQapNGtluNIdKnHmaJPgHLTYqLbs00ACrg0fedvxP+eGiM5gBai6P7YJ1+dcPYh+kybU5DQaNN7N0LtCTJ564WwM+/IAieTbx/aRsyUt2Otdu7sWpQ8QV/YVb6m4JltQquvUb1DJNlpi98zEUJyWoqajdOM2LnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775502934; c=relaxed/simple;
	bh=df/mcAbphZSe84VD+HlJXWR4qWiD5zPaj5snNFxydYI=;
	h=To:Subject:From:Message-Id:Date; b=fPNQNyzQmeRyVV+g25hoN1fhxe3LMbPfdaZhxAyBhM7bW2/yhXg7SrgY2AEaxIGV7oA7SHdhRgvz1oWutbE+yfZhhFiQfv4+g7bU3ifPBuyUkamplM5jp7/CpPTTCXzS7mEkfCTgNDTYNJrGZqs/aB8LeeSQdwzpVI8fXDfso90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbuNWz9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbuNWz9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB956C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775502933;
	bh=df/mcAbphZSe84VD+HlJXWR4qWiD5zPaj5snNFxydYI=;
	h=To:Subject:From:Date:From;
	b=fbuNWz9vqB8LMpNXULQEZkJm61Syu67pZ4QvMQOOQwWmg7yoCYzqwN8I3Lsl3BO1R
	 H2/BA9WaU2NMJYJ9QdLGGTJ+GeI8WX2UQml97mxV3yWP++uA+0weeX25aslRIOHkMt
	 GIZlApDcrUwXXtPfKNTV2ujW878lOP1qjdAFKTJA17EWYVbGXirFuDguV+c3aeWTll
	 L/RzBgcT/UyINEelG+oRaIVqEg7FGiLwBjKHSk04/2u9qKfUZdpMDmeORlBmzzonj/
	 7MQeshqaIQ8GYe43smgxTgImDFXdEBYkpMunjws0Wsg54uNHUtCKWSlHmVGnJvlR47
	 AHOY1bPqavxkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA24F46C76
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550293368.22597.17581240168940069273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4edc5dd96ba794fda6dec111481dd54784b4c52228c465e3567d5190d71370
Date: Mon, 06 Apr 2026 19:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775502933
