Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4088BDF59
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784924434; cv=none; b=DdJL31y7x/S8pFkPw11wOmygXBJ3KteL4y4CTeaZ2rY2U6ekI056yET/zH4+w7CrQYzt2DwidsDzme1Aou1usGuZSFePxUQ7O8XTIF2K6hF7P67vVkfkUTM37l9iV7Pg4cTksirGDLsV4T8ZMiKgIeZNkAtHs2tJknaCemYEITY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784924434; c=relaxed/simple;
	bh=wP+I6e7blo1E+NPAaqXyS/9GabwJ7TblFkx45miXi2M=;
	h=To:Subject:From:Message-Id:Date; b=uoSG/ISP0FW5IIw4nB4PUEoc2S3Js5tfOeWnhwg8W0DmL7lkQST48ZexgwNPRrjp2bqxnBgAcZySKrFwEc9aitRbPN2Li0xE0RXXSQpk1E9iD8pK7lCwQvzcyIiUD6nKRyo0tQeqNR1zue16mhSkYlPVzV4Fxwu7S6dk64W58DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmuglHnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmuglHnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7D7C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784924433;
	bh=wP+I6e7blo1E+NPAaqXyS/9GabwJ7TblFkx45miXi2M=;
	h=To:Subject:From:Date:From;
	b=BmuglHnC4ovE0eVkVJlM9EA5Z4vnof/QaJSVQ7ZKJHm/m7tLxg5UMavXZtWPnEmh4
	 C1Wzo/q1BhjSmGeY2mhXMhP2xUgKLl8qHbv2Xxz4DMcdi8tuJGvldVgzf8tnMhJwOR
	 l60NRdksZvWraFKjl2FgK2Yi+yNCRiS8/EibinS4rKj+4ZYTu8oOb3hIEJzXoh+ucN
	 Oo4IUmKUieCS3lwp/YHq17Lmw8UCwsiDZ1EbB7+7h8eaJ7WKiAZ7oOfoOJI0SmhBab
	 9ofZ4zOe0zptiIGYVQG5g0y+MCRsPzGB3BOWfzwfrR+nSuBExraXjxo86a4rROW6xa
	 G08Vtp5kX/PUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC035C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492443368.17967.14564633629074094527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b7037211d2796afe0f5ba227056e118d4d37ae774c1a7c974b320dd19284f8
Date: Fri, 24 Jul 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784924433
