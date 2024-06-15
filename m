Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113DC1DA21
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718464703; cv=none; b=MrjwNomubW/XVH7tueIrqON+QZAoWSboanXIOpSqHS570csNfgJ9tdV4jphixTDlnzmiRzLdSBMoAGoPML1R4glvIjgNWbkiMRWOi9pUEG6HVsEosHIFwqHNCx0UShNt69LOBN4MSaTSWLf0r3FBttq2pS0Ix+jBVsDdDtN298U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718464703; c=relaxed/simple;
	bh=phfAnJczxgZ7BdqDlq71SkLBYinHCTdfF2G306QrNvI=;
	h=To:Subject:From:Message-Id:Date; b=hKsIac7zgvu6I82LNC98OEmHN+TntATFEGW0YO6WSCFzrjmK+8ziBRI3nW6wIvwDzdeNKsMvyupLWU+kY+zagRHOGqoqSeHkaY7qHzVef1quDpgaXDbvVpJLNOIZ5+o2lxA/noZpfWp9+GJ7IwCw0Ytdm8soZOLU4W5IsGKaZYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elmUzRBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elmUzRBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8CBC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718464702;
	bh=phfAnJczxgZ7BdqDlq71SkLBYinHCTdfF2G306QrNvI=;
	h=To:Subject:From:Date:From;
	b=elmUzRBCcnZSahQ3wloGhvq1BRpTzb8PfEe9nEOsuQe+J12yQcly5SVCBhp/MLA4k
	 DyzWddqOxihbYsGjEtThU9tbm5XGTf3kgzIoyJ9RnDiXSrj+kI5xqbNUIB8HamRWRk
	 sPQc3DbsufeRXJSIFjz0MXaxOp6ZOjlxomwIuxfDbU9D78GcodW2CKXgf0+gerIjDv
	 Y7x7lCr13q2U2P5UkEtdsdPG8v8UC+e8WXCkVehAdL9nFrEtfny3wjhajNqStbYcew
	 wBSTek0De7/q0FNOdJsT52p+6sbK9NuW5eIRzT+xY76J3omD90OQKzPFnv6VhsY829
	 C4IdcmUbafbbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C827AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846470280.6624.13888933206940610441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc168af25d4773869152bdd0481169e5a17d86c857d077f1737c6922e41937e
Date: Sat, 15 Jun 2024 15:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718464702
