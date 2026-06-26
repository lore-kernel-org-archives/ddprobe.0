Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474103E7179
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782467854; cv=none; b=SneEr2gPIb6i8BESTem1QTzlAvtFL2kWA2uojeQUkygzx2SFYplkHkkUqEC7iBoSgAMMs5T6Cmx7CLXZuJZWG8E7AOBAi/rHeTjOwEhAHK32yw5xsNVPYHVmBKXB8IdgzfW7+OPlZKGSNAE71KETm5hzP9r7Oo/DHr0oponjRfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782467854; c=relaxed/simple;
	bh=F86Qb2pZHBN+JXjRhUzTOKCBZzwnbDSY+NjVU+DxUms=;
	h=To:Subject:From:Message-Id:Date; b=CDPmkowDx+TY+v3vT6zhl34sMbeXJZogfiNLDvvB/0ODv9NI7yIgs+SUKn7Zh8vVBCeIZrnsEMAtTgHxzp/7cjquzPXyQEhqgeSmsii5ybWDdhVXkFJj7BLuzjwCW6GxA5AP6N8NEHXk3cNB8VprvOczj+ZbWb0X3KB9HBbMzB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mp++uBR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mp++uBR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA349C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782467853;
	bh=F86Qb2pZHBN+JXjRhUzTOKCBZzwnbDSY+NjVU+DxUms=;
	h=To:Subject:From:Date:From;
	b=mp++uBR5O4vPNS6sw3PXTK9BROtHrqTnWAHyrsxBOpcwZms5U9Z0I/NfSRaLgWiz0
	 +JDIbl+82oKm+ZhEO3OP56MO9YJ/kzE5EBD9VYBCe7JinRe4ggJo654//cuAWxx4Yz
	 WQSlI9zw1hUFG52DqvQC+GwBq9gHPuz9Zg7VLyyjLV7fD6tXEqH0YiHywKpmrvEIcQ
	 7tusIjOzkAS9mlmMC3h3hlhikna3uO3IyA4OSFQQqzfv98CbjNIK14EHQp/hCNNCIH
	 C9ulQf7Dg6Iy5H1+DW5k9hr/Imy/Q2FC839rYmwiX3B9LONmT3fXSeozkOAvi/FD3r
	 /X4LT3n/YsKPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA840CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246785373.27801.16934922266023901827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba93c22288a7099bbbcd07f7bd44901eb1178d05ac4a3d121338b6e308ae292
Date: Fri, 26 Jun 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782467853
