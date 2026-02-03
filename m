Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ED330E83E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770111234; cv=none; b=WVn6d/bOyEhKbWoMWme9SWKhZnPcIEZ3klmQjaBN59v1XmTIReUUwfjQC0OZVkUzlwm/eya/bvUHq2eL/ZaJouXAKxQQMzMZdqY/gHFaHdCeni2pLGLRt7+td1t6P0LnINxPNYgr3PO+yJcCo4tRLH/achoypmCIRy3oiy9uvvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770111234; c=relaxed/simple;
	bh=XlxC53k/EKnR20G0Ze6GHmpFxE++ItDZianRSdt62x0=;
	h=To:Subject:From:Message-Id:Date; b=IE3Mp9rprpyZ4VApVc/32g41W2F6C9qCoSbk1/i6v7NgEtHEKRM3dAbeAdkpOz2CPjWie5olEQHcfuTTzsu6zwBsXfybgpPbLVrvgcs2SsCTG4o2haoQjlUKlbFitid6klq7gXtF9p+bgj19zXbCDBRqi8Z4vz4bR8y/GOr4a0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEzRDBgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEzRDBgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE3C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770111233;
	bh=XlxC53k/EKnR20G0Ze6GHmpFxE++ItDZianRSdt62x0=;
	h=To:Subject:From:Date:From;
	b=lEzRDBgm2cJBKjGAHzi8JF5TG5G4AwUQj9CC5ukKBwsmqyVZKoYHIuZ3uKHrkwwX2
	 9OIJcw7DED1RmDxDcVxI3RozPbwnNVkdB5Uueu/A7TWC3Sc4dTPnt9LfZg7/evEDSq
	 eVhOxjfxO9X2Sw2RlHLg5PgYosa31dmtC4+eCg/+c503nlJ4LsJ+iunJs2f1W4ScRo
	 4h56MRxK8+ZTCAD1iMhjavxGgSR5x6lt+POWr4hVHeeXdkkSaAuX/Y7Y3bSggvEiKd
	 Fi+m4nuoWnuepm97ywAnqauXYPjcC/dsL3/aK/65QS5cQH85RqHCEtykSQn5A0qqdt
	 Oy6WuTPXB3r1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98624E83070
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011123361.27383.8306477685828498233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d747ba7cecdeb4f4428d7b3ed6a4481ead33df6a68ebeba47eb1b8c495bc6f67
Date: Tue, 03 Feb 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770111233
