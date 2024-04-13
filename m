Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DA429A0
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712983163; cv=none; b=X/dSeOxIqeE8yszz0mq008UFt7tnJRrk1TK7381rMiuy6p/w2g51t5mLkggGQrHntrAhVj0O9Qm/iCOszQRveErcoPq+QzOprNq2DhTgcPMQ25I74kYDt/GASC2ToGryA860LcOYkyoSq/L0TemTSwfzIcL3ew7dMfOIJUVNVcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712983163; c=relaxed/simple;
	bh=aGPmdM8ltMJmHC5lXgA3WcQu6mLeY/92jJkhBIygBJo=;
	h=To:Subject:From:Message-Id:Date; b=GRKoCOyF44xHXc0/yTXlqGHyZ40FDney13OBU+3wLzphdm+R+NMkFKGFmM3JZaNlvAT84Dhs/Pbs2Tu1IMJuDyHZkCKp2NCee7GoYPVX/+Oc0G/ynnZ2Mkdfj08YoUgrk2OdqlPEoB88qDp4U3ww39UUsvGOE423PDy6+IYM78E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QR2vIRQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QR2vIRQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA098C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712983162;
	bh=aGPmdM8ltMJmHC5lXgA3WcQu6mLeY/92jJkhBIygBJo=;
	h=To:Subject:From:Date:From;
	b=QR2vIRQnc0VtjQK6cZuEYtJNKJPOT1zWdG8mcxzuVJX3x4p+DwQ+Hy648t7IlG53M
	 CnaAlQQFc0jEqnkwdaCa601aFQtUDqQ1i2IArba8BNaZ43XE3bMzrpzMQtfzifBDyj
	 MuFtVhWhdWhoM6ITodeJJFwFo2ycX9/0ZMG6phLEsa6J2s5yFeiazFQEZ/5VSh2hYJ
	 +1NTM5w5VsjMlPfLlzortRGp4/bxWYYWg5Hb3M+K5dlNgi/Z2l8VSapdsHuF4HlQpN
	 R+Dcm+2UfVWNgWUhBz6SVPlmXfN4CWZOkuBHvMu628fm1hrQWx7w3jAFWLIzKpBAt9
	 tTJyj10tu4R1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3738C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171298316283.26393.14731504362984451309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59cf1b65681a1599b690a4e85a98ba7e1db7fb6b2fbe956d9151fb9cfb32ca3
Date: Sat, 13 Apr 2024 04:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712983162
