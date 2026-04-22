Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F8347BD7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776851254; cv=none; b=F1g+cvQrdmuNLqd9oZwglSLpI3dftELYO/CD76lVHVxyDpaqJ3ib+bg6jhsFUS0tmkU1FTEoB18rFqrBawbyWff8jpcOXoBp9N+PO5R1cxqaPxwJjkGZL79tL8sfNf92OEE6AQCzFgttj3AIdk4SoeX7Jc02ZNq8h7cqbrFasnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776851254; c=relaxed/simple;
	bh=dFSQlLhaROKBTwg694iHaNrM+/2+IEamSJWUvHIS1YE=;
	h=To:Subject:From:Message-Id:Date; b=XO/pGb6B7st17oiak2cSqAE83VRQzDsW5VYgTFijLZXaon+7ZLqMw+C0EeZGpoMKxvcAP4mIz4hUN6SNL5ToAft/gA25Pb14UFEfL1Ob2/7qoL6kMfeGDjeUvvKrrxn/c4SXF+myDkMQ9X3HNWRWW7LyaPTv2rHN3ZjYcRMDixE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5zT25Sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5zT25Sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5683C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776851253;
	bh=dFSQlLhaROKBTwg694iHaNrM+/2+IEamSJWUvHIS1YE=;
	h=To:Subject:From:Date:From;
	b=e5zT25SqTt2vSWCqbuPJ6UBfKHt9OhfxGC7uX5xpy+I/v6+fLgpLWQxIcDUjMHRBR
	 CTU1E0FEBfJsK20lonQxgd5YAKOkYCxcQ3w9zc6YrhUaAMnSgbXqTEL3e+uqiSPxaf
	 AgUHTD6FcnjmFWTv/now4f7TERBWhPDKYYJKEiY/KswxcT80VyCpFC17euwaIsSeSF
	 e2fkP/abXXlgXl3EAMZgtJ7KFykhm8o0tL5skF4CNNJdDHdeJQ7vcsdpP7+8tO9j3o
	 kjTy0FtqEdFszgezf2vdPpQXiA1DmqrOsVXwTuhM/HIjDr9xg1OfBuzJ6/Du2TvbcY
	 jGhePG4f1reQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9D6F9B601
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685125370.537.10606258319495656000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed78870373c15203a95a898bf262b33c721277eea8b1a3acd176964afd106c0
Date: Wed, 22 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776851253
