Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B08912B63
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738718154; cv=none; b=JQchqTGfS+8/ZgfOCBgNinz423fPwyujQTFRRsGf2/9GKcyGZA8GIeZ8MUOHKnO5rHFQPWjm+NrEcQDjXrq7shrYHa/YFm2sJGwZmLhZweRIK5i6ciHgByvtvuankC4KggyPzHlovfLNFtDZVQNs3QJpVsP1eYH6opV0fQMsHVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738718154; c=relaxed/simple;
	bh=Cc77gNK3na50bl2yD/LRBJ7XF8QG70EQGHh2FlsmcXs=;
	h=To:Subject:From:Message-Id:Date; b=UUNvcDaCoOPzrl6gqnipOKSv2+VtZ5/C5LgWv26+QY6wi9+A5GV+YWxPa3yioHu1jUfECp7zwmRVE1hylKJSWCZGDCTzgJLmnvNlHBIquw5glAg9umty/FAlpJxdL0JTyi1bBQg51w6QHegmI1PkY+ugZqfEqyXnPr9qO71uMeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkvhBB/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkvhBB/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A817BC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738718153;
	bh=Cc77gNK3na50bl2yD/LRBJ7XF8QG70EQGHh2FlsmcXs=;
	h=To:Subject:From:Date:From;
	b=ZkvhBB/bH1fhJc4jpzTsrWkoOw4XnCmqdMKX00iSiBcyb0+p7lAiyDuFb2CnWK9aT
	 2F4XXX+sWpIl9TLK3u31SVgvTx3d4ikdJHq3aokiGqv+e2LzR8JEIMoZsQ2Vj+2Zx6
	 BDdtecmUQZRipPmC883l8WDrI+kiJNOXTpc2WYmdsRsFViUJ80+t7UM1/lLw8DsLpp
	 9/RfzgUcQ7uNtN4Gckyn+x9j7SJcgfLa21BndoG575c0KsLkgpDR0ExPd8bxa8I+GZ
	 hCI/0l957rQbuFcp/bwpFoFsfcF1DiFL+Ed98cywsPRybOb59EWQJxPYEQFBjqa3W0
	 FuuJop6CoBI+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957D5C02194
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871815360.24953.2046629112110156983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3527eb2a869621b24c7a16558e5a6ec6bfeca22cd46d7cf4731ca28ad0972f15
Date: Wed, 05 Feb 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738718153
