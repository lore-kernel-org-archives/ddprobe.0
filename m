Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4045E298C00
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747310394; cv=none; b=M2Xdgp7nF08ggW4TthhzLk2a0L3IRl2T4gefb+ykGbGoq9u33xK1LG0eXTNAp7rE5z7njMTpjzENW0EGZ02DjNh74liQAYe2gMof3OPEdRr9CxsEwp6OWLgxPLzQYnw5BltNCUZOvUGbPYs7SBu5m/Fr5UQikg17pf//1Lg+Y6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747310394; c=relaxed/simple;
	bh=hia+ccNTJzLoTZaDSlR6KXHIzT+RJq6hL9vjrzwhyQI=;
	h=To:Subject:From:Message-Id:Date; b=VyyqgeNFLz4rqp3v6LNKijskgbBtpLfDDw1j5mkm6D6OAux5LqREZRItckQmote7n4A1qTOUHissRu/JGLdmU1kSf4u4SsndjfQu676D3CF0DCqaS7kJgf3Twmm2u1m7IhBTW7OBc/mjNE1R3SmCfoVK3Y569sqTNxMfltYbJ24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQBStPl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQBStPl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E5BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747310393;
	bh=hia+ccNTJzLoTZaDSlR6KXHIzT+RJq6hL9vjrzwhyQI=;
	h=To:Subject:From:Date:From;
	b=kQBStPl+5QzyAiyq/IriBavgy+jSRO2Hl467am7b2gr/uqECLE7v2uM8FBeUz2LZy
	 jL4B3qPNT7rGLrQyykmb5YrflkyHcW5q7NHzP1hQ5Es1Vfa81LiW7jHZXVph9aURLm
	 FfOTU0wkBb7TV45V4S6PbmNOGpxsgQxKGuUMp1LIPjyRz9QCvGiaNtl/U9Pdbku4Je
	 sKu+1SbT8PsKdVnpzoVX0DAXyn0raXilglZiRoMAj66SOxUddzTQwxPsxrLNRF4njq
	 Ubb2TWuDX3SmbhhsX8OIxWyI2zhDoN+IkTpFCTcYPiu2EhHBqeMfb5rwjqNjbNVRRR
	 dcxVcwYcy4sIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907CBC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731039358.11832.14759744481970199192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c5955e8e939e100706a3faf04eeade197695f2361c25a5312926a3f8bb389f
Date: Thu, 15 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747310393
