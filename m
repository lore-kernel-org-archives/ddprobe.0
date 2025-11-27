Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B67327A130
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764226374; cv=none; b=ndazHCGHtAxWoPO96456Ar7TONxKDLHdY2tNMWYKyL3G2A8zmbLkqQdqltpEazOSdPMsecfqbw2wC5qNHlkl7mJR7h6kPy6E39ZKKshGOWinLJKNovS7HyqDTkD+YXVvmP276QiyDDrMXaLJsvyhbyi6vyZVPzjr8aOzQAemBXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764226374; c=relaxed/simple;
	bh=as61STrp2FWvchFAi09FM50e+KcO63RS5ffQm358EBI=;
	h=To:Subject:From:Message-Id:Date; b=IcO54fvsf1RoQooWaWFGCNuP+mTGpbQwFSxReDWPOjwLDi90yFiBub3DAIlaQys6gNju4FEZw+kNiaCRWpznvJEBE0U+0Q4eVC1kwUDz8M+MK0wsu4mA443v35K7TZLmay8cdo4FvuHru3zd47QQ5srOwIEyu1U2sl79YQ+XcLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FP6cAf5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FP6cAf5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A638BC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764226373;
	bh=as61STrp2FWvchFAi09FM50e+KcO63RS5ffQm358EBI=;
	h=To:Subject:From:Date:From;
	b=FP6cAf5/6KRsuYcvNLUMfQP1yeTSJ6SnU8CiJ/BtX0fWokHkkH9NMA22QoEvDOr8C
	 GK+cO/gaxGVBQ4R+8LOXDqh32xJYd1Z3vgh4CduyBFlQVzpyLKLbZ/JzwhkUqeQADB
	 0FnK/ZDltKbHL047kV/mQAMYXVk+Iy/vqQPP+634b2K4jD9iTJ5ETRph6/1UD7g3WB
	 tH8mkH3pgVe2zgrJ04hJCUguZSypFKR3YdvVLgifHkTKJGYy4hqCrg89uqv4Pl8K0m
	 DxH//D3ve8Rn6wlhTPeNO7TQ7PWzEgtvPMRVcjd5h4YbDpgSpFn4OirsKMKH1XrcMy
	 VrOmLCm4vAABA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E64D10375
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422637360.4584.1078892442864608719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4365db200d91c8f935d6c3529b607319a521a1c84b5eb20ec667b195680eb83e
Date: Thu, 27 Nov 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764226373
