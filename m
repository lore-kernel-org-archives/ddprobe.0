Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EA240B6E1
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905233; cv=none; b=RL2XCEZ7b2+gdKRlAcbt2bsq7vdzQYAVsjjXq8YwTHh2I+zXiEtxsNOkdXAnu0JClsYPHnQ2+pJkVUfrx/RvPBwwoGxhWQtK90CQHhI5ouFqH4zO977KXwQPLOGj/CYqkoRWea+C18bAZKpPrQ2vrvQUf/wq6hH7zsQqq0vnz+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905233; c=relaxed/simple;
	bh=PBJNyqn9WNUblwI2QI8qwsulN70AWXJtZ09aeWiAMgg=;
	h=To:Subject:From:Message-Id:Date; b=YWAc5qVKzjfQx/z0EBIa/VmFhjVHZJrnTXaOH/imM1ihK6x9ufos2DNbp0/mfzDlf0c+snx82wcTKN+OqYRuZWAx/WEJpPuPuErqc+A6o+SW9vFVJJavW5hP7o3QEVrayEhOkG04qgRrwDfrH9AfE09gGFDI69tTpDMPxSBHB+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntwPUsJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntwPUsJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A184AC19424
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768905233;
	bh=PBJNyqn9WNUblwI2QI8qwsulN70AWXJtZ09aeWiAMgg=;
	h=To:Subject:From:Date:From;
	b=ntwPUsJ3nSEet7LZ3zvSrK9gcY1yUbuJUtnHgcAWLM6iFrBWacd0qsAMkFS0/FYml
	 RBl4aDuKCcKx4dQ5Etcwd9YWS0XPsvOId+LL08cPQK0XlwMO9YBJH/muti61WmjKgz
	 JH/8vZhV8UlapY8ay4dD4MJhoMRVMoEIUse79kB9vHPK/Db4QC70Gb4JYw3U4UdGt1
	 uYNnS/PinKrhOA21aEcNSm4bNWCzNQs++bXVigd1B1e7/d0Usdx1EI6B8Vc/H2J9Dk
	 EWTQ9lNu6jTUjnZGAylAYKzRDyvvl1VTpP35je0atDEAyNQQeIIB+cvlyrPxp6jht7
	 PYe27EMxfvpIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C3D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890523357.27518.18104574248987000132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547666dff1a1411e924247b453f9af9df90bc7f9b0e0472b1f07a0682e875ecb
Date: Tue, 20 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768905233
