Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D253382F4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771799094; cv=none; b=gDcdFx7U9IFy6d5TPOVwwsgFt5MnZ0ppO3Dcq2yj4qOal3PoVdJo9mRNCgkwznkEzUdJNcyoBQwBPbVhEHh4rGLA7FwBh/UFs/jkWOScxNimapM0nOTmbiV3HfS/HdCnfVipWFQXHpU5gPPtPaeWa5uyBDMpSR2UuC6uGuyIVCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771799094; c=relaxed/simple;
	bh=OO2fTZVz78Ncr7ibk/6/InB30aBVUEfBJ6+RkaVuxL8=;
	h=To:Subject:From:Message-Id:Date; b=XCn8JCh8xl+O01bOl+9JSnCc73RIaX+7P5gjh0gSczbQoBYH+8FiZQvAej1vhAAPIODfG6WnoyiGbf2YrskYfdw0dC4Y5UVw1VJezEFuY0cN0bOwOIDOSruSJk9A6gCTAkwnCxq3mGoanbm0ga6DyPaXGaglbY6ahEfGUhoxOLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlT/cSnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlT/cSnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6D1C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771799093;
	bh=OO2fTZVz78Ncr7ibk/6/InB30aBVUEfBJ6+RkaVuxL8=;
	h=To:Subject:From:Date:From;
	b=NlT/cSnqd5cxbQYDeUUdO3Unyrl4NrLPGoxAycbkRqgGoJ8OWfq8B5ho9yHYXDxZX
	 UZd0RehoystQc99N96764cG/CasXQ4JadciqdlR7F5mRtUcoiocygLi0cbyBf2EQMS
	 Dw6I9K37rE1U1RXVorVtkPULcXGdXxgD2v6AYTMRlCT3BIJRODu1iKhbZDpYlIECaS
	 QCFDPzFptTOXvOqqNgx5oWhhxdDT+gLQlqzGJqYs/9OetA3MuH3JQWM+hABeOFArd9
	 9mTrOyu8uAIjU4aHutV8PGTCZ3kTl76HUGgopAOn8KBkDO87LjmRBDZt6jSm+Fa2s4
	 sIFcjhEBDX4Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FC2C636C1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179909359.2915.1168060775905769549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2fce6a1232bf7e0eb1a19589e65fa5fba72527f6c0b546b27577997a7f84ea
Date: Sun, 22 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771799093
