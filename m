Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC4F2C031E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786179034; cv=none; b=la/IDUzoXC4KsNj9L7cdeSeJXKPrnxEz1nNiy8bvygMr5uJTI9lUWTBXnvYImNJmSNEAc4PYWK+HfKn1pooUE3/LwojNWjQMb9KWK0yzLBQzIBU87fzDSfoLjYg6F/+Bxfyqs7agKxj3MhvO+Pt94JmYJQVMLjEEXFbLbFv+fXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786179034; c=relaxed/simple;
	bh=clmyJkdLF9j2Qb/3Gf2Ns9paQ9LpzW1ksPOMMhcpSjs=;
	h=To:Subject:From:Message-Id:Date; b=gZslwi12JrUFZnt1QP2jdHVuS+6qKVnBsk0EIZ4CulJPD/QFmQc260H9rxU/jiT5zPhEFeKOPGws6HV8gNWfOcfbAEFE4gJP+lM7132CE/DZih1JQFPPHCeNfLUkGDPp2dfPKlGTF11sSxj9pXbMTgQueF2uw3Ych0V7Ow1PveI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfsPUPaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfsPUPaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE28BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786179033;
	bh=clmyJkdLF9j2Qb/3Gf2Ns9paQ9LpzW1ksPOMMhcpSjs=;
	h=To:Subject:From:Date:From;
	b=sfsPUPaCtkSrOcT6jNyRMVbxbOHsRLvslutTRr+hwLWsP0j9SU1p3+wsIhaaNSIhr
	 3WAeVqiRbw0kJ63c64RfRq/z/sNkfHTliKRggv0CZDju/9ZWkfvyc+3CCfUcTZkmHD
	 IBb/8Sh4ckzAKvzCop5qm+f/mZ7GnUxD52szwbz7PxvuEENP9MU218PATcaJZsLO5Z
	 nKtcmBPRa17tRFqp8NJyH/dLNjBx4ug87JwbW+Pvtj795AjL/hBFBYz3dQwBiJScHt
	 GXuVN/Nu7hzvadSuP6M2tGLJDXFRkCX04x3513VNRWEeV6cnx5AaxVEiTTXmtbCSU6
	 tSe/2bOPpfKqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A8C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617903368.2911.15337506416072253987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e8c5840fc4432a7125489fede2e4bd55ead69f7e1f1cee1d565e81b050876f
Date: Sat, 08 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786179033
