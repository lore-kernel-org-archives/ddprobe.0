Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5261F16FF28
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716904463; cv=none; b=mOvhCavnbl12FvmVlHqDo12FZZRg9SfLMdjBBqWqGd/dbmUteycTsK7CJhS+GZpx3PuM/CpeqiQvqXcbhX1ucWW6S3urh6uyoQb9GxjIjilZuxsAyRjAsedxO00Lun7V8ojJA0VQS4YL5MvFhlq4228ZKTL0iBmFy25gVByqh0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716904463; c=relaxed/simple;
	bh=11IuT9NVlj04cw6bXDv/nALbeZpapX/7qw6D64FlHJs=;
	h=To:Subject:From:Message-Id:Date; b=aCAiWtz3EP5hxmoIdGxtTdJZzBhwS/JeUvPgvYAbr8UN/3AAmnC11oO3W1sPCfcijGXJj5j+WCQ1IpiKgsO4fv1B1jRPwHVN2EFLHwfTE9csmBd6MmX36qi2PfN04bwfnbOtFjiQZcSslDm04zjc88yLvkedp3QTYP2OGCHaf64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjsK/tzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjsK/tzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC68FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716904462;
	bh=11IuT9NVlj04cw6bXDv/nALbeZpapX/7qw6D64FlHJs=;
	h=To:Subject:From:Date:From;
	b=TjsK/tzIFtaasviOEwzJiTKi0Wwpj1mohE8FCxQd+paQXEsbPIaxl5gQ0NDLUJzrr
	 ZBziP14CQ5OO6fAfXElSMQKAaEMZhhmvh5T8O1X8DN79udtzbqhJFelJ5Z6IiEJ+re
	 YElOfBe4hgPqkyvstgmGI6zIiZBmAhM5/ptxBmdljaeoG6riEOIkCDdDT7Mq+vgDx9
	 0IX/Z+xVzk9UoIiDpNSXPGK3Zk6oPyNmPGLA9oRgaK3EWfU8qRkW0hpEgEYQpJehD2
	 bR136y49ae5iYhWpQwWyqBaQFemS9qNlfeSwdRsNUSnNyDN8n5HR0emvjBta9ha02u
	 xYJSLGppZvSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9363C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690446281.13061.13076804467337403227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5513403ee0d7efe5b98cb01140f4d5fcdfbd30e3cdf971046cd2a7186b874c86
Date: Tue, 28 May 2024 13:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716904462
