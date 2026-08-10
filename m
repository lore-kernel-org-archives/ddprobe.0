Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DBA4156CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786386034; cv=none; b=Tzm6aQbl2NK24E3Z3EHvx66ZjqxUsaFKIsnJzbnPvoemB55EYmywroa0Y9NfX28p86TO6vw5kT2sBRg5uVaZuMerV6+jTfr6McGCrNrG2iPbwTf+8Qpc5yjkxfgFrj2QrsMCRfeTYf4WBAEtZjOiy3yvhc2uyiRLkjzzyxOKjgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786386034; c=relaxed/simple;
	bh=ItdLVjlLf3XAFV+lVGqSrMYFiRjBC40ALjlRBbtHmi0=;
	h=To:Subject:From:Message-Id:Date; b=d/QALv4kgZYbJ93KQBLlVkBs7yCe6Uscf+aet0UpdsWkPZAEsVU1RjMq94C/DLe8zyDbkv5jIFpeqQucUvv1Yc7ciQ29Y1a+un2I0ndP6oPgFUBI5ypIfHgGhJfy27DPnz5X5KsVyTgK8QwFyLe6F15Ov5bi+SM5mM1fHHKIn8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lb+lo0+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lb+lo0+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB71CC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786386033;
	bh=ItdLVjlLf3XAFV+lVGqSrMYFiRjBC40ALjlRBbtHmi0=;
	h=To:Subject:From:Date:From;
	b=lb+lo0+ylXuDyuopgC/+xjSlOh/SzXd6e8uKhIUZ+cbDyGdU/8DnhpRB5uRG044si
	 zXdgFmRJIoKB1kXoJ9WXs7PubZD8CBmbtz5hERiPJ5/vKMwOLYDNdMg991MPlhGitJ
	 mXFpbF+RNSP7jbbrts3a8nPaY1kQWM60pRdcxKkNJiozStsDxp8ThXYPgVi3bfbJYL
	 ouaB6k8M5cMGQYdL4lyvsrSeO/LzYhTXUM+lxhcU4iCfegtcx6VDOCQIbWDf1Ersa1
	 1C7ZUeXYnyGpnWXkHLsczKBz5LKr0b752kYa+dBTyL1qjrB2rJqC3Tf7m9KxIHzhS+
	 zNtK25xNQEluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A954EC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638603368.29720.17510446614796307571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0d465acf033da14586ecc4b3ec333d60d363ed820d93a94d964e47a995e3f5
Date: Mon, 10 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786386033
