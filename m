Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3424025B092
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784760574; cv=none; b=JhFNhW+3a5n6zfqKQ9tGR4O//oxSlMhVTBXAMt6+kDqTiNVJxGYBzWZ++CpgHuolosnSXNcNfZ0JRBe2rVbN/6B6Q8Sex/rQLBl8W3+a3Q4v+pWT59JhW8hXWWv0Nawyht+jIF6flLDyRL3tYKg1DiIOUC59b3GcH5QEOg5Nwh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784760574; c=relaxed/simple;
	bh=OSXq4AU1V/0TK/A4Dp3HjVcVF7t5FmopDCDWLhgeggM=;
	h=To:Subject:From:Message-Id:Date; b=MzunS4G5l/l/S3j2Wb5taUEkglg9kh7rs7A9DMT4MVI3oh1mPlZ7JqqJn+CgsTs4ohjWYIg9WJKEuROtC0jT9X/gdo14l1qFQnqWQ+QzK8ppDtfPX0Yic+YK+xML+1uQyjMPUCaOnm7kCO63VnoX6VMcPsvBK5gAdgIBXJYzWoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RumSh+/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RumSh+/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D010CC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784760573;
	bh=OSXq4AU1V/0TK/A4Dp3HjVcVF7t5FmopDCDWLhgeggM=;
	h=To:Subject:From:Date:From;
	b=RumSh+/McPkyWUn6mhEnmKH8keLowOoKvtEC7NOezkKRnq2TfoDi9aKgeta4oJr9c
	 98BNsgMICPnCw3Gd3v31izRzaZfB8RUI1zYEzueG6UNchm/1ZnH5jOghXLgx5OqIU8
	 xWu0LvJZXarStTHzAMN9tOZ6eT5gW6uJTG6tKyTdZlWJZPCWaYeuBNj5LvzFWBGaro
	 MkyCSYBSwDnC8ypuveEe3E5e4S47rOvlALQfi0wScrlti4XpsYgeoivsx33KbLq8uE
	 ybd41Sm5mabaKCnsKRicVxN1DhVws//onXn+407lWN1Hmybg+EIzSLcLr8Zu+TWf4R
	 KaCp5MHDxWd3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E2BC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476057368.20786.10486484245347378654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b7bb94a69609d4599e99cb1af1d0a04eb629ff0b0bfccbe23d849f789dd55e
Date: Wed, 22 Jul 2026 22:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784760573
