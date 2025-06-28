Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB76B2367B0
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751149193; cv=none; b=e+LwP7ayzqOnQHvl2bgSdfH+qM+lClncpuh0CUDmxswNeWd4KX+vAEOb3LfOonQGaudl0pN3bH6FCQXzoBfEsuixj+aavxfrOAZRe0N0ta0bbJDy5TJfY3h6cU0rW5FXrvvdopf02SoN9agaJvlc00vWT8u7QeCx8+c8P5pO1jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751149193; c=relaxed/simple;
	bh=s1bgDExjy0jtfjzDBelJfnSDkTKqtmaDTR+WI7vyRAg=;
	h=To:Subject:From:Message-Id:Date; b=ml2V2x3T5p37Ub8A0/Mwt9v+dRnWrrQqaHOAcyM/cdzkhx6OMAH183suFzxKqvrdWguhGYIMFIiLACL66RodIr5dxnr+ZaFIgXqUfvrHLaqsFfucsO5FwKHGpnMZinPCA2alnuT3/uM3IwGuQQimzDsrWu+0w7Z81Gmv6vfPrWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrQj79J3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrQj79J3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D7C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751149193;
	bh=s1bgDExjy0jtfjzDBelJfnSDkTKqtmaDTR+WI7vyRAg=;
	h=To:Subject:From:Date:From;
	b=OrQj79J3ceO1TxN9YQ18PieVUM9XaJukbhSjaZejHsFg587eHVFSr6hobUEnNitjC
	 oIPdv6GND4ewf7oGmj7h9pUy3F4F+U41PajZsBhlevlx+0upIsHfGgveozume6chkA
	 5yK+EOnLGyc839r07n5gHF1gND0bPKIzx291xtIPGREr13IyRl8IUof6tlMMgo+5N3
	 FKCfLwr5fFxe4ZeepB2nItvrUCC/oWJ5hCVzl6POvGH1DG+TPOstU4148mhocE/JkK
	 g4YYsd8V0TdfVregHRljKHCtSTt1IqCK3Ywl6UHUeEt+lenX5geAvu1ZnXPbi5BD+X
	 H/peD3I/2KBMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A4C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114919357.5311.497471349836726686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8407569425eb9eb264ffa52e08aee6be28dba452d53082a3beaa5c7c64f92a
Date: Sat, 28 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751149193
