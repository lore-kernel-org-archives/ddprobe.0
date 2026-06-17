Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC56399374
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781698594; cv=none; b=PQPELq5/AIf2ixhKEYY1hJI8Ey5oGxnRYJikbBTHdJJZP4hmUU805/mTi1gHUEi58IkfNXM/lxmXgUom9xWCHhk/veQV8HocdP1NKSM8fMSDw/EKeUvkyCG5+MRNghUTWGlW61JK4j8zo0borvBr8OqxebX1RDszLI2kfhPsQwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781698594; c=relaxed/simple;
	bh=uUTdaX3IxDeRI2EiZh41svQxheszIm7BvSA1X96iNds=;
	h=To:Subject:From:Message-Id:Date; b=OyxW3MtEKNoKU9OsR1XLcfBwBTM4klCczMuEkFj3SXH8Ao0uGUqLe4yOD/HvHBq/62u6wKrM5rOiN7wKfdJn2IXJrzGZ3A4IbkqxLhKDqlNeb8vED3g/Z3f/jMYYKTrW7LXALw6UjlB1pgThU6/EA5EK6LIPD6pt+a1mzSROamo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=di6y95Yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="di6y95Yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D4DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781698593;
	bh=uUTdaX3IxDeRI2EiZh41svQxheszIm7BvSA1X96iNds=;
	h=To:Subject:From:Date:From;
	b=di6y95YzgYUYomxliyU9igmH6AlNJipBBlSfb5WvXetQE/bkjkMgSOkIx+2tj5A2+
	 PkrdaESVA9oJhizE94d86q3hss653KMLR0PuCM1UFnsaJNPuoo6belwyipbrduUnId
	 NxfWzw7Ii1CdzLjSDNX9xzwxn8Bp9yK3yCa19Nu5NX8otK8MN+9GcEhRO/cPZBUzO+
	 DUj90YG88Ih0KUb7wDXvZ1yxzUhrBvV/QRtRer0ge8fhs243/IMzW1RIB/mrZ/oH25
	 kiljKb0cQLKQq3NuacZuFCmhVIg8MWL6WxwMlR4sB5SQ62XVG+ddBdZGCBz+c7Cq1l
	 HtHVDyYBxhhHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D35CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169859372.24698.8938309093319331569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294a42e107018538ae834463ac40cbb405046cb39113dfaccb47133067d10fb5
Date: Wed, 17 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781698593
