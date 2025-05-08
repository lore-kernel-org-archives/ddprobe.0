Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4814522CBFA
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746725396; cv=none; b=CrMWqO5JxVkD/LKpT7EsNGhqSbxH7gWu9v87gv85l+oP5uGm+M+zV0cDH0cdRRlddhcO3RrjILskJ0Dg59i/tJwNKGOaSO44GWvaVoqfdwI9JYdlSCpLjy9qINqVdpahc5PNpFS4/6G1ChNgpHipEiLt2Ye3y0Ax3yoFElF1dm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746725396; c=relaxed/simple;
	bh=IoP6kY1LxYREl9j3g9wmWX0J92X4C70ah54R1uVOHqo=;
	h=To:Subject:From:Message-Id:Date; b=nhUxreV27AiUoOhP4/yvvlojfAi7sS7/UQnrVatctmP4tloz/c/kxg9uCKGt5WWCy2PYGwYPIwkxM2MvWt9H6UbwHfVkZG29EA5kvq+N90yEsWZMQapowJ8Oq6xB+rCa1sVi0aNqFkZsSiavZppXSmRGncXXOx7VdvWXs7hexUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIsug+Pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIsug+Pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A281FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746725393;
	bh=IoP6kY1LxYREl9j3g9wmWX0J92X4C70ah54R1uVOHqo=;
	h=To:Subject:From:Date:From;
	b=aIsug+PmK+QFAIi93l5QaBb0irs3kjNzQ4uVOmAanGkogT2XWk7Wkg37Z1xFV9uaj
	 n7Z96ePXy8s5mYupkcbrtZ73E7sJ7qBvl1PBcAezr/vVaGLkyXI9hQdzwhtpY5GFbh
	 5Q4zOVBVhy5uQqLayWpiYe9CgOvCdxdFZVNGhmosD9cEHyssS+I57vY3ZhixN18Ipq
	 Yg69hHU56+pU0KpEidOHFgdbz21ZVhwH7V7rGGkFUIiZpg5NgBZ9YPf0PIIiVrvUGu
	 VLhmqZCclK+uXJo+gGj4moI7PF38YiihN/7PzQCEyf8VEp/WAy0Vt+TcdXcfAlnW+g
	 LlPaE6uCRyNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F696C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672539357.32022.17653099343552010172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2ebcbdbdadb0b18b8bcda1b7cfaa09f9fb78e59af15148db3f658e0e58fe83
Date: Thu, 08 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746725393
