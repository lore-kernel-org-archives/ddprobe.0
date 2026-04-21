Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2882D3DCDBD
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776802054; cv=none; b=OMk+oq0q2/0EX/3TXF8IQSSwfDVJi5CBVMgDdi4Ropdr9CVthSht/QLyUIOoWViGseITsbjm95AU3RK4aVr0vlKO6jI555xwk0F1YK9iwVkcs20aRm+afT+QEOW9dnHcGvZFQEgxYGyxiq866+c8IAY4ZnJAru+7IMZ7GJpyMzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776802054; c=relaxed/simple;
	bh=4B44QxuJjohlSb46BK4XafYD/wCO8vrWXD3p35FeuYo=;
	h=To:Subject:From:Message-Id:Date; b=pcDbDU9UkaCHtpfR27veIeA98DyiecSTn4FAX3095JbcBjNBS/UcIxJKfGfT3n2poV/1IvMKKsMKEvwaQYmC68zN0z4yClfggLj17NqMz/A1luZ6lfXAukozlEtbPwc+MdZtrWLyDcQicaeBd2AaTEQUpHTETXBFkGR1srmUN+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTosHFCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTosHFCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12ACC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776802053;
	bh=4B44QxuJjohlSb46BK4XafYD/wCO8vrWXD3p35FeuYo=;
	h=To:Subject:From:Date:From;
	b=nTosHFCI/a30F8X7zzbq7WsKSFg6z0i0iZS0P9/Mb3RkywEzuAH1J8fSWnJHHF8L/
	 DmqAuotrsCEFkLSg8oT23bA7i5w0dTUxXsgC2u6A7/zuzzlQvGyCYq84NmCv3GuB2+
	 pArOnx1/aRmtCBJQgpzDdvpYP5DSOC2WBKwtQGBM752eLwN/Dys6YFbGwOjNYjykod
	 btc6+lDEs7MliKnQw3IOdIrE8lXuJclniU2MnzR4/dMsr5wuW8ma6tYf4Y+F2ep3Te
	 iyOjFCT3wHXMVKYQvDV+5s3uMPvvgGxaDZgZCO4jk3dTZHuECaZo1/WT859jogek1v
	 NFq2F3JpZzfWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E5FF94CAA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680205371.7643.14500509808994540315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c33c702d0e5502b1d4c801675ab994191f50075093b61f9fed9e5baa519df92
Date: Tue, 21 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776802053
