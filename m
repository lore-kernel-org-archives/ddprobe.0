Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276033C0C
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727546754; cv=none; b=Kv5L7nheLYcH62sBYjwkGAmiBMQ/MB+XmlgRp8C2Nx+3WUNuGGj2Az2sOZ0CHMqjBS9AiyLkVdJnCrp/OD1xhO66Zd0OkFK1I+D9Vqni1i+/6lekkC4Uf5/1hMxJ+ypHGuyBhvpOjGFGd3QKXrF2EjYzGv5Y6Cn6nk01yMyZ2gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727546754; c=relaxed/simple;
	bh=VWck5sUXkXwNPzahZzWtSrrge2ei25djqzOPiOH36mM=;
	h=To:Subject:From:Message-Id:Date; b=VZXSt5ChWV0SUvi9eQ71UX+tkwaPJkVBKXq0hSNTI7KItJ4RzDHcvyM4ni6kj+eA0/YL9LIDafBC7230Us7bePgWjic/PLbVSt+msuDFAAByjw3MJR3EETy/c+U38K6msU8LCRNt10IDipc6/qMAO0B+NsrhH6qMlYLOV/Ll/O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pmzcyhij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pmzcyhij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3C7C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727546753;
	bh=VWck5sUXkXwNPzahZzWtSrrge2ei25djqzOPiOH36mM=;
	h=To:Subject:From:Date:From;
	b=Pmzcyhij/CBDNRQdnxUcruy/Ye1UkLCOwVzF79faG+EXBWHOdCEjOp5wjirN4D/zh
	 bKr7iTdgLwJ7Ww77cZteuM33Rek76NtO93ZaZxNwkkVqatKSlkpOf4cRhh5hoKvz9W
	 /L4FkL23TGBh02z6jUgZ7+oeX8L+Y4gCZO43deoUNRmATjL9fou8QXxZB4VWI1B20A
	 f6c0bFDWKATKobXpOGrY+RV1J1Qg3RJxHj5p1TbzZFu+NM9YxnGgnZCwWymdXvhLCk
	 fUzviCUYN/6RAnsde3pdnWJQQU2M/Z9pLyMFUToW14zUt30Yuc1172MS1FnUidpqrf
	 4v3Kh/xkvRsUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D06CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754675358.27165.586560493243880281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be8b2f4fe9e87857b47d6cf7af3d0cbf9a87cef6edc4d09c7fc28b8f4cdf1e6
Date: Sat, 28 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727546753
