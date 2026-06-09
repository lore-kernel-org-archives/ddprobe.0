Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A083AEF30
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781031334; cv=none; b=G8yBnwore38KwSrI2gRsIIe6lcRQrPUmKp3Um5GjU9RvvBPVvHqIf2g7SzKXXN9g0Qj0xMbGhkG6+lrFWLgOlZQnav0N8hZG2jgNEPFsKI4MCz/UNJ+BY/C5Z6IH24usQagL3NZo3c0JRHRpaKZqr5OmmsOJby5uLJsrKnjC1CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781031334; c=relaxed/simple;
	bh=NbAaKjtXVB+7dh9hbpeED0Q4rTIYwFsMFqL/Gu8btGU=;
	h=To:Subject:From:Message-Id:Date; b=q7RbsyiHGinKBVHA6kcpc9NWhOjn+U3PYu3WiOjKEgRAXBoBS4CevtrNWd7oSZbOIzL6Y/oizrXzP/0gll0V3Tx9/yBfvbHkKeI0bfoKQR1GHkiKWAJrsjauxNMk1LmL76MMbCxUM3ljHQJvACcc00Xfuf5xaQVi9r0ztMkXWho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLxJOI2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLxJOI2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E168BC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781031333;
	bh=NbAaKjtXVB+7dh9hbpeED0Q4rTIYwFsMFqL/Gu8btGU=;
	h=To:Subject:From:Date:From;
	b=GLxJOI2wag46Jx6OXV/3Ld6421lFEza42UWUQAv/n/WrA5GeBWjWC+yvIcrGUgKOL
	 Qf8LOcWIWkdIFgPDYrIYrywHhb2hQ3KM6lmjC7gBivoI7sGh1rhffajHgnlrq+mrS/
	 JayQoEcoz+ewDnpNnNg4j2xmUX+mk8+/qo71cD5w+ou+TnjiclHZlQPAVMki0n3TPk
	 vu6Iuk2BnedUANVU3J7JZ/FHKY3Y2LL8w/PfMZG+f23FHoKzrisklkCa9JcCwXL95n
	 455K6HsfDXymRHW+fPWzDBKRaTD/mbNdm90OSFsmEjza9hFF2lOT7At5iSFzyfpVeM
	 QEIpaVfm06H8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3698CD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103133373.14442.5743924897635163705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c461b22ad5e8ce903500b4e2eebf086286ea8d0e178feb833664eda1838d387
Date: Tue, 09 Jun 2026 18:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781031333
