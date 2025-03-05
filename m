Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B54642AA3
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741191534; cv=none; b=YL6e9NTEb++thKobEWYu5RfkqzrCZnu/FGa9N7H0U0lCa7wv6YQfz6oxICipVuPKRDHxUS1mvR+rhMG9oF3U9XLAxFybjG1plK2vueOv6A2G4B7phUqGKsxXjOnfGi32zOO4D7oeOXCM+1F/Gtr4VRzPKpCd/Kv2hTCZC2Qp/Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741191534; c=relaxed/simple;
	bh=dWRyb5IyWjMDl2ToreSayQ/9zccWdHZ/a2RQx9qtjsQ=;
	h=To:Subject:From:Message-Id:Date; b=bBbPaVqjHZ6MMihk9Dkqm/6hIZuRqTPURcJuKzQfWxWxluz7R2dN8nfxzOWuKNkcsnBrR5gqHht2Wl9u/EcDKFsgBYlE5NKTWS1cZg0j6mYxrTxgRiBkN7zBzcpJ4P3y22GvTd5s47vCmUSvXpRIxvqLKUBfnlkAu9oirozusI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIRR55F3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIRR55F3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA106C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741191533;
	bh=dWRyb5IyWjMDl2ToreSayQ/9zccWdHZ/a2RQx9qtjsQ=;
	h=To:Subject:From:Date:From;
	b=HIRR55F3/ssqPFL2RAJn0C9sIj/RZ9oIoUfgVvNrne5MgA2CI9d8hYkLHYVm4PplX
	 fec1rB5U9nalAxingcPe2ok2NirwsUAidYwFxT1rN8nJzYAT7ZqIa2oV7SrPISY6FN
	 +EdqaFFxgc5TD+JdtMR44RmzFrHxqULQLe2jMgmH318Fi8RZodo0OKdqPCjnJ0/yYk
	 Tn2OaufAIVDv2XVt4ZZ087GXP9kY3ZUtvgkqnW9+TRztFKVCAO3OpYrofdfr0udA/6
	 0Ai3Hg8GQ0OWbPzMS0Br0g5vCLK/bxfpzV7/t1hIur3rDimmyH4G3ozfe5amGNby3o
	 oPahWNLTJ6aPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2456C282EC
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174119153365.26106.11302632325022051983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4307ad69994a07424b88adf8c446d0cb229e34f4ea509159f9526e256b23429a
Date: Wed, 05 Mar 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741191533
