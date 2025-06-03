Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E6D137C52
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748929794; cv=none; b=B3aq9r+a6d/qPkFEheg0HSgPrYHFsS9E1WAmzHKw3D3ZsiuAv269IwagdRL1I5rEH8yCNxbrEsgCjFbO+clz5zJl154eL0PiqinPNi3pxieKJDw+lZW8KDVZZq+j1yoO7IlyvtmTbb+IiKetxD44GEMUy6dluTjVQvPFQBLQRls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748929794; c=relaxed/simple;
	bh=SbNKcz5bxlBnHi5mXemZtpH+7QreNW5ksKULRTdUoik=;
	h=To:Subject:From:Message-Id:Date; b=A0UdQs0s7devbaFmbarAa9oL+WPz1AuzG23pPxwtO67V17VLMtqLDzQa5lfuJOe5jKB2D5UEqTamGjCt8I/KBHkdY9fZ2sTMN1gn8fpiHDSJzjO43qWJI1BVQ/hCRxYsbTIR2bAQ4On2NDAwBLyIzi02/5gXBeGywfqMb31hBDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAdfGw7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAdfGw7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3066C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748929793;
	bh=SbNKcz5bxlBnHi5mXemZtpH+7QreNW5ksKULRTdUoik=;
	h=To:Subject:From:Date:From;
	b=AAdfGw7FK5iepNgEBaZEKS+CQdSqT9aW6HzUFDigyNZ3sZhC3xRVzb6Chsb4IHGoa
	 2z70MjP9u9x7LcnR6VklewPO+i513jEM+lVEdhpb+xEd3MrNNggdlRc4R12+Xf1vfr
	 Ph3XEvw/EZb8iNfq3Ex1w1zhFt2JphHLgpWV3YsinwBAQQZFb7MZ6nBK90EqsKtGzM
	 Fy1h2vFDuIZayoVbDM/5oMmmwMLlqJOj2AFiT0n4dNbC6NzikV6f22q6QXkShsFDVh
	 6ZNZXjAfDkjncNfHWubo/TedoL+FxdEmSti+fetmHMKRSM3uwFeY2QLUan496XpCvH
	 AdGeI4A1M15AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E766C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892979357.13352.15035102097731993458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2802a9b6f024ecd59e90a96a56f5ec5bd2f92c59911f221ba86e1caada57f92e
Date: Tue, 03 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748929793
