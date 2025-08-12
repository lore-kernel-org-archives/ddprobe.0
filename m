Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DA22FA0C1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755016194; cv=none; b=Jc6ofaDz3w4B6kcGYGcA/m+jKa5NTKOPg1JuroqeUgIGBUuejqtttUgnOHRSTCoLNS80iVL2y0w2sopaQwz8oJDmsqQ/GywvQvTRe1ealO2tr/sQzN8WJeMZUOFfuLtC4Nqomluwj1gAk69G1J85j5OJQQH6y32It/t1eN8qhkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755016194; c=relaxed/simple;
	bh=GeJz6PhmCROxkU3zNdmNgJhPgdI5l5+4xToIAXuy3yw=;
	h=To:Subject:From:Message-Id:Date; b=Ay8dHFaI78R21Lk5HIgg0wac6x7kfQs6ORKUm6qxjjojyrhi6PjrLf+vzRNDrCyXYPYAFQdLlpMsJWY3eVpj33FRnwnSsLuB59cnlhkU6QIiIfCa+NfPBS4QaSsgxVMmrPa4VfFB1UFk3OEZmnFehNjjnsysgVDj2KlbwCCXIrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmnpggRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmnpggRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E207C4CEF8
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016193;
	bh=GeJz6PhmCROxkU3zNdmNgJhPgdI5l5+4xToIAXuy3yw=;
	h=To:Subject:From:Date:From;
	b=BmnpggRso5skVJVDee4JhPI/Ac0zsrKM5jyaVk/6MjBOcvNZsxxHONkzFiBAuKgVn
	 WNkDlh7x//6G66UWqtx/reLraxHnaP4YQtz3OejZm6kFGZHvTxSVrYVRx1WSnaCtly
	 rRMw+ORO+p39olOWaTcJdlNJXJ7WByNJtMHQoCOY8EStohGP61V+UBAJjlJfBDOtzo
	 flhmuegWHstJZ+hEnYumrufunmFQejvOtpOM3a6KaxKv5A2pWY30Rp5DT+0pSYMGuh
	 0mFu6b2QWCW70EXWMy/15QWLpm7QuzFsOx8lCWcR1udfd8EhzsRkn3FzeUVrstZGf9
	 opzzIQ91PCO3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F240C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501619357.29348.11637537693904799503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b296aed4c410be5e1b912b78dee543e4e361dc7ee3442340c81a27f5a79eab
Date: Tue, 12 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755016193
