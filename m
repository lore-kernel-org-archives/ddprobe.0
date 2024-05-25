Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AB04AEF8
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716662063; cv=none; b=I+qe945qOf8kWDyB7Nv/BX3V9c7lOlJWT8+fG+C8mpFs1FgznZBAWAknoUqmkVn8bkxrSNe3KSEQQAFA2UeO8O+jlTFhQpGe4dG6Wfd3jxwICmy85IXtlCVHsQMQ13Vu3qQCgdxiCl7EamZY7VvdEiaq5PSLMpazcz8s7t1+kWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716662063; c=relaxed/simple;
	bh=AliIIbSxp7Vg7pkrTWPkp8i+HN8iJ4PDKi/uyXzouCg=;
	h=To:Subject:From:Message-Id:Date; b=Kghnsf8QGzcvmam1WhuAmIjYEjQhycEeH6DUBc+YpgF0HE3/elXR+gN6Nde9ej/PPjq+vxlBSSAejuwTfOPBzv0SFADW4hghvO1UPzZqqPu7STzleHUSMzezuVtBUKIpZxUMVyn6n39jRRW0PnwvOLu8Wyc06P/JCgt7sLRKQfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ga6egjoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ga6egjoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A8DC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716662062;
	bh=AliIIbSxp7Vg7pkrTWPkp8i+HN8iJ4PDKi/uyXzouCg=;
	h=To:Subject:From:Date:From;
	b=Ga6egjoRt0RReu/TDdFAgcx4/ja7VAvGjnBRnxOhQZMUovMrHz1LvhoPsSfBA6fyc
	 TcrRYsmpmn1t8YLweaqe+DAWP+9tqxps6fbsy68EyM33ZjoVh+INfYnd4oevhs61mI
	 eX+SxLCnkU/ucrbaWVXTxlqc0DmRFfXgrNccyTu21KVnFUmFqIE4qhCTepcyn/EOst
	 80oQDICEEqlnjdacY7pzxK09qzcl5umklETVzFBYcFmZfXZNVHbekA6cY9Pcvyu35J
	 xzSt8vtXZ4qoV7y36DNaR8EITorhmBINKHIfIa50k7FaOvv/kMkOxq0ZnmQV8k4ayC
	 aIKAmANiXJ35w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA72C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666206280.23974.8881603735130402351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770270875dea01b81697efd5fb3b93f3f04a420528c9180602bb1a4aef7709a7
Date: Sat, 25 May 2024 18:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716662062
