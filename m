Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6EB385519
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784611114; cv=none; b=Vfe6yYG0xZVn+Nb8GCqqxyaJHfMXeBObEre1mUe5tSpffpgPeRMtK9oSBXbh9nM0wN4yRBGmxanDUTUH0BoLwdC0ljyYI2T9ZwapbV9lZki2tOYTJ1zjnVcNjrwrCTODAGbyTfdx75cButK8NxO/OXVkkBNGjMXloHrImZvwuGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784611114; c=relaxed/simple;
	bh=RecY5mnO/y1jUF5AxRYs2XMRaJ/ULmzWpbx7Gr1KMg8=;
	h=To:Subject:From:Message-Id:Date; b=oEXFy9hRJ9Q4a6OlWL8fTpLzfMQfaIVj5fq4D3oS6UFgUkxk0gQ8zc4lbCPHJn4bQZGT5e5+056rtECNOgbSxJojStPmSmWfFG1ykyiY3oT6mdjYEMzcwiIS2jgLOQuCmVkm1LLdtGW38mdyN4Qhl6HaZKsMtV3csriTBQgRLuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFX+kUow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFX+kUow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB072C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784611113;
	bh=RecY5mnO/y1jUF5AxRYs2XMRaJ/ULmzWpbx7Gr1KMg8=;
	h=To:Subject:From:Date:From;
	b=AFX+kUowI4Cj5TokC8Uwn7sDjQJUHV1EQN6yduQDTsNsncH0YAiAc4eFuFnLPxcnk
	 CJakzFlFK6TbFbw15m+DF9W+2EH5vxZeZLCTb3C2CRN8kxjV5xYFEOVkewbNZqywa4
	 SKVAx5VZuvmLzh8OaSt466EKGxG2JuxeOLR6AE+G5n54p+awMGj5bC/DWsrpxkC3pM
	 JBGSzDt+4ZzrkMwWS7TK3Ig7MYF55whci5sa7EDZ0MxaISy5zUoooQov6QHbASoEh4
	 Py181GCWjrDHHufKXxRaH0TxRyOoSD/79Z+g4/7VGUonjN+NdG4mSXCeWTgP9D8cxP
	 fiPSdI1je8Nkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F36C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461111372.18941.12752249789673952860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba69e3abe1e5e873395b944ef7b10b2ada4d03cedcc84db672bb70d1f6e88ac
Date: Tue, 21 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784611113
