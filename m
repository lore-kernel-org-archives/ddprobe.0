Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081361FC101
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775961454; cv=none; b=AerVAwVJeTnpRwK+gtqafAnrp2BGfhGjDcL5MSZ4n+4ysLK+mbcJfsLTTXAdiwGeg6GAGv1GFbmJhkbeuRz3pGzmPojY/ZDNp6410KKi1X//FPiUvgkzzxfrDd1Xcr9qOkvd10p7i7RwkPbxVwevqa6NURDYkbQ6kk+pXo5h04c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775961454; c=relaxed/simple;
	bh=kE9d0YUog4sH4LnmZkfZs60/GLJXuz5ArU3xhocgZdA=;
	h=To:Subject:From:Message-Id:Date; b=bQfEd4Yb8ITtzRm3ib0APXI6SQ0+pTo/OU1AuY6vIWeJYM4oeDVReVogD45kG1lTXT94SmRypz+Pc2eGjQl666+ksqWbW1qcnU92Spx40T05Vp+H69z4hrcXd4v4kyeRm2N1Uqb4jPj2dHEhx7x3lhxw1rAw2KLsfG75ujKE83U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgQp6Dg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgQp6Dg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B61C116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775961453;
	bh=kE9d0YUog4sH4LnmZkfZs60/GLJXuz5ArU3xhocgZdA=;
	h=To:Subject:From:Date:From;
	b=HgQp6Dg9A/PEf0THUWFEm+zNbWbakvfoeBNPfTWsYL3YZ5AMzn91whpJx9Ebx0bP2
	 UgQHta1R5kGiqjKsxPWx/Gt0Ua31TJ+tDd0xn2omSai6jbcY1Eom1Ur2jjYqOO8SiU
	 9gLOLmzvuDTmUBRkLbqJ9J+i4Tpb0PbQl5fHDstdWXS4kxcsbRyw3n0h6sa795MGJs
	 rz736ZEv0X/UM1URZbsDJsllgfAqNVOGqa7xnaRDJIP7UgkA7JuprHUox6tihhOOzV
	 O6HXcM6ox6dnonLXZrZzbO9KAbPJe9mDdFgUpTk4SudhkfQxThqpyeURPfvQNr/CUz
	 qdHBOU6kta7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC098F3ED67
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596145368.2491.14525385218345557389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c1520b93a3b6448fc19b44b2856e0314872043c87878ee6c801ab6537f60db
Date: Sun, 12 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775961453
