Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310FAEEA9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746255595; cv=none; b=qkWzm0PPbF71QL5JkQrnPArCylNZlelMkR6a/7Vz6qpR/o6v/x+m7j1hCstdWjIGLrpTt090OIlB1PgeO6bddlPv5OokQVAFg8KtQo2OL3TBMIDlx3Oyjyzhqg2G+UvH2sl37IwFOp+RNl3EU9bh5DMnxSnGtvh4Zral8iQdmxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746255595; c=relaxed/simple;
	bh=SUF7l+fASoiddhmF41mqzPzFRMo6GQZfgeyrL5Kc+fQ=;
	h=To:Subject:From:Message-Id:Date; b=VJONPuHyk1JgwvOMc7r685tQ6OQ67wkUoWHEFExCZQf2Rzbp7rZOppTNyVmeynZXyqvx5OvXAerK72/OFFDLwLTRNWOkf1iq5Z0Borj5GAUPVjkMNMuy8h/soWaTpp44TLAJwvUzNxZ3taz6f1EmFLxrTlQ141LKIt2HBViHDiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDzaGCd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDzaGCd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F7EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746255593;
	bh=SUF7l+fASoiddhmF41mqzPzFRMo6GQZfgeyrL5Kc+fQ=;
	h=To:Subject:From:Date:From;
	b=RDzaGCd2OnIEqmfIPstJzLkBX/14cHHO8cANRWnuPAY+6D0RPgLAKCWaXkUYZyZv2
	 2LtriMqBtJHhI1cR/+umyMCGBtXYgCAUifGKPkJxldgngy0kbN5IjesAyi66iqjfC5
	 GA7gkjZDVZqAJjeCaZQzwiorbxxnbTQ0itL5Y4ZXCAQljG7jdCzQXKKjrRyn4BcO3h
	 UPWjb+EOZVg64h28fXfFAB6VqX5fTATgumbEtakHy3z0mQsSNjH96cU1wx1Ld9bogG
	 8R8QFN3wdghLqO9ciVfabrZ//PfvHjtuQgitXfhJ8A4PW05korCB1kwEK95SS45Piu
	 VavEtomm3AyHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C5EC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625559357.3452.14858166799913201236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cece7bed021b3d1f91dd1341b6a66b0de81f5c87c9258128a60701babb674c4
Date: Sat, 03 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746255593
