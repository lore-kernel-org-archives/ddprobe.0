Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE17189906
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767146034; cv=none; b=BAuMqq08qouqjQcOyLWXpIxv6hUl9y9FdJl6IzfxpmeoMahZSwvWiOA0slZUgnaV+NdNRPZl/cyvq20tpKWV2sZxrETlACCCvi4eutjh2M52eit6jHN9MqOxaOiApgtY4L7tck8zw42noqQiG1rpDybTdpyQl/QiEGUBC4RqWys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767146034; c=relaxed/simple;
	bh=ebRbF3er15jzYerLSrJ/gxMchwWNYACw/sjg2qktJTE=;
	h=To:Subject:From:Message-Id:Date; b=U+cIop7uVLPBTXZcB+GOKW2hW25+sNvMeG8is6VK9jU9RlQvjVroCU+0IjECinr9exh61o3m67pAdat7amBU58d2J0NRjQm5sUdS57P9t8ywlrzyW9O+IJpPUOGiylAtQnFbrYipatlp0ostvRZJQ+uGdxrhidbfIA8+fX1yhhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILMDAFy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILMDAFy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A672FC116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767146033;
	bh=ebRbF3er15jzYerLSrJ/gxMchwWNYACw/sjg2qktJTE=;
	h=To:Subject:From:Date:From;
	b=ILMDAFy8UtsVJuHId/izANPOBbzP1RSJQ/Xa033QO3X7TDuza9iNEg/LLLj8cB+xi
	 qz0jE6wxeXRBOqAe2P2Aap5AHMaYHOeM2gJAZCJSucdXkiREvcEytnqNJbcss8Gegq
	 lljDCSkUTPe6qnKMj1ZCk5W7NGq2QP8nOFrriztYLuoFz/jNTQt63wpzV991XgIOSP
	 s15hT6gi6jJDx4phZ2qU4+kk2S1xk1l+/qqdxc+ORaGFCj39IyXrwZH5O9BziB4Vqt
	 tSdAcxjiUMOLYx+j9o+k1pG3NY/V6DsMwZ3h3yq9R2ZiGzc9ktMTpYDPNvaa9217WT
	 DshhZliGomeVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94556EE57CE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714603357.15060.16668949222504281313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2056444029df7d0d14e77f10aef0487e3e147942d27384473bc789a7e77499c2
Date: Wed, 31 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767146033
