Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D012D94B7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755679194; cv=none; b=j27oKWxIRstMuviCmlKbSksvaVGl+5AvYgICJWXF/JQR/LZzbqzKCUnKO7tLw15rEUutfGZ4IxxBbD7LaWQy4IhnqEQJNz0o87eMxIxM9dK0k2KiyAfZHzJtUrjPpGRu871sfNC2KttsK1gZp/VLGYEtut6yvJD8pYBeSeaSv0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755679194; c=relaxed/simple;
	bh=jQEef1PCWrvJgrdZNsjaw7ia0n/sVAVZX9Nl1u5SzgY=;
	h=To:Subject:From:Message-Id:Date; b=tvO2D30656z/J8bcCaOj6XvXf6Av3JlZ7Mlq1zUK2SGGYZUYbYHXUo6NseNEVLe10OXLetku5D9GY3+pC4mMNymqEhgAzCOFP9vzX01fJhcVf7Pzef9kalOg5Er7DutDL9QfLOebm9mPTNLbw3XcY3CctVjUa+vlZg99rjLcyEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1fznEp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1fznEp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6465C19422
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755679193;
	bh=jQEef1PCWrvJgrdZNsjaw7ia0n/sVAVZX9Nl1u5SzgY=;
	h=To:Subject:From:Date:From;
	b=V1fznEp4Ku1/an1cVMUcHEOjE5H7OSAgd67Aa6JijcvJuY+FhXIdsXIz0NsGoXJ7b
	 qpImC21FZAxBPX2g1zLJ8U+lOLPiXtvF9fxapz24C7sdzjZ0kxMGrITpq19Y2oQWBw
	 /KfeERKwl/9Pyrhfh9zt9CT+nWcotZkh9j+oiHoubzk76KwGDF2nNdFXI6NSUonHVQ
	 aaVzy9nVLnOGtxjeQO8VKB10ItkZANv1wzHuPaCxbz9YXtVjd6EW+m97Z8E+zaszC4
	 vv/881lXn7AUKNDOq46Rf+SZaijaxcBEeEtrGtdJhuovp1vsWQ5dsPcZHHcXI+onNW
	 XS5a5ksqCbeNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE39CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567919363.9734.3750951919801134934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a980204e780a062c6231ecba6ee68bd625db09bbe0a2daf4f8835696749503
Date: Wed, 20 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755679193
