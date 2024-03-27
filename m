Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C54E136E0E
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711549697; cv=none; b=FbeV/Lb/48uCWY94+FnYtgUm74PGAggNz8mImSNpJWCh+lEb9b8Isn8ezz86bEe8zGIxJCQgRykBz+JgLaHtoXWWjpjZIAgKSRR2DEun2iaseXKg1vQHjYgnvb7F0ezW+MkZWMXoUKzsAahJFU+XetNvz121uStBM/0BcwKm0Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711549697; c=relaxed/simple;
	bh=t7oD58OeW3pd08+RFGMdCFjBhBEdC1aZG3DNN1FgryI=;
	h=To:Subject:From:Message-Id:Date; b=JGmO4erakD5/94SDHomLlNHmwGvmISYw6mttOgIsPpgfXaNms0/fQMqYw1pJM8u2MPUsYBdqLuJG8Pl95WyvZeK0iQjRzacMjaXik+i/wVSfBNARd0GJ8Qb2LRhLuDFvxVH4uExbpZrO8cYs93idV1BK0PbZ3nhDIVdkpwWB0aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2wEZz1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2wEZz1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95419C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711549696;
	bh=t7oD58OeW3pd08+RFGMdCFjBhBEdC1aZG3DNN1FgryI=;
	h=To:Subject:From:Date:From;
	b=S2wEZz1gauul3ykOHKs/JvUKIV+bt81haHkvZ+jo0IC/qCtkeJiw6suU9WZb277kd
	 19FcakRDx8htAXMjjgWfkOzWMC6gzuOyS7EFiONozFwP+iugs/vn/Oy7R9X03c/pHQ
	 IVgbdu6K2KS5HG7J75KcLMmMW7xZbEz+kJLFjiDtGgQfdWIzqsYE/OJ4IS/OCBcWih
	 V0DTSmW+HS6zLItKe5TtrLf9LvAJ7NZLSQAEM8j/lsgfBI92M/P5FuZgiDFWtMqEjs
	 6FrjMHj42GcQB5/lAke9dauh6Ubi8z4HyR3SbA8hoJnHzMQgsVJO7b+Ue5pVkj24u6
	 s5VD/zj7rfWpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80E1EC54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171154969651.10918.8855255702702872263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86280a36dd5404e106a9f5c4a21f8a4636e43e693f0fe0b7b6a71cfa7875a7e
Date: Wed, 27 Mar 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711549696
