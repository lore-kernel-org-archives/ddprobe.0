Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8B031B823
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787907034; cv=none; b=U5+GqiuY29XN2tf3DKsmuYin79g63SiAgIIBVY8RL9QJqsZrpGxSCaqVjzTGjFJ2R+z5y9poO1nWDA/zo+WEmfiCJbYDdv0S/vAhUJqJDEh/0QMhXR4wDUgAsrKrMqPBdH6CLhT/dI8Exikirb6kUZG+tCxCAYvZMOTKKyTvbLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787907034; c=relaxed/simple;
	bh=4qGFj7ejlYTlEVuJwFDN48zrvUmSx40u21XxmOpA9Dk=;
	h=To:Subject:From:Message-Id:Date; b=NxSFe8a8A0M2IQv2asDCt7v88HWLIWG+3Xg3Rl0mQj3MLBv8eVGjYFOLAQedQ4rZ8GDPZfse8h8Iy45YK0N3udHRj/aGtURAqcyNa+qtCWMGsb9jMNZCrob5dLUpXXxfoXAbnUrIfX7kUdHOgdD4iS1aAKUZYqF1JTkYePYfFdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPoIDPcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPoIDPcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CB6C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787907033;
	bh=4qGFj7ejlYTlEVuJwFDN48zrvUmSx40u21XxmOpA9Dk=;
	h=To:Subject:From:Date:From;
	b=nPoIDPcuMxY7ZnGiwTiTOohpVQpTm0d1fagpLBCHvPfFOUP4+mA1Rm52xAGuZcNQR
	 vspeS9YSMZvKKWjr2ftg8UT6bdCgXTPVxptdwgmHInpQUb1QjZ0aPxIam/DgKJk0/H
	 vIyloL/zcaHE1L4oQAp2SAKAhJUsSFI8e+7dYkhmxlFNae3+8WkoKaxU59UUvosJ6v
	 KCSGBxvYNqrdUB01UNEcuFbidM6TdidUlrz9Na19VuKKgo5R9i50fEIh3w60hc4VOm
	 nH5ZeGYe1ughtsvEj4eHLlG/zN1RJO3pvMuJPDgkKs0/DdDcqJ6GC3c4NOGyI7FJhI
	 nM0885ZuR1hgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14C3C61DCD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790703371.23128.12781447757207578139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7688987b9af1cf8d27462cc29ce0d4e12ca5742fd4d12bc1fd993ebee2cb3601
Date: Fri, 28 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787907033
