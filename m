Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4127163D
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742082594; cv=none; b=Domb7Y5XA7B3mzyce8pxBG5/PyqpkSmTP3XKDDC6wt8NN2re0rEG3AII3XJGpLOGPcxz727wfhGedpeB4TiFUDsVCzqthF2fXHlGQlBCoZM4I1qOYelT87zLJAISNSgM+PDqt/xn8p7BOVOyq38EznK2KzzEpfT3EVrVb9d92Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742082594; c=relaxed/simple;
	bh=mqcgkIVVw679O7s/0/NJfLQh0KriUmuIoVC2P/t3joQ=;
	h=To:Subject:From:Message-Id:Date; b=iDBUYCgrqmoGH9mhv7NQ50ziOtJRqw8KpcQQClkWxMzbbUbKkVaVBgwZ6MYf7nkRilFQJYCM5v8aRJp3OSB7+MuYsDqPH4i+qQSDql9fzsK5OByAg52kOB5SYcVpgi27c8iA6ROXm78uzSga42MHsSK1Z86ur+A3c/E2oDLn0bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCOPf6bZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCOPf6bZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA86C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742082593;
	bh=mqcgkIVVw679O7s/0/NJfLQh0KriUmuIoVC2P/t3joQ=;
	h=To:Subject:From:Date:From;
	b=DCOPf6bZNM5KhyHRORQrBPk9DUGoFqICJxjZtez06FQVjXoTKuHqTWBaYcpImpUw0
	 vs6FM0F4NwFuSCLPeLyYjgRa0ohq+FrVJUHLgBcSNBrdK5stJ45Ks5Na0R2CB/Ub/D
	 oBTYFASgXoRIuqDqZ9e8qu4Rc+flt+c7HuHibumuEM9FFqfuCFcMJ+fmrcMXn6FNE8
	 twvtTeLhhNxz7K1mo9I5X8dbOQbchFlmH0+dCVk8VekzazjjQUwJlcNg2EA4hqbZk3
	 vA+xclJbJgWMn9UDjNDMBIXbFoGbbZRli8TrdIdbjHKiy55R1EhI4vYwk6fDtpCnZF
	 RM3uppZdjVl8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94863C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174208259359.12755.17613405671698117532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 671e0ecc83f87701d82761236f709ebfedb2415abcabec2d1669879e083271d6
Date: Sat, 15 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742082593
