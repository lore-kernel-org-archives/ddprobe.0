Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509F62F5313
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784308714; cv=none; b=D9TX+GiJe18ZlGO4h5UtP5K2y56QZhqsaFF7280ENxG8dHkWJRk8xpO0kw8CG5DpQf/AzU1HNOMVDyD5115XaG1/KzUqcHDcg69b08ES6Ht4ajjLWi7cljkIsKrGiUnQ3JGctyC/P+NyhI9lwGwbDNcOO5rPOvC3//8MiX4af6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784308714; c=relaxed/simple;
	bh=C5siTRqnztC2/OCLPr3aT0/RxIpCyiT5J0+NmVgKz7I=;
	h=To:Subject:From:Message-Id:Date; b=lfCupmdN4cDwNp8fD/jNbXIeocJJR6QbmmAxrWKtrQ7n8EkYYElPQ67mbiJyP4vhuxiNZTyuKJCNZkKn+JiXMbztfxpNsjZaKsQ5DeeLVDVqIP4Otkv60NT+dd9ZheNocanXneShV9KUYa+hpMnnSyMdyv1Utxh7fGzgKiku2HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNxB25ij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNxB25ij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB13C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784308713;
	bh=C5siTRqnztC2/OCLPr3aT0/RxIpCyiT5J0+NmVgKz7I=;
	h=To:Subject:From:Date:From;
	b=RNxB25ijpQQbEgShdFdYK4PUV3dN4FQM33wr+nPQPrcRYWU2sAH5lylxWuiZv1OSS
	 7IIKgqTUPDpJXIMy3uGKkXEzIWg8IXOJszbVFoUYZvKDevgm9q7j9RZNIMp/Qo5bKq
	 VeFtG/rHJr2/qMgdgmNepbmlB1ksyecL06TuOKWRxwioYrJgpOeUoce9em9HDNY6uR
	 5gv2E1dgD8H9hV9XtVYmTcpP6fP1EHmwOIpLCymaKBhGBhMsuDsux5U6XutkNlu1kR
	 d1zW/QOpHszHEiJuYH5JL78catiTiX5JZxVPVpgzPUcNeeZ0c2/mhidrRwxMGjBzFP
	 /iNOdImyc8+BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54B9C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430871371.1112.4410814722041894422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e3438c0c5355a576dfc308fe638e3bfc80a199be231125e0dd8195300fc947
Date: Fri, 17 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784308713
