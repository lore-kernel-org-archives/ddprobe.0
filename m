Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E1A13CA92
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786336234; cv=none; b=ud8nuo4yBYyHDlIQzs+CKGLiEuN2Ev2edrr/gWZgG6lvm2kKjZOE/jvz0MsKMmcw7CmZOs8Lv2Ms5WfkcKMjEGSCbfcq2GjparjHrrhIx1H2xqZcrCkOCnMJDtn6DtEJVVGgFBExCXDQobzeThafpQW6frWvSDWFIdK7BO0i3IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786336234; c=relaxed/simple;
	bh=dztu3KJw9R8FFi3cjq4NLrodFiu1DrJrELwtlslZHIw=;
	h=To:Subject:From:Message-Id:Date; b=jUGT4IkGv97hL41z5Zs4aoKBIIQerAsRHVXg9q0nGt5RcU9XPR6dXr2f6S7D8fk/yaHVJm8gNhY/wo1hpUXrJf5yOk6xYutN2xT/E07UGeMG34qq9nhM1KitB0IGJrzSmb5fj/IJuxAzXhHVpX7neozki25CABCpKb0Jq9fk81M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvbEByxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvbEByxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D324CC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786336233;
	bh=dztu3KJw9R8FFi3cjq4NLrodFiu1DrJrELwtlslZHIw=;
	h=To:Subject:From:Date:From;
	b=MvbEByxyyVELlJshoSDkWsqvD9h6uWSCbXywqhCRTWKjY4kdDTy4xQgm735Fswiqu
	 JOoMyhcHonv9wfEYHrw1WmNT09h6ovZGAgZ8RaC6xikb4zTvHqfuowIS8V9QbrDjDB
	 a/NkobgGZdzZhdmzOd32KhRlDJNJB0fsoHWVANEz+rIFSFkW/trNg4T1lnzZhysd0j
	 7FP5QIWKRNEK9l/tUZUeYovrRNThu+zOaa4INS06mlXs0O3gz7mMCgJwcqe/wzHrPh
	 9ygrACeskW0weiiIaHtByYL9XtVdvFY8Jol0W8X5Cp0eet9Cr5ByD24qxmRqyI55/o
	 ReuB0aIEVxYuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD63FC5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633623368.1044.13021804036149743001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396a79edfd367ba7f4f2c9e86f34d282ef838f523f5cee440107adeff66acc1f
Date: Mon, 10 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786336233
