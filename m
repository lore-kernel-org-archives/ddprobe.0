Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDCB43CE45
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789382434; cv=none; b=FqUKlKuDQkKXBGIHOX+CVGYoe7FS3LIcowApzLi1YOTY/JWCfOhBU9ID0Eun58M5a7ffOUwknyepNAk4gEFkbeMVbxZ3sueXcbD6IV9TTrVKt7tmWpIl+9/1vcbmstpFIlfClDzq+WbPNMwVdUALVSd7Rnd9ZyW9ElE+GY9xvzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789382434; c=relaxed/simple;
	bh=gS0QvECS/dynWQDzxObKr5rgpNhIVgtTvAbpKycSYzo=;
	h=To:Subject:From:Message-Id:Date; b=M0KYK3ohrGHxEk4gTeGMHjH+liR9Iu/R8eJeeMk4aPLuk2cTyOZkOOg+5rpJRh6kDyFdf9gyLRimN2SvTQlcWe54t6qghM8331lj36hFDcxpimaTysVLOGutpKPxn+g4fc1C1oOdilmbs3MZfcAPVaEdKtaG0y16RDwajFkpkrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvYHl4I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvYHl4I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76E2C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789382433;
	bh=gS0QvECS/dynWQDzxObKr5rgpNhIVgtTvAbpKycSYzo=;
	h=To:Subject:From:Date:From;
	b=YvYHl4I+0wwLeTjhWzUdcZ6XBcXuc3KJOLoO4JbPR/+g6g5leaZ9XXZPHVQ8cOY3W
	 pbdD3sGSJgTZ2mdtIwoJBeV+F1BiV1PPetrv5z+Ql2W/Ol0jGW/etRPMaVpl6L60zG
	 NtF6Ft+WJkP4g85FOUY3cTmWD1smHblBLoWvZZ/gHjLh3/aEgwZeBZV52TQjhFF3EY
	 JV0kjkCvffab+tNMdQwzj6vSPZC5g4N1dRQe2qRL231aktV+elcOuFRofXgmoiplSs
	 CBwVmkLrUX1a2My/yCLjem0b3CvPyFQcic9EUvarS/ejFlm6Zn5LMjhdn0MTECxNko
	 uSpomYGCuT7Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CE4C88E65
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938243371.2680.12795743985636732129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4a05e711b8598ee50a1a2e5e7692a2ae6008d8f989b28096893d0019b17cc0
Date: Mon, 14 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789382433
