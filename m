Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C700339386
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785001834; cv=none; b=PGjrgDTBpUBgbuMtN5sOjDYB8FEj4EkldIvmCNomA4cBu9fhF/8b0l86/26wF7pcntZFlndDZ+H5fvrEvw8AEbjcLssITZTwAGzlvjQdja2rNT7+w2b7K82cLVs9JSklVgNqmovQBAx4AtOoEuivAWdx5CSQek2I65K3ZkU5+uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785001834; c=relaxed/simple;
	bh=qI1fG0MIj9Z8XQon6HiHmlBu9CBt9QoXyikHXW1Tkkk=;
	h=To:Subject:From:Message-Id:Date; b=RAM5oLNXu0PvkJVTmSBToVABCxC6NwyRa9u1FR0H4RKJ0aOiWP2SgLoyK9hT3e9WZupGqfm5wM2++eRQJ+MRYXgeOb+yY4To0DbR1OS39SIIKxihxK2y7RMLUFNSyvKKKFw3Y57vI14gle4Ep5I3GfMAs7NqYTSZYbXri+EYapQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAhNfKO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAhNfKO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C11C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785001833;
	bh=qI1fG0MIj9Z8XQon6HiHmlBu9CBt9QoXyikHXW1Tkkk=;
	h=To:Subject:From:Date:From;
	b=AAhNfKO06+05rR3E4GvMrnMOgWKKYgXophhc37g/WfGKvDzKTbUvGtQcg0cm1K9vU
	 WWu9WigrBynj8BE9aB3qaQz0Z1CNf1GyWJmFvGRMC4+7nOnHZxacoo2VXOsYvLQf9O
	 t/iAYQXYTYosHZ30Je5dGY6GYVoVUCxL9nhmz2vOH+Xq1UxaHjvUJEG8JFiaecigcC
	 RAl3EyYVAknOYziRWdxdqcecTxsH9G2EqahTKaSINUAa4Ei7mPGU7jrjIRBo2AT+CV
	 P/JWrvN2/5uLpW83ByxjdSDoVWPYNcR9lIOTlSkfS5ezL6AKJ4nozMA3LItldBi+OZ
	 puGqOPP805mFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF86BC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500183368.24936.7172576255023596444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59519c55f20f100bde24b629d68a89b0f4065824b6de8e759f63390bf6d76acc
Date: Sat, 25 Jul 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785001833
