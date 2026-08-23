Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534A1493654
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787446234; cv=none; b=p0FYNrFgHzrEYeMI4d+Z6ETp87LAGWSoN74yLsxty9X0qnHnDs2LKcTUlGks2IaoYvCIURCYkvIZ6JtPkooXxOCQ0W3FoZN6cLPk1Af7LTqNAtaRx+EAShOHJ37MO1Dy+sH8FRwj9EGJvSCKLnB8NE5K2dMoD2+o/F7kARkHhpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787446234; c=relaxed/simple;
	bh=CDmWJoX1y1oOc4ajI4Qeq1Mx/cklQay4WsasZwScvxY=;
	h=To:Subject:From:Message-Id:Date; b=Csa4ZvWQTxobT6uARbd0Y+AvCUQnNEItShCDHCa01k6ShrSPNbY3xJF6KVglGB66bXoR0ej6V3YItr8rnO+WdlFDzMnInQKAJL58DwL753bxBZp3e2KscJ+7exDovGeV6jzuzWeBHLjuBbPuoUMY13HOWLdK1AFpXFems0LzpTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SII3Qz/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SII3Qz/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AB7C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787446233;
	bh=CDmWJoX1y1oOc4ajI4Qeq1Mx/cklQay4WsasZwScvxY=;
	h=To:Subject:From:Date:From;
	b=SII3Qz/ckkyuiYM59c9Fl4LN5G5mYaBs5snN/nbJkpODcGdpmxY1p8Dk0eMcvv0x0
	 AEFDNysRmfb4Ds22ERpehPaQvO996e8J9YZjX3ptqcaQHUUiQOUjINelOlVvgJOaZA
	 n/LdjcD2WS7P/oGeDDRclUgIU4xfJ5/TYb2CeDUzVOWrB0OC439IOqZ4rPilHa4VZs
	 e1F62qJxv8oVKsmcKzt78MU965u/Uu93D8l0FwPlKVs6cOkiOMAByIiottEwXxLLXo
	 PTyP/QE1FwZ/PH7fHQ5+csZioT+DlLdGDzUsQ85oCEl+l0fO9TAehWEskuM9W2dboB
	 tyOdraUILv4Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADDBC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744623369.7651.17743596746046126690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e84953b92d98d62b704589ce8968d74cb2e63f5b34e09d90211f6e8152ce2a9
Date: Sun, 23 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787446233
