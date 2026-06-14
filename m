Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425B81D6BB
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781472994; cv=none; b=SBhLyuJ7fE0Eozfi7biOh6uJ6+pwLasEneOoumYx0+IUIadNjNZJf3YXUJNR2B5ZUuI4IeoVYhyIiPWl6/OrTZuINs3M+saHTzjfxmtPKXSXjQNlUNjQEqqX+wb7QLbOnFdXLAsc8CP94ey3zSuuBaRQPh3fda6QGel1yX91KiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781472994; c=relaxed/simple;
	bh=V2QIly347KhMjcro2jBqkC/QRwcDdzHjhhX9CLLdaaU=;
	h=To:Subject:From:Message-Id:Date; b=Qff+Mac+hubNgAdmU7NUxDWFHNcYMzUUXGHZeSvmWFvZWvoKeh15HIYZt5tpKgFSHY4w5DEbCE58alkFlEDnyV+aknhEsNoeUzHF83YMlHR2a8/EF7lEcJ1gxEIpFZSaffTGM1VmRx9X8n/ai7iYhn/vQUY5MDhZb1etycDMLtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELbWEUBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELbWEUBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAAFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781472993;
	bh=V2QIly347KhMjcro2jBqkC/QRwcDdzHjhhX9CLLdaaU=;
	h=To:Subject:From:Date:From;
	b=ELbWEUBK/OOF8vhRdHkep852AQ6u44KgOp2u4u5mR1HCsb26hkGFW8lHyWeRfj1+S
	 sYjYmVSD6rM1vlF1oADo8IhdB/0jHAWW0vvbnX5f+zlMIBXzl/YFFOJ6gfsGEMhQcA
	 gYwkcYZK+DwJIELuaVa4zLVMWgYvDfw7IYduNfrLnqV9VJFGzLECDbrHlzxp+nqNwW
	 PPVZUcXH89lQ8ZGiYExmFhedZ5YSczcV3coyyE/0G+VntJNYyEjSfzvp0eCfgeesTb
	 haqG3GOskTUdg7CMuLjqVP168qPwwLPuP1zx06zBGFBppIjGQ9fRSu+AWnfCMqNTWa
	 rpNuzXJqxxqwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC98CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147299369.6821.18352384885949818791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014d0170fad23e8ae4609a2e175cdfc59345a531206a5a5561ef014cfec5575a
Date: Sun, 14 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781472993
