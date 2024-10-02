Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D2621730D
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727904354; cv=none; b=hn9xpr5Nhb7Ds1EjMivRH0TS/pYn+qxZx7BismnSxi3n74qtP2TDRNlWJ6pIcO3ssq/ZIiuqh9u+PRZ/pAuF4ArFfQBkxximSFxv4Opaffdzaw0WAbZGP8H0brCenRFje3UsxHq/OdcoDJoKnZzAdNnNpjYmdfeGaD0RaUODsiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727904354; c=relaxed/simple;
	bh=IDWpkaNog6z1+RmththQLtEMAPewEnSOUcy8MTeZ+WY=;
	h=To:Subject:From:Message-Id:Date; b=YpAQJqe0msg2/2RPVv/Crnd+BFjKTMOK7c2QmsSyCwsjj4QmIYzfDHTYrvLY3QZgcIx5VKMvRy1Rc4MQsHES+bm2tBo5f//BaDR1SNmUN1kKNsxPWoH2kb1NeXoShtNS0XuYjYt32oOruN0goxVs+wjr/TfduqQxlJ7ATdBstBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kpq2BNJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kpq2BNJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4193C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727904353;
	bh=IDWpkaNog6z1+RmththQLtEMAPewEnSOUcy8MTeZ+WY=;
	h=To:Subject:From:Date:From;
	b=Kpq2BNJZh5cNp2B2ZBi0l7UOlQL4hOr/P44U+4UqriWAQAy8LLSGFa9uVEJnwa4kz
	 YTs0LL5q0nrYn+ga6ZHcLq/Cj80v8PsImK6ASEsBEK9aqUefVxxzOINmDwlgRSsI5T
	 eU0N3WW4lNtNcmKice2+i94nURVYTG3ObiK7NypoC+ztIr5/5BjJkKKNU5rk4CaorP
	 EnmgQt37P7Gw8z6tcTaxgdSE+zso8acvwfOgYaPTkXkciMCxfq/0Ybh3yMoSYi/bHa
	 aHmauVQu7X6xR4W8AkJm+tUaSmdTnmfbxpfH9cNJue3HU1Hun/Gi4TYpUquyKG5s8E
	 HxdKM5YB+OCOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F78CF8543
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790435362.23491.3416650454019103890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a16836b3060eb9c198fc9b0b0c8c246d12987661edd3f8a085b56984ff1d71a
Date: Wed, 02 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727904353
