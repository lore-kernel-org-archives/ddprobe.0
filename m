Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26801E552
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761268794; cv=none; b=o6E3cgQdQxaLDe7DJHP/88De8BEgQL0iU9+w4eUgKBDDwwnt1Pk0v1Siu6BnpZYzwAYql++09JXek5k62gxwMi1/Mn3sFXZRh7FxkgVXNT8IhF0yPbbQYHtDNZbQQA1ETiPZHpRHR0R4vssn0+BPhdaPYk2bIrEMn+zr0kjOuEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761268794; c=relaxed/simple;
	bh=QwIcpX9r5rkvxPkRk3YZvHBMLO5NggxsCQcq+yLFBfE=;
	h=To:Subject:From:Message-Id:Date; b=E++GMxni578Yyumigj9+FN3n33KyJuKy0tbUvkNbKRml/JB7vzfAavZpy0rAVwsrAE/CIVbSEgZxQ0DUtKJbMUDouDZOwMnNCkPoBBv7qP04G/JHm2NGh/b45noaMUutEvJdaGcXJ9NBZVIx0f5j/8EpHJHwlgj/SkOw8KUBZk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkdZxqpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkdZxqpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16CBC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761268793;
	bh=QwIcpX9r5rkvxPkRk3YZvHBMLO5NggxsCQcq+yLFBfE=;
	h=To:Subject:From:Date:From;
	b=lkdZxqpWgMwaZahBfmFpe54ggyFMgl4EWg5hJ0OyodB/Uudbliwcu0dr1/InuGG2b
	 l5bwyd4Cmsdu3r0HtR5+aULSqfpxfx1bLm+UaqdQ32x7xewpZg9D0+5FtmZoYZfmbJ
	 NJeH3W7LxoRGh5fUC1XSJ2u13t9M/WTw+v6dLb+pj5mlYaVw5TlA/31hleJOC25gaZ
	 LfPXuRkZJqOe+5FHYXt2IroSW9jfEdgO6zaq/T1iiJDShb7xXnkDDHhFhiUgnXXmlz
	 vbFfzCQN7WDc1hpGeAYTqaO+vJbjQbvqImblbgcs9SwkkROoIaBW3r0DmDketZj3kW
	 NjXvE/3gyiV7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F394CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126879357.29596.13130419240130451626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c3d125eed600c49d8bb396080b2783652e8a7c270db3d68587a2691109f6d9
Date: Fri, 24 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761268793
