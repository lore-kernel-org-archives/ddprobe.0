Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191FD2BDC28
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768328634; cv=none; b=XoNc43iDnzsjOnH2s3hBpcalsPd4d7OS0DOE5toqCt28RPkVO0dwqfvBytgtO0JDilG5pL8yg0w+gXHzdqK8RbMBbVujiAZt1ALyMrkwmKjdoYiFnR34oo2TFCt4AIG1AhMm+z/opEpbfXdTLW5zPlfIjVbTZKGZIhEw3ropFOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768328634; c=relaxed/simple;
	bh=C/7+drF/GWu2ul0gDVNLgNOizHqsl8+TJxlUpxks4Ws=;
	h=To:Subject:From:Message-Id:Date; b=OPIcG6w8JjVnkDcVFe5deWc104najF5fws9BQiLzcw78yWjiwwTjQL+WK+v1tQ0Mp0WYCvhXgv30btXv121KzzCTGsvSmpp2+B3eZBh8LDL9TnlSk9VNUT2Bp2g8Je7u1Fbs6nJsaJBgA9wrjvA8xb2WpGZJDKvRUdA/6qFWCQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIsnwBfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIsnwBfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA75C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768328633;
	bh=C/7+drF/GWu2ul0gDVNLgNOizHqsl8+TJxlUpxks4Ws=;
	h=To:Subject:From:Date:From;
	b=BIsnwBfK2w0iIGOF32D6OGf8L1snggmE+4jICX7sZwzz51eMkuVEkcotKzfU5Y0sq
	 7lKwDdveTDt4uy7wgBRHLCSMB0iR4nQtvL+aRbAFavoeW9wpk0gwhw8vgp5I5wH5aK
	 emRYqcOPIUAlJWtI3LyJXXEHBIg2EJA+kXaSMF/y3DV6nC+OjkYlGPKzzFvSdEp75U
	 ZqQTxUuyAC+/o2I33wLEyFZHv/bQLc2gcrI5nMNDynE115I2gu0ybyRVJmLDsveM49
	 Nt6bXQpzHj78kZQgMRdQF6pe2SM7+FA0Y0TdKimsMddNQ6a9OqOjik28VZLTftTaX4
	 FBA/NdkZ6o1IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92631D2F352
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832863359.6148.4680723496583940055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f2d091c05d6c2e25364fa4c478b92714f85a6209660ac1b31dffeea76a7bb0
Date: Tue, 13 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768328633
