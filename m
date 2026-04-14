Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0922940D
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776193654; cv=none; b=b37UhQwzCt3/keokgqYXMIt5GtvInuoyXPwXTNQJ6OJgdfhGiCToDe7BgBN52AcDHydsflJIg8pCg+eKr9gh3cASDil8wWR5D/Vs8sl4pIszN5LZtR2go6Ustp3BrHYmYJk6o8W9+aejY6XAtdg8fMYGze9ar7czHrsuIBI9IZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776193654; c=relaxed/simple;
	bh=oYC7U5l+4X91HU9mQA4w2vmtW28dEKRC8Mou58iZUWw=;
	h=To:Subject:From:Message-Id:Date; b=E1D3hhOYR24cHZOYOhYLTISGcqzFIf25UZ7h91NQBm90bqe2AB28Vx4BOsrDsVf4EIycMH4auf20LdfjwWsMr0ExlkSa7fC7upKlOcq1m5pjeD/c5vX2ajMh7c1d+f1qjK34bm8Tstuhp/QoPoPUVQBB4C2D/Z1gbewB/eKo6so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/qcv57G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/qcv57G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39D5C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776193653;
	bh=oYC7U5l+4X91HU9mQA4w2vmtW28dEKRC8Mou58iZUWw=;
	h=To:Subject:From:Date:From;
	b=e/qcv57G3F12EsLZ7mEvjufWyvVuOZV8IzntnJO2H7lHgEmbw6+Lspg3EL4BOPIg9
	 ofl4g0RS3LqfdH9ytRt8BXEXdTygG7m0BeqDy8gVGxX22NR7Xa1AphENq4yqzhUPry
	 57B1hcKz7jsGgGd/a/eybegAOk+H7ftnKEQKKGdJwW1RsJvw0pF9s+L0SZBk+2LNlR
	 zd6rR289cXtjbCTZfdry9i1rJRlwKgzu9aDWZvMce7pTjdN3QBGEaEdCyiwapZ52C+
	 ZM6a1EBaJUNwo6hqUvfUtegvH8/x4dKZKa4yym0S+BDs0jkkmn+VinVi/BwOxu3aak
	 EudE3aY+abJKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E0F9D0EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619365368.10359.15530721273537066796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f8bb25dbee537b2ca4c4c1d652f32a5ee21dfd4b034ed2f405b7430a2c2efc
Date: Tue, 14 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776193653
