Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4322E184E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735785354; cv=none; b=FJwKPqaJm3T7Az+d61SEHRqmdzj/ImG0AoPg4sZNrvJqlrUPKaZ2ch6++V4oY33Mg6wnDLmiu67lAnFb7om4n6rOQKUe2BbS6NfYNLqU5lAPq7M7vOJNU+cwmkT8c6MOdi+WnNiO4Fw6wTSZBXrvOoa9fU3cwYvMCy6ilS4h+sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735785354; c=relaxed/simple;
	bh=kwYLLvsFM+brbp+Mc1bAy4HIFFksBAtI7cjGEZZE4/E=;
	h=To:Subject:From:Message-Id:Date; b=Ddu300YsIeLEw3vn+hdXCIbnbxba+Box7W192Ibx7E73fYaPiIdpxymLq35Rzw7xcAYXrnijpPp2CY/6IqwtogOW/fuXDLxRWm+jZNc1v8IKPkzxnq5JHi/m5SuBpRn8c7etPU5lootu0IJHhHsGoO6vqPBjMiHftaWOqkP0/VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXNYXjxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXNYXjxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA48DC4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735785353;
	bh=kwYLLvsFM+brbp+Mc1bAy4HIFFksBAtI7cjGEZZE4/E=;
	h=To:Subject:From:Date:From;
	b=dXNYXjxG1JKAJK3c8/fe4kNMbvzHvpISm4lJS+Wf2UurK9AhLjhBf93n9JXsczVXj
	 cA4c19/Y7RmVmhFwRPxJK1pC0QM7kpym1XNTLeZBXETQ/2HzI+qo/8I3gzC0rIZVVi
	 HPAcvvsHi6BqJGTMDFVMAshTRGgeiL0K3n6nnj8gq/gX6tDcSmUgRcb22YUkeehdg/
	 7kgrE25QuS4YDNWKX6s9VSvSKpGPZw0nfyLK4F6/UXvaQhiNCUZSJ6jaK5PNmCouKp
	 IVeliMZvNqgz7Dq8iS10m1A6WSzApYlJ6hZMc15k441KpQJnMzUFYJBOHzUFsbl4wl
	 za1S3lEebi1qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947FCE7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578535359.25342.5858573781529684227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4222da921a71216e475464fe25372cde85c4dda66738b17422ee6fb110741758
Date: Thu, 02 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735785353
