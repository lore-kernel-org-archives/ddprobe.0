Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5F41E4AE
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751710194; cv=none; b=GIKZceLOSJkriAeZPF1F0YpgKvk/vk/1kBSs9F/ynds7iuym20A8IrWA5Qkon61TJ+POKDuUTEazUXTyuF6JvuNSq1dX1oKQU4YZLQJbzo7tdaNMlWqPDOMlU8x1WkzohIRtxr9Yi1VNQFprB62E/lkA8XvxqY16vxxuMlCCC1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751710194; c=relaxed/simple;
	bh=RblKxcWj50Sa12veAU36UKzQpomk4ItvNEYJhS5WQ2E=;
	h=To:Subject:From:Message-Id:Date; b=rXDtdpywg2V+57k8Z35skSpe0K5fiXjh0lGN6SlbHxtW3bjuc52hWGxGxS/Hxfe210BjL/topb+dJjmhgzIdF0SnoR1D345M47RxoPvf9zi5axggdLbeJEzr/qjVjEz6boo058Ni8uXF3XhIPIcVTLKLSSiOruEvmemfFLos2NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z43JN0p9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z43JN0p9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FD0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751710193;
	bh=RblKxcWj50Sa12veAU36UKzQpomk4ItvNEYJhS5WQ2E=;
	h=To:Subject:From:Date:From;
	b=Z43JN0p9viAMtc5HCM1sXhCc5uiYADR5MTghtMXVOjhn477hsU8AilVtpT0aT5c4l
	 /C0+BQgyM4hZagF0AmNdBuY9hXdOqX6Qvl3fq4p01sdbwxkso5wN5Mb2gV29TcAIUa
	 zC70RaKnsBtLYL+XwXH+1N6avUBADhNFUhjbOXU4gdjI6dwGnj1otFMN7f5snnqQ+W
	 RlRVpZ1w+ebA5DTqGbKa6mTCwOndDh4SwqKPqcIRntmslI4JN7A7dxspBR1Hu2QbJq
	 tCCERrOUs0N9bpBALXCzppe0ld+UwQ5ss6dZfv+CLZ7/1eFK2p28cs4tlUrhBDu5Br
	 G43mg9AtRx+5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D9AC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171019357.10229.7569528275642996769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7335eca70b20ad4aa444c80bfeb127e89a7314e69e8706dae9299cd8f57588
Date: Sat, 05 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751710193
