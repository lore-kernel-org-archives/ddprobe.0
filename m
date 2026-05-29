Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387C43EAC84
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780065754; cv=none; b=E3mGK27UfOiFE4LliQlciDf2NVksxEDQlAqEfY92PJOvoyUus139Ds6xuhDbUI1ZuwTAkLoqoi2oSI8qGIHpaoKq1YQnCskEVdq+i44+pEAAyG5WNA3mNNMVhg08IxdFvIaK0+QEZKH7ew8syEy8cPiiqr3w0lOSPVteI2rVu74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780065754; c=relaxed/simple;
	bh=coWaNOyh0Y3O9C5BNq3MNDEIzxxexkKoPBrWJ7t7LIY=;
	h=To:Subject:From:Message-Id:Date; b=cBhrn3VOOGalTPY7J03i4stccNkAlNiiPTEGZ3Gq504yTMTEZ0K0fSN9LBDVp1EGhvWFtQWoMh2Essl3JWLj6RlA9G9JC2BPWBmBlxYkKfg9QAo3WBC3aFK5yQA4FolVK93dfWz58ZzrwSc6zubqyr0W9Vsoo8vuqWXytVQmZD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgEK0wv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgEK0wv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D089EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780065753;
	bh=coWaNOyh0Y3O9C5BNq3MNDEIzxxexkKoPBrWJ7t7LIY=;
	h=To:Subject:From:Date:From;
	b=jgEK0wv0jW/6PKrkQJmV1zpxLvyCeyl2AScxPYeySDEne4bSuisyL5DHRgEmzy4vG
	 msGMqEKfVrq6hTMMI4nAzGqQh2XboJyivPMJBNIP7EfCWh/jZRJdPFfRC+vx+nfyj8
	 ZJTOaBWJk2WRJwZB7wgmoLCh0XKehTklmW4m8Cfq+S8M1lsyzBW2mahcpk0B4GEYth
	 +MxsSm/GI8UlXA9/cUZCWMMSu5TeF8A99b/DIIMpdKGqx9B8rHgLIHst+KCh2NoxEe
	 k0r6xcovXK3TzaMympIHHDUi7LhVbFmUFBYZkdQdW5DUl8Y11vygHCcftCHtFk5uKq
	 8E55ic6gJ4iHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF193CD6E50
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006575370.18619.15599127163858265093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a831ca7d181aa6109faaa3b0aa42a8003eb62a1adb36f2c83fcc1a1f89b5929
Date: Fri, 29 May 2026 14:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780065753
