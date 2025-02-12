Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFD520E314
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739371016; cv=none; b=OVILCO4SJrfGAxsLTw7LRZgTXWjAmNhoKapLLeWnafm7WPCsL2vRye2Fc7027YrPcTdMAQY9i4ncItYfDAgcKpZYVrUqK6jhGBwJy+1pHRvuypAWxhBleYstRx+rD3XJZzN2p3Fgt2apFFItNOPrPdJpimdvRjBeC8quWK6cH50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739371016; c=relaxed/simple;
	bh=NrErMnIjZN4qZ2clonEKQa4+ypEcOVEYPqfRXlqunYM=;
	h=To:Subject:From:Message-Id:Date; b=IM0zoKw1QulojNpOn5tTGViM0mWScLDMj/0uIkyRQxUbl/PQcTA9tO1mnqkskaPdW/4Pl4q2SJ4fykL8MUHgNRxGUrjttfqZYxCVcSr0PRrmanJFrskLfHIx29FS3efOJwN1s6/x40bLuMA+2glPgIGsfqg/EMLszW4ljApyW5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDtxVQnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDtxVQnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF54AC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739371014;
	bh=NrErMnIjZN4qZ2clonEKQa4+ypEcOVEYPqfRXlqunYM=;
	h=To:Subject:From:Date:From;
	b=YDtxVQnG6RBeXbnUCUjNv6LLBGYn4Wj9gYRAOEzxi5JLeNANQIV7uuvhoUzy3j52h
	 TsyDUyu3vK3QpENTgo8x0M+b+e/f5O/hj8+HmAXbvuPmG7tXT9Yvo3KAuLIpw0t/qK
	 kzs78eOiX8yNzTcAa4LGEHwU9VFPh69rBnshncof5/MZcF6S6hzaEnJT/PfxPQB0Qv
	 s7ZPlhaWHvQN27vFJ+j605Jwok2EpioCmn+FtNkfkwnaLyzM2QgUU+MZExQQXD80+u
	 Jhlu9NzYHMCoEHb9USakvjy35eAT9oUObtScqVjI2oQ6flCD2sVsadMwjDND6BJ80+
	 w7QOA9N0KzSSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3736BC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:36:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173937101416.1059.11728516411209657415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce9605adfffd77eaa8b84139242d20709be13aa8eb4f2e39dc8000f9831111c
Date: Wed, 12 Feb 2025 14:36:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739371014
