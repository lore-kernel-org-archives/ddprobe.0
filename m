Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280D716F831
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732090554; cv=none; b=k1UZsPv7lkEVa5La5aC8cJ/BsFPCPVu3TaMu0xMfWQYFhPy711u+X/VVvh+Jbow4GCxIOgknlGsz8n6X3SpklzqyFGNLxdTqS5bXQoNfm1FagNGLtr2froaNKZjuaWUEPAaKmhp4bEYsUpaHpWWVOPeAvmwZsyK0m0NV3oa+vxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732090554; c=relaxed/simple;
	bh=8YA4ZRw00XAfCsSyd+IvwISPVkWnGuZBUzSbyVNLZZo=;
	h=To:Subject:From:Message-Id:Date; b=dno1e1oziRmxc8TMUUl5NuKSkZ2rI0BZ8hy/nZUfDDRBoFCezN2K7r666S76t7fZujsGhWCCUkUpFid/UseLRDK9xxtUq6iG7IjPZv9Ax1nUi+thRvTLiBa2VYONYAFXDLWhgYjAmwTorc4EQUivumPVrDWNOo4rhXg4MIXOHKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oczdVZDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oczdVZDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7708C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732090553;
	bh=8YA4ZRw00XAfCsSyd+IvwISPVkWnGuZBUzSbyVNLZZo=;
	h=To:Subject:From:Date:From;
	b=oczdVZDFiVcdzuqsEirM1qxTReEWryCQKGWPhHgjq3BDS+Oq7yxRVKUUoSTxmrMEp
	 9i0XNYfeeu8adCUI8YprjDEP2Ne/HuJIxXoDyg+gbFs5+PBkI7u2SPH4dqfD5PZrA5
	 tCz6PatZRoDqc7QoYq4phZBuI1D7b6mIeE+bPtStobUB4KdE38u+osUXHWeG43VS+G
	 CvqBAF00bVeR8n0hKOVTLLhm1KPsYPQ6brDXC3htc3ZZc/ywZR9UDBwIVUNxUGi3Mj
	 RJ90sE5cjBkI/GHTrrqz8eghOYvFLSzdi7OtY8FX34A0wyaoif8aICZeD5ooZ7u94f
	 SUoAFVUB4qbLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE6D6E2CF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209055360.6698.14062307956751979746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ec74d138c6a2d910c56e532a8652ac70ea89f90f548e49e497b12dbe9fc1d0
Date: Wed, 20 Nov 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732090553
