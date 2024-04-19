Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6308713173B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713543623; cv=none; b=r075cfviNHApybyTQfp+wc8eVPqrU28R+n1bxOkH8HJNsb5StrNOImpTLeB8gqpxPMVwSew6v1O96GBwR07/rgrM3GB6bSGDTi22BDhA9SNvUDEy4sl+Yqr+hoaeWqbYEFNTU2kkU+NOku4bArwLEc7QcdWjrjCwges4cSKZ43I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713543623; c=relaxed/simple;
	bh=rDWp/QkL9kdh6CwLgzAe445GuZKGuvTsNDBkRjfheDw=;
	h=To:Subject:From:Message-Id:Date; b=jV/RmJUyQhz7PJ0Pp/SOne30tHlxl8buBaHt7otKSR2l7lq+7Ru2pizFl76zfLI/PFa3IJrC+MIzMTBxx4TmMB43hTcvPBRtWL10xhtmqavzEbFrafkxCHYAosvL2gxcZF7yBd6gejZiML+lGA8sRiLoKi/hDFpS9YwL3OdY+YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uR67dbrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uR67dbrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B16C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713543622;
	bh=rDWp/QkL9kdh6CwLgzAe445GuZKGuvTsNDBkRjfheDw=;
	h=To:Subject:From:Date:From;
	b=uR67dbrlB4iqF35sUSrjE1s6xlYWBq5WOE1sjIooitiFsX4oTGj1yKdUsaHnevfRp
	 +x74Dh1efhGoAnBC5LBqYbHDTLcLgldj6XOpXVEDXIUZcyQyhc/29rJOU3y4jx2j0v
	 P/napbiEujnqLAy91bG/j7gbeGpkGZyYBkHTpcT081BgH0sJyPZACC0JAhkUeCAp4W
	 VMam+pecq+Fk7z7QdFp71vXKKnpYZApACABjjvJMJORQhxwgXR76p/ynvDRHNabeR/
	 5L2RVR9uowbZSoNmWMeOCcNdE6RFQtp229wajdpvUyiRJ6rpBl85E+8WsUsUtAnqHp
	 wmT8jTD0JU/sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1DDDC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354362284.16119.2641615598068246577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c605b02a46ce3991ec8cb80454fbe4717d54724253f2ee4590f9b0f985d9eb9
Date: Fri, 19 Apr 2024 16:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713543622
