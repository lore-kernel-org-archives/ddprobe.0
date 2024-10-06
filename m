Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32788364A0
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728215754; cv=none; b=R8+LdIvxbKzBiBXWnUC/YjDhIpUk3SugX4waC4vUguXMm3X5hOACB1ZGL6om/lT3godOOaa9o40tZgr57fhioQM54eaHbGEYtkriJHrEW0iw9wS+ErObjC2BYCPh/L7ikQ+ASK5oSUNFEG2h9Rnd7K5BocU7KzIhSFQw1D86imc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728215754; c=relaxed/simple;
	bh=aP5mwJDB9jT0uAaif8aJuZhBfXruVSzPcm9YhDERw0c=;
	h=To:Subject:From:Message-Id:Date; b=CtVIKKGp/EcSfmYj+XedXRSgc95/EyH28CYg8AlF8kxGnFLMvjEf1yy9n7TkTBHuzFTYwefiKFDUGw1KXu3ScLt0WuukYs7BqWppHwNULBxZBXMyGMe1HN/tYlyoMYWvvYnIA3SolssWmnP8gvp+9QfvJwHhZ3rlNJ3XPKCUT4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocFNd3TQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocFNd3TQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ACDC4CECC
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728215753;
	bh=aP5mwJDB9jT0uAaif8aJuZhBfXruVSzPcm9YhDERw0c=;
	h=To:Subject:From:Date:From;
	b=ocFNd3TQ/ZX5FYP4Gy3jcFyvcfDdziJK7nzqqCVffCXV+AJ0wzI3V8Cegs5QNpg0U
	 Wa4sWKCIIXP2wWagg9gU03gVJDfG12WI00Liv0E35doTnBYT4A8wmURO2lQAtZJ/tw
	 EfYoadwl6Gn3hsdojjLSZZPYavBvD6T9fsAJiaOg30FRU6nA/gy+ywe63EYuqWIaor
	 hoqlkekwcvPIMiWTWdBvVyvkkdeMaPw9WHE78m/xGnQK9OPHkdMAjoGS/KaMem66/G
	 lU0lC18MlajNE3xQ0uORjMwTF0bRn73aTNhSlaVzYmDMCO+v21OPS3cez+pRHDNlAw
	 vmbdG3rbcVSpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C322CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821575358.25908.2471950068819789601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb1ff50b09ac6e1423a41b1a0c40bf3c07ab94b84121c5cc2defd75e2807215
Date: Sun, 06 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728215753
