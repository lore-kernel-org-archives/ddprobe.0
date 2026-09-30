Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDAC44F55DB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790778036; cv=none; b=ZSeMU4qAx0VDEg0oqVh6dvoVIEsaL7x3lGncJTXKkKO7SVdc+zjkFk62m/0klx8njOo0K93+O1X+DkmE4nPiONGQ8TL69B/vGZS3UhMOFi6WIcoZ/kvqPRucbSYvnWYD9neS8HAKt/fBHMAezaKZ/N5X+lptjI2D0LxqPK+A9Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790778036; c=relaxed/simple;
	bh=XcQ14T6L4xpG1OS4zoOcHY/VoNDRbnZSClGJEY9CUBY=;
	h=To:Subject:From:Message-Id:Date; b=O5t2yXK6ZrmRjZ3g+VNr1yMFrrSmlW8avEna3pCOu1DcL2NR4bNaJ0aHLfAWsdtjx0Jc8yWNZ0mR3XQhONjQoCGsVCvWVzENMzf9ovTVY+QIpeiOtCbN9sFllemLQpLERbx79O4RPOH0jMWksLEL33YzqEWjBpMs50ptiduFxcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJyw6YMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJyw6YMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5BE8C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790778033;
	bh=XcQ14T6L4xpG1OS4zoOcHY/VoNDRbnZSClGJEY9CUBY=;
	h=To:Subject:From:Date:From;
	b=SJyw6YMlVaABZ0WyGSd6cJZfSUqc2puITpzEP54PhpjdMadDQ4m0apsL/lH0xJ++E
	 YzbSjE0sq2U0p5LcWlxEZwxMi9lFVkAn1X4lQ9DA5oUIvEO4Fvv7XfdNqEmW+ng8m8
	 2luOfV2oWTXWbgC3NqGHp8UdMlppXl87qAj4a+JJ2RMznmpQ23O8CYH/Ct4aZ/jzfp
	 LI2MI+g5syWqhiIr6Z3F9O7IZi/9BmneNYKx55RXwrHIN9XGVzckn42VCE2ppAccxo
	 wdTBykBPtFCJAaY2doLuYr6VPfYUl2/sgh6CD44DHpgNr2YUF7CtO/BCVdbj+JckG+
	 GGFZuQHgkZmYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FACA5FC7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077803369.31596.17525632103406929951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4775a2dac555cc6430156e171087258e5ca49ca064617097a7d2486a7f46ede5
Date: Wed, 30 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790778033
