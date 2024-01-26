Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E863A1BF48
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706250497; cv=none; b=Uoo1mk5ybDPA2rhhy/mc9c2JqPDGGfmRjBL7wZ6SldfnRzdM0K8cjaCXjhzzxC6gjBz2sLuqbce1wz6caipfuOYGiDj/d0tEDJm5JwHsLMgCZKZdOQLWBlf/7pYDUjZEsLAbfuZvJFc3grcowW1UJezm6AnH7Ofg4spAZPvsD7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706250497; c=relaxed/simple;
	bh=IkKEdiWNrqD43T8Bzo439HlN+n0gkGEbJV/P/9dv3Ec=;
	h=To:Subject:From:Message-Id:Date; b=anI/rtaS1M15L9t559xypp6m5i0fw4cWlD02t8AJ8a8chVk03eSisdiEJ2Oy3wtpVkP76x/GM30VLyjI+dtqcTtPbhXREnQZhKj0T24hSo+neKd8O+Q7tteDF4J4wYGbjy2zyaBqi69v193TBLUIVfzKr/xssZ+918zWzp5cPKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iptKjWw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iptKjWw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 827BCC43394
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706250496;
	bh=IkKEdiWNrqD43T8Bzo439HlN+n0gkGEbJV/P/9dv3Ec=;
	h=To:Subject:From:Date:From;
	b=iptKjWw3/X3DsxRUUq+OCnB8Lz5Fm4NhZDS6IKG+wPTyhasvCXzlbv2c2iduJJq9V
	 X6T6JAgL0ixIwmFR/CLsWCxLiw36LrCQBlSCoMgVbyqf1g6MK2bw3Tty2RBN3RUcnO
	 hVEoMQZFSnpOCi6EL7Admhe/8mPRPMBuMAGjx0cwnv9FwLnlmUXero3VYPCY35A7Hr
	 KEPMboSBlRIpRxHsfgj+f2EIB1rqHYD//J8iKXK5g6DGn0jXdD1Jy/UaYxQ7Xanoux
	 N0griXHVrALjYY0PgQDPkNows5rPHgNZzYa9HrAFsPgKMga5XFyecYuGO4pvyYh4qv
	 11ZpIURQOAnrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64697C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170625049640.2915.17563044668382690029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a965feb352199529e94cf8c6a240fa73ad9d91351959d28cae582f8915e1e8db
Date: Fri, 26 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706250496
