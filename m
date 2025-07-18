Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBE311712
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752802793; cv=none; b=lC2wNA+hIpE9wAHo38LxHULopYohQ8Y8VaRIBv3D8sQ+QTXneyX1W7/dRqIkYwx4j9yKo1TAE4kKSX34EJUs2F+M93T01T6kTy6ZHFexojqAYmAdjncZU5GHXadIs9I523PIDNyC6GkbYFA5t+qjbcCqzpsnpYTN6xkE243o+lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752802793; c=relaxed/simple;
	bh=1bmI3bgf8ELqDqjxQxi430iNy7Jv/7X5CoenHeem4UQ=;
	h=To:Subject:From:Message-Id:Date; b=AZxb/z0kEjLwgIjq5krG+qwgAQ4yYQRJPxFBR0D8cP2heoc+5oy5UPVoDsuZWsvGQmBs4bsG3tRFG8bCmkrG9zyOAZb/+cafzmlifTUkU4nE3oTIf9DEZD9+XoRUGkAjmmic1dNSaNQUdPFqxL+YGEtrpwcqrOBvGSfSv5lXgw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJS1Yzxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJS1Yzxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17E5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752802793;
	bh=1bmI3bgf8ELqDqjxQxi430iNy7Jv/7X5CoenHeem4UQ=;
	h=To:Subject:From:Date:From;
	b=lJS1YzxbrCq3LebfK9U55Okr1E+p/XKnuV4M4VgIw0hZbBKT2/rcahI3HRyHTJJMf
	 09PD2szlE0cnT7ROAf9iiqfYpBlOXti1d2BFRgiXoG7L4rpM8l57CQpHQLHas5bIu8
	 p/aF46Ioe4QWAASVeoDnOPWw3lQuNz0EFLzVf7PHZcAxkDuWfJCS57XBoYcmgtKA15
	 GjMR4BziNK6utK+N3QAuRQSL2BDYVqOhrw8DtltV4K9pEyZSysHMUVj0Hwy/S4b9OU
	 vV/wv0EzMCFXlr+BszLBCkVIzIwCoiCMqhQTm52gZRG2zB3K/YYNOqnpu9W/FMta3Z
	 xnn2mCGy18WoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74FC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280279357.18652.7686297188181201452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e460477a1dbb0ec530c0f4aae961421658926352fc2612c5a5d1f2a742d9005
Date: Fri, 18 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752802793
