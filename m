Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8EF476072
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787769636; cv=none; b=q3BsKt0Fuzx+/x/aYL5uijmFnUrLTP4iCje0jBs6MzOxiuvba85SAWkXRd8QbrpaN4AyklLjJZ5BEsEZ3lGs2ASCz6IGeyRB460TfZ+JDtxf+yK3ynWLZMPmbmhuoq57HsS265NoU4nKXW9Py/M0g3mV0hE+eIhitk5STtye+pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787769636; c=relaxed/simple;
	bh=e28GF94Se3KgS4jZBXzwjg09Jr5UDz/wLEd4ZFhCdto=;
	h=To:Subject:From:Message-Id:Date; b=Nts24QRYvMyWFEHVCR6f6bOgkCWo/K0Qvr+GzSyPFORTOQiMaOkygRVm51pwowWnHPeCFEBPjenstdK2sW/Z3HvqRmqyYgDg0fqEPLVEBNviFfk7hgLh949xF8mGitbmqh2mBLHm9OZlULampgkm8PZ2PoQc0HebhE9Y043f7VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TI/EFQP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TI/EFQP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45E9C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787769633;
	bh=e28GF94Se3KgS4jZBXzwjg09Jr5UDz/wLEd4ZFhCdto=;
	h=To:Subject:From:Date:From;
	b=TI/EFQP35MlsFg/Xul8CGC9HVNrQT+NBsJtKJRsltcU+HBxq01lGmWACnvkqz/QE4
	 wfOarTUuf565Z/xW3eTu+1P3OFnn/iJnsZkL9F1YHkI7I75Ywn3vzCcTSjPcsJ1olA
	 n7pb3VqBH1bHSS5AZuYkJC7gRbBiebo9Xf06g5mttsJRhIRruquEO0hhcJLFCw+D6Y
	 yH3Om2ZvOkRUs0DjFwER6n4uj7E1V1/PEYTwh6x88p50S5IwuaOxwWXnUs4S1WoHly
	 AXkuMkY1+07vu3pd/znwvhRg0NVgjpNMyhFBAJrkBdvrUZhL5QQ7IvTzcEWflhN5Vd
	 2YLTXjfb+gMsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13EFC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776963371.13151.8682733974855673846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ab4c45a397b2512dba6bff2d65f7b414779e1047b066fef65dc4cf9a6cfc7f
Date: Wed, 26 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787769633
