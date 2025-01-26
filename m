Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D77025A62C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737915354; cv=none; b=pdzkehSuKbIbzeMeUJh4O9ufhtAZrnd32uPEQh1FwSiynBrQTJ9C/qXlqK2N35y5UTDZwM+u2If4JCnF/GW350nRaxo3VhSK5JSSaTBgSoVS/sn3UJ0PVpWl+mQQZD3w9cnzsiaXjQooIz4Of5ODcAtWtLeutr2otR6bRX5DPo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737915354; c=relaxed/simple;
	bh=gNEIIUDTRq9izex6eZPhxJd7EMVKknpJk1q2B2xcE0g=;
	h=To:Subject:From:Message-Id:Date; b=AsqIRTpzt0THClZ7LgE3hRHvimcTsE9pFY9ERLqOoEc2NsFPvfAiyBYOM+2JwDo88dbNaBIRRb/1Mzq3R6kCN15ftRx95CXN9ZC+49x2j2o9OZF9/ieXv4E8+dltfhGOzC4Wg+wtXHEnhhploqTc0bn0NOyW8GwqZ+2v3zKuTXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spUa2I1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spUa2I1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7033C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737915353;
	bh=gNEIIUDTRq9izex6eZPhxJd7EMVKknpJk1q2B2xcE0g=;
	h=To:Subject:From:Date:From;
	b=spUa2I1/Yg8EZK1vGsawXK3cf+r3KSbSXlstanCH/0RACRyaU/W1fsz8ntjKcx5z2
	 mxFYMI1ueotSnhRIXP1Rw2xvzyMmDUSp6dcs4uSgZgHo0hb/XdWQSrcSmvuI/SX+7W
	 5DiEQIKvN4jYQSijlkMJAy4Hfk/zHwvR13/9zHhTvkSiFwuaFGcB1gP7nvgaWyG4hB
	 pQM1DZlpB85b+vglmuviRWyKunFdrJIa6XaKw47zTh5B3iBsJka//Fjt34+UIAu1Lw
	 ur/WPjzE83ha3E3do1uxLZRFP9lBWv+8rcZcuQuTCj+03JLkxTjYmfPZXTXgJpFjzb
	 oegDWtNxo8sdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B8C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173791535358.10211.15143289280638331031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b3e69e1254dcaf1ed62724344b9e17b595944e83cf69f9b0ca6e82bc48f1af
Date: Sun, 26 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737915353
