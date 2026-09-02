Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3296530C606
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788335434; cv=none; b=eueRk6yKuSe/KQl2TOFRbvkEwFBzOEt5Vrice96rnSlcwiQA6bMjgTgYHTQ6WOBVcOEmEa4OGeCAU399NiYGDlnSZ3tpb1I8JswGKSnwQuCcu7Yfjogy96HgSKOpC9LxIDsdx14scKr16D622MJ5m76qSK2fJAna1/84AuaLkDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788335434; c=relaxed/simple;
	bh=OlmX1HWie8lmWzUHkzvTBrb5XIybXY6fWhJn9QTCwWI=;
	h=To:Subject:From:Message-Id:Date; b=AyDFgRFre/RUluOlxx5sZ6pmODo3wCYEwLwFgFV92n33wBr+wZBBel1kXFiMR7PiJ9IIaekLDBt5kCZp6T48uKc0cknrGmTnfvVSrhpv+xcgQq5FCRyNf0VM5aEir3SUoNaAxIjptERAvTL6gA1yTxCHf56X5hn9pxzHuehcqKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpmC6cg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpmC6cg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD02BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788335433;
	bh=OlmX1HWie8lmWzUHkzvTBrb5XIybXY6fWhJn9QTCwWI=;
	h=To:Subject:From:Date:From;
	b=RpmC6cg7qE9YPnfM1534ddmuIV26mGC7Z81LVKccd5F/QF7cODTYNLisUrOK/pvsG
	 ob9Og4z9VlA42NIy8w0zFB+LUNKc4p3FNSWcgMut+rhCOvz9NuukBKPwHqkbzS7+gf
	 qWChFYHOY9WblFkisdgktrbxAwyFi//brrFmShfzI7Jdw3/hvjK2V+phDs2bXIEgEL
	 HCEqruX7zwPHR0/uaGD8+mpCCu7DywEERWdolwGF7k5JVVdiL0YJSJacAhtQXlExUZ
	 QYzdiPY7P683Hx5LOoiW/scGBoRfzQOfyq+NdbGaqwSIEQwlUdtQzy6MKOI2JPa6VV
	 9n/u4anP+m8zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA070C61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833543368.12614.10374729594451810067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5f92ab521521da7b749f79cf56f182a82159df12a2884477045bb8b4e7acbc
Date: Wed, 02 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788335433
