Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604FD1DFEB
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716909263; cv=none; b=S1yCxPErSOzH9ZfQrRbDoEOoIHgBWRV5A23cKdvk9WombUz6zWS4AR9vbfWca1vS6U2aLU6kaEgTZXZOmKYSw7EqYeCbzbYp/2fSOO8MtmTkLBBOITMOLRY5k5aLoysqTnTgd+6woUdSsaLZefDTZVtKwwzGgKUVaOhWfJ8Hkfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716909263; c=relaxed/simple;
	bh=yOZDNzOMYiI5eiM5w/qsQS15GLu5vqNZpd7L2aHrj4E=;
	h=To:Subject:From:Message-Id:Date; b=BCenCsvipzsq+EP/Oxa+kKqPQHRe5tjTg8RckqAfoLP/rROliy00p26NUBvc3Irx/I3CGpI2cS6CU98aCXz8OEray/SLb9UeO45eSp4qPlUQPc6rYXw1aFYAW22FUrIYKpuS9fv03Nd4s9kwTCrGmdziyOW4mHNmtMnyU0mFG8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6v+s3D7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6v+s3D7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10AFC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716909262;
	bh=yOZDNzOMYiI5eiM5w/qsQS15GLu5vqNZpd7L2aHrj4E=;
	h=To:Subject:From:Date:From;
	b=V6v+s3D75x19HQgNEiui0RO690JXJxPQl73JZ1GWMrDDRk0HmUFOXo118z/5wjm98
	 B/5vVcWoI5UtJYvFgJ7K+0180unItKRl8wlktslKf1SnH3MbCx0ih9DpsW4vcky6nt
	 GT+dsxwCK1TBWEeN+LeCkdASK7mEZi5fhK6bEJkK/lkaulp8GPtmIFypCY2WpPOF/e
	 JMB48kCDGbTZEIO6NOxQDg8L67lyb20EGJdJDLy1jzleyhhMXXuRlueCvn3VDgpAuJ
	 KMTuwy7ie1c4kWP/PrIKP2y+u5hBsn6IELhxhpbGc/g1EdDhMneozjpD/8aQaAIZ2f
	 3L8UGwYdPivtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02C2C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690926277.25544.3969273630316601499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cfd063567774d1cd246902440e3510e4d0127dab86972e43fd4771e5ac74bbc
Date: Tue, 28 May 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716909262
