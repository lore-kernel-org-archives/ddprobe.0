Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375143AE188
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787913034; cv=none; b=iCehB1aTg8rkAp+jNTb7WgPu89FvrYxSJRfWE4iNLc8XW6qeAqYaVQYmm/Wp3+6/JwgaLQrTctwNnbPg/ocaipEptKjN8G4aX0Zr70FKC5K5Jv1f0UtfQSZs6icXJ4hqAsG/dt6Vqi92FbYds4HTjj723O3NIJy1mhr1E41aGCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787913034; c=relaxed/simple;
	bh=vTk7HpY//hLDx3qScGZ7OybKj0Q7Zuhww0OU8n5JPNI=;
	h=To:Subject:From:Message-Id:Date; b=D93E8DAF3gJSTsjxEl+vCpQeyRwAX3ksOemlTNLMwjgGeSqqdwY92kJR1grPGOe+x2cs/qB7M737xH7apCw9lHQgZ6mbpgnkcqmQ2/B5mBQj8KWrc8qo65HwX4+iRQhzMDJd0YRLJ771R9AnsjbolE2y66IQb7SpaLoqRg6nnr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWOPbpHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWOPbpHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29ABC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787913033;
	bh=vTk7HpY//hLDx3qScGZ7OybKj0Q7Zuhww0OU8n5JPNI=;
	h=To:Subject:From:Date:From;
	b=EWOPbpHroID2ankVfxnoGq9GWUD2sygneWBfWhmdDERTIWYXo16wblGbzd+rvmwlW
	 m9rZ615bgTTcHPzBQbvHH8qvl0vatdJho2rq88thltChiiXmXOfTR+Qkbqc88t9P6N
	 CMpbzDENg54qyCq5X1aXuGKjX4BAvYJJxAWFiG02/4JDOFWHGnLWpA6K+x9wYhohDi
	 HnPrmzSK8QlxZueOpRdQGrTpXUNbwxmyPGsCertcq4CRZ66rLgkQ144/lL8Y7RY/Fp
	 rQdbqfNOTBGHxbNabSNKVfCeMyCbb/L+j2B+ILZhjjGFsM8rW2S5cEG1G9Z+LFbwb1
	 ENhRLHQaSN5ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE64DC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791303369.21763.2387478471353288967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3cca333b2ee5431be5165da30416ca39e10e52fa3b899870cf42a8220bcd43b
Date: Fri, 28 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787913033
