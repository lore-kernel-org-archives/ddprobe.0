Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E0A476062
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785861636; cv=none; b=ZK4jRMqc+qDKf05Unh5tYoy+hiFiTChyMH+k6kSjtcG6dO03lIfrA3pKInEjF3Aov6QAFOw4fe0rs+/ay+FHCFUJAJ8ZSlrIiVs+HV1R2wNtE6CBmdRUD1pK+QrEAfrhl6q4YYh83BXyRYd2kOG20q+OkYU9Gmz186q5M4qzjXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785861636; c=relaxed/simple;
	bh=qBoyHGc3vQX0jXs/335+bnHu930P77eXaY38E2cPlks=;
	h=To:Subject:From:Message-Id:Date; b=XM/SYH66JwG0wnQwf+YAFTl4fsjOboK+DTs2GSlpWny/S3x22lJN9wOFuXnr9MHuBlqhs7XSeuJfuxzf9LW70YAf+IkSYe7XupfDLaoeyG9Mfq5pSaEN/M0k2RyIIJv7RI9xQ44gxT8NpWJVZ4UIHWVoVLXVZMv2PsIKMoiESGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zy7BIxnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zy7BIxnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BAAC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785861633;
	bh=qBoyHGc3vQX0jXs/335+bnHu930P77eXaY38E2cPlks=;
	h=To:Subject:From:Date:From;
	b=Zy7BIxnTPO30y/bOoAUfOfoe6oXyaO04VvdmJ5WZGFqAtyEm1eRqTOSFgIUra7vmZ
	 YBjcD6CHrJKOzm3baQ+Yz0AywjttWimmp6JzGgQ3fWZTaqK9nD5OFNKgmgzt34B+Zp
	 5+cgWDa4h23amk4ZbdaCmX4GyquJXrY6Yy9NF1hOKLpVB6k5JugWt6TVbYTTljQ0CS
	 pf0GDZiwttCRDAapFRDHzk7Fe+4gr456m6Hpc9SVII002g9oDY6qrbB+yWcwOkifWA
	 w6970N07T3JMcZE5E8sLUw3yZkoKi1a3zFRqXY9oj23Myvzx0cyAnCIbgis+J94AWm
	 dAc42ayBWa7LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8AAC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586163368.32271.15549673848722154623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d937b4c115081d0ca15267e4d5a24112511f5a61daba1ca9a1117494507650eb
Date: Tue, 04 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785861633
