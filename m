Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592ED27144B
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791947434; cv=none; b=gJeRGuk5C5BryEDaefyGqgaN8CNxQulCAGMwIDNgFBx1UZEAGTGghqEkGTUkMjyGzamzaLftnVxAxzIsxsZ9xky+RmTmEFbWoDdlgVthF/yIWXOepF/8HjXfwq2/RQ5I2YuzkMvAYccNXGQujQaC5WLCNFiQc+TP2rS4p9rvNIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791947434; c=relaxed/simple;
	bh=vRoNAckpUqNIKp7WgiTm7XYUyuYrfiUj0e8Q7dCoGxk=;
	h=To:Subject:From:Message-Id:Date; b=YYE+HzI6r1geMjRqajxsfE9bRv5qTvHry6WXPxvA33JHasO+OIPW7dLKVQaWcu0pyfb+XNZE5MSWOBtRhVck1OLIcklNvZum3CAYkiD3Nh0SBaZsfGukHhvZGJ0mi8icg2XSIh/OZ31DsN+qmYQqNMBx5YukpDN2QnaiIB9c/g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLSygZ5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLSygZ5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C10C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791947433;
	bh=vRoNAckpUqNIKp7WgiTm7XYUyuYrfiUj0e8Q7dCoGxk=;
	h=To:Subject:From:Date:From;
	b=SLSygZ5t+9kbnKu/cHLkqKp8qOoKsx6oUOxZj9pOvMyPDBOZtmAqpEFk/E2+xXUha
	 +xiMdmzy5nATebP7+RcoEjPLZTF9kNa6eIM9UAwbrFHVoIILuyDeu0R2eiIGabR+yM
	 l10tcClYewtgVy2MSGLs/hf6CGkKhVcefqVPD28rvtPIzUFgEHaUbuviUzAG/YCa3H
	 3Gx5jSmrFwqBJVez/a6L3XyjPHw8BIRgnhp688ele6KSGkuL7lx3IXESC/Co50Ciey
	 YE9HN4uywwIgonG2gRln5jkbyrd3gi6MmR1DUKgLUbe/QbUk9wQtu+J0NH7F4/rVLQ
	 Wghfi2wrKgWfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD3BCC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194743370.12752.7492657704913549764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e913c89d28649cec494021aa59f565c02a18fb83d389a8b1402932b73f265b7
Date: Wed, 14 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791947433
