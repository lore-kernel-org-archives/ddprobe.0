Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EFA47DFB2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769015033; cv=none; b=CjXj14VXNH0ITLeO7D1hZbGyAJoJZptPMWNpna0v/DRSon++0fS5nOKUcadQ8/XYcTwfu/JsNtMXQknblpwWO49GmYJBC/LqF2MWPpMiZpPI7gSPl90NemK34EFbBNVWt8PdA+rQSfJ5UQ7opns0uud7/nee9hV3oxjlhmNnXG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769015033; c=relaxed/simple;
	bh=CUNP+yCvvfINlIy1YBzc7wkJLF+9Ve2xbZQ9vukPTAU=;
	h=To:Subject:From:Message-Id:Date; b=ThXY8qawWLnlhedfiw7oPqgH/ZeDxSwqzjGrwwAjy2TyiJvawqFTsdJDkIxfNvNbLTDfhMw+b8dn4yWRuRPq4ZsXWU13ZGhZ0uRk9Rl4XgXYUs0IXGM+0/3iAvYqNNK8KEQCbHUdvnTdin88j02cC8X3GFD2p9iqJCCaCa12Kuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uewd6QXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uewd6QXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCD9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769015033;
	bh=CUNP+yCvvfINlIy1YBzc7wkJLF+9Ve2xbZQ9vukPTAU=;
	h=To:Subject:From:Date:From;
	b=Uewd6QXAQHhbtz1N5Qu5tjiIK6drwcGreMgkvADYeEQlOlOTUe+FDkipTzwpUa2c4
	 rAG70r77ey7HBm7LYLxeIilVCwjJr2KpcdpuWbIX0EtSTO6T0IS/Mc7kOm+ANYvprH
	 tOoLKAe5D4Xiwt1vVhX+zjh38phD/746aUjF6xlhneSAntLthOJmzLlHhA9/LKncJJ
	 hqZWiuCyiCRm6hzXGQouFENU4Lo9keBdyMdNcgsH7IJ948dQ0gFSJceNeY6KL+z2lS
	 9yi+dCfveicNDQA9Yiauc1iQcBajGMPS9ERQHSJi59/ItaPx54knyE7cLZ4qLGZs8C
	 10r83hfCp/Dlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90346C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901503358.7900.10164979431392069890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd58dbc13819eb54e34110e45e206f8138d649f3e31360da2bfb45ab7ce3b0d
Date: Wed, 21 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769015033
