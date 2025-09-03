Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C9925C821
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756913993; cv=none; b=bCxCCpDPol/cGMwHUHAxILr1aiZ/A1qQYVsui7Hktt/E6PxZBGzuOdrKrjVJqTm9BHsF48oldmI9kD6ppBUljuuqY6EhY8Stp6deBp4P38JLG/B1WP5Qfx1EnZ6ZDnO6yPgg19vRCUMDS4J54OOb4rz0KA5WX11HDBmheSWNgP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756913993; c=relaxed/simple;
	bh=dErOLxBCJ6eivkM5XM+Z91kvs4kIR5p7AjAeR4L+PVs=;
	h=To:Subject:From:Message-Id:Date; b=GRf8eDURmudpEKmu8oCYlv5LAHItuI7SX667GaCVT9j4DqESnl0/FBRHKcZBODtqlpLLLPefGo9GHg06LmRtbwWjpPA83mgGrt5du4oClmHrgfiVUzBvNH5o3Vz0B7XFe2WoHEB4U/KfS1evT82IRFiXu72yyv1wUmtR3CibIgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huAyStsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huAyStsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF41C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756913993;
	bh=dErOLxBCJ6eivkM5XM+Z91kvs4kIR5p7AjAeR4L+PVs=;
	h=To:Subject:From:Date:From;
	b=huAyStsvnds+m5H9sGra0puGPt3rOjJ49Vk28ROdPJAQAQUWbB36bmvdIUBTAMf6P
	 yc9SnomIeMLJnq2s6QhEHC6bcRGxUSoLHm+4pTaqH6DeTnkIvBg/PWL18iVmUhL6yj
	 WH8Q6Yqi+tcwhGPwVfYWQousSpSVP4LgzpZ7eH7rXkm5ZtrlZVeqpRIcr+VFjx4eLR
	 prHIt9BLO4QbMJutix5MAsJv9bmwZDyTToKe6KXrczeb4GBt4To5CZyviRDvH2hTgw
	 24ScZiYt/zJhg2AdXxaIvhFI6mox5Z1o+3r6LDYZWKUBpiXrfjFaAc2MPqXohHhlrA
	 hEW9kqgZZ1QUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC17CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691399357.8348.16329043141271924163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076cb743c3c5cc483fb376a8d0feadf6f397eedb8de9de1a867b49c7fb34c141
Date: Wed, 03 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756913993
