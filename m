Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5D82C375E
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769075034; cv=none; b=bghXlmU4Dq4khzlaUmwAUl7D4HhierVKhEuCq1pKrdpid6x8ufnzIT0RiuTy/wPNJSBMp0L0MZ26Q9xxbuJaA8Xvc8v7WCfPTznDYGPIJXXZUBWkNbpEoVUCpb/Us/Nn+LQ7ATqPBXir+PKhaFqSkd1ybCP2yO5fQITXR+PHydM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769075034; c=relaxed/simple;
	bh=9xBSbJ+uh4tI84l6pn5YQhlHIKGVeBIJ2PHyQvWCUks=;
	h=To:Subject:From:Message-Id:Date; b=g5txvVvy3L1HQw16Hy6+/UCgGbuW6wx8i7aY/0HKhC+021ujwGDk08HThka1P1tlBxwwZCtEGXpxQpt014PNEpBh35i7tIk1LCrZovyNyS0heSwFtNWrFq0eXYxxnmxD6DbmdxEXf8f036bORHanQw65aVMzGgz9g8Clp19qQwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sqhjy4Sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sqhjy4Sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2155C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769075033;
	bh=9xBSbJ+uh4tI84l6pn5YQhlHIKGVeBIJ2PHyQvWCUks=;
	h=To:Subject:From:Date:From;
	b=Sqhjy4Spo/rOouoWKzV7PfJILwbLZ458Yyg546Y/04w4vPaf+jKHC8u6GSHHF9Rus
	 UfZ6vtVpARuzd7wcrkCOn+q55Ywf2gKWnpST1/wi0OjI2jO0ZqJ4ziMcsOeAT9oVGN
	 2KKAV4rIWExB3aAfpQWzFoUpZD/kKyEN9Aott4sMmwCc5y4idr+uNl5BNgcW4gcoWJ
	 qvfZ3ks4ZU9lLkBqHmDkhrFT7yInQYYnbuqr+SPmCKdOHm5YT3AbI3c7vJj+KMUFOb
	 6HQFfiXXc/ZZbyHXvKbsKTltd0rc6rNbDFbpuzd6VSLRzfGfQH9M/gHh5qli6N0UqB
	 Iy3qjYJ4YzetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90971C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907503358.17128.4944677497295151465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4487c4c784b9cc3f0c3e4f7f01b61174d339f6a9ff81c784ef106ebad10a0246
Date: Thu, 22 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769075033
