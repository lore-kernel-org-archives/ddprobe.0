Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E7D1FDD
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729472754; cv=none; b=q+8txJlcl1J3DeHOY3S45CFOFljoGfSX1tiwjCShCSz9YJXYah24pUKa4qEV558cgA7wVevWIVN3q9xYFZIyqllerSdprfwPkXMlNk10CR5D05WV9fGEBv0V7JRj8wceQRR0BSb3b4XehichcSV3ABNOR8xr7dNeDcKu5sHM00E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729472754; c=relaxed/simple;
	bh=z+I5qzs9n24IWdbooGz1UGQIMDTwkk4SRj2Rl4QtS/c=;
	h=To:Subject:From:Message-Id:Date; b=lXcCb/mK/iSZQeYdU6bquiaxINCTM3uvhXT3CqJuss93/GPltkjCaIfIOqcq6q07j7/clo7BdqKKMp9XDIe9RKyImEjBlLs2/bBcQ4hWxcRAgloVBIpFvEVk0yvSlBtjbngBPmPWZcL48ZVgMTIFfh/GWvVItB+CGcb58RLJ0sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWVsdatL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWVsdatL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68FEC4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729472753;
	bh=z+I5qzs9n24IWdbooGz1UGQIMDTwkk4SRj2Rl4QtS/c=;
	h=To:Subject:From:Date:From;
	b=gWVsdatLpU8c15iQoR++MGk9wJlthpdSifDJ2B5Pg2X85TIUWl0OvjK96hAjEt3+w
	 uEq95qGhxIPSaS855qIMv/ACgSUoqfEZLKp8TeLQxowjzZ7ryKbrFu80UWdXnYtiGm
	 Zv3URGYQAo8La/tf4R3xPOrJUvnLMTu2/ENLOCdrO/XJpMqX3hkFB4prdcC6t/G8Px
	 Mk+i1aKfcA2ZpI95XAKckhoJOEwCKf04GiooSpVgtqVt4c9oXTdc0R3mz/qWtWG3Rc
	 tPJ2QMz+fvZ41F/0VcX+DVJqoCRbubtdV4+KC34M+ihvJGjpKAuchuRQNY7yfnnPf0
	 IpVZuDA8N8AlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F7D3C927
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172947275358.5064.11932747283540180683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cace8e0a19a52606bd92809c16b7d7d7bdc7e67fb0fa8a835e0376970bed5f4
Date: Mon, 21 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729472753
