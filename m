Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC2672613
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752024594; cv=none; b=llwS8tqhVFkz5ol++n5QtisdCw1x5YtCHtoSbDz95C8f6H71ATfSYCt0BrBLID4MUk5fkClI+jq+utsAUKaW9m2AY7BMwXaZhEn1KPr9ZQC5tZpzrAkew7CjlGvHqhJaLmpK9QJQhmpaFoHgSo8Tzn6Ujn6vi1PMhhVq+Pq4Z1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752024594; c=relaxed/simple;
	bh=7fYlkHxqQ8g0B64dh8gnrqmfJxZHtza4R//jEpoXFIk=;
	h=To:Subject:From:Message-Id:Date; b=Uc4P6OjR7B5RO9s7knr8Rz5JXTBW87Asv539psLKpXtZpekcNmOhSJHF/1u0XtOJoPAhFC4wLraPyXaer5azI0HwKGITFBfz09s3sUl8ecZytrEbDvQv9bqqVXGIbAIPnwKmCVlO5xz8xKZZcKPK8Owsh5Y3LVDDSbXl2rvMWII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qS9Cmv0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qS9Cmv0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD8EC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752024593;
	bh=7fYlkHxqQ8g0B64dh8gnrqmfJxZHtza4R//jEpoXFIk=;
	h=To:Subject:From:Date:From;
	b=qS9Cmv0oQQzZFaGCpcZzVYjS1bfuk8haLNyunlKIdMhFf4dDS7yGxKt94k9WcpCc6
	 m1UuECvh3iT74qsp1zqaVR8zNAG01dxCKcwdXnKykKuWU5xokAZqhraZe6YV/sNWLJ
	 Q4vrVkMYiEoHT075aEUU8QAW5iXAhMgdW4iCV6eKsFKaN06rFbkRZUrAbfz/h5T2ts
	 2yLMwt9vRU0sN0c4+aBWEaysK8BwsZlOCisMHtiG72Qa0FPH5kg8+d0HvAhbjxvF7a
	 sUTOv3C6tVRmmnHvz2CBlPDh/wCXLHmgnzfgO+AWbUPjZz+rMGaTnQWkxOzFje5xwU
	 sxc6eOn3RGDxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE5C8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202459357.27870.13268352934708999888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e58f5e3cec49ae3ff7f5fbc19219ad74b7e2321b80e8bc3e65c53fe06477f6c
Date: Wed, 09 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752024593
