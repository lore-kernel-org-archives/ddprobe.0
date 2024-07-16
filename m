Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27F11DFF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 21:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721166323; cv=none; b=hXKQRAcEEx+hZYZkbVkH5rTmKneGXa6BwAfKPPHnBP2ZrHJydTbzY6qJPQTUdLkpXhkjpOFXxz/kN2AYE7PmmrtFi7XnfmN1RdPfQKBOlMqTcELYAaVvf5zewXqY2k4tbOOxJvGiOcZy3mfmClPs7pl+vVNKwwXB3G1wqYbBSko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721166323; c=relaxed/simple;
	bh=989pM7z4rwHa4MQBXNN0nOIk3LeaGwEkufJCj8oXcik=;
	h=To:Subject:From:Message-Id:Date; b=Cq21ReH+C5wRvNZqAqkI+OQIpllYHA0SV98iBab2ZB+HYLNdtlu6wXxqqGLqjr3qBiqXUhiONgAL6xpqUIYJnE/rhLz1I9j4VDCIRXMv4NWK0Fq0BR43DN5W5APFa4aFX1b0xQU2WkBJ36iDWejS0+xL+JeZa5QzyksAciPd3Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVIogvCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVIogvCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5303C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721166322;
	bh=989pM7z4rwHa4MQBXNN0nOIk3LeaGwEkufJCj8oXcik=;
	h=To:Subject:From:Date:From;
	b=TVIogvCA+GXd/i/L158VFAdR5Tkp28sPyw+QNENPsP03ZJyEfjEqVXLQv9XMJWJdO
	 t32urrj1sC6PAvdH8iePf8EBBLV8yQ/VtvGjzGrGxGsGt1qGr9f7GDaWKI9ZJLSpfp
	 OJnayOPiF/6mH3RScfTws65I5DOJxbHv6g4ToZiiv/6lRNL+z4vme1eStmgzsgH7OW
	 8C8WLkbaaVntFxt/Epf1K7dwd60nznO+CgA5K3w/6aL+chK9D0d3rMPN6TgTEzzYTb
	 HCSdwYyekDK6kjnO9kqtwtQ3akyUsLJkkfaKJfhL3s79nisLa5kxweUqf7ZK7C9zrE
	 avStoUWONFOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5884C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 21:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172116632277.13023.13211246452789994870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c91181a2aeba48d512701e1ffd8d87c4c0c302c779fdfc810335b2547107ff4
Date: Tue, 16 Jul 2024 21:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721166322
