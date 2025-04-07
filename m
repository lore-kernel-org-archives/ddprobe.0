Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BB1205ABB
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744041594; cv=none; b=tBgrRGMxkoInvK2cvjkJBT/XCoTY+yIkLvPJbdKRUXX0ocPO2r5s45l3te8M3EbnfHmZ0Juswnd6AnSbu/n8JXxogDtO0bfIdMSCw+90SnBtCjSF67ueU0zZ7EAYJVnfzUCC78XirEZ5TlhpkqltRlNWxpxgbZPi70I9N0B9nas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744041594; c=relaxed/simple;
	bh=Jhq5Ji/NK35w+e3TlY2jgkY0SinbEpDKMhaRaNoFtks=;
	h=To:Subject:From:Message-Id:Date; b=XUTxepda6soe62ACubPUSPQ3cF2dbHFq8yhRq4cOgqwZXgLycVFeiB2WqK80mTbDa/CH6f2L7v0beVpPUF4fCfNeBEFtofS26fehCiD12pnh6rWrvBFA5uq0l88CThEFTHVS35xqp+09+3NK2HUeM8QCcFgtkCh6Tq+IjP3MkGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIZ16E/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIZ16E/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7723C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744041593;
	bh=Jhq5Ji/NK35w+e3TlY2jgkY0SinbEpDKMhaRaNoFtks=;
	h=To:Subject:From:Date:From;
	b=GIZ16E/WnlPjVixVqOGutmE6XGwCeT9756y15fhE3Bjikn8R+Lu6CPYEWkq/kjf28
	 ma80A/FA8cRQFnc3Yha/0Wjskorxpv/tFons78Dz1hGDQA8R8/sBqfulnkL+fE87bv
	 2nI3BBLkVc7bJ77pcnNPBD9Lt+bvoMUzFUtjMLubD1PHtIyE7nubyFtnHseXBCb4zv
	 wAqPfCWQGhvApVDEt5Om8JlJUMzUWKlbVVySNtDWSeB0bia4Kccy7Ncol757OdYUE5
	 mCyBbTjI6R1LIoNCQwR+tIf2T9avUHla4FKQdQMTOhiPfUBN40YFnjmZPzDTaUh4tj
	 neX7yvn/YTJmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A714BC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404159364.20040.9245520434095643220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c44d1258bdbd566352b4c764eee9fc9966618cf20abbadfc8453d4873dfb3d56
Date: Mon, 07 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744041593
