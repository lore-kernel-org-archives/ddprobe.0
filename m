Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0A824A06D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784863834; cv=none; b=g0YFi/mETNiqSIewteF9t1MO8YI+Hyiunb4p2RcSj0x/Sco+oUKJXb4LXFWYz2ylvwYJAibTaZa3GzuB5PSOjkFrWzjfmccqia2Zt42tKPKHc8bQDzyk0KoBd0qWmDK1yXNRAiRscJ6x3Iyq1aXwIrS8BZr/feguQ7CftmK25sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784863834; c=relaxed/simple;
	bh=wZSOfO03Xhz/TLMWfO6A/Kb41nMWNRT8ntPPLVeXI1M=;
	h=To:Subject:From:Message-Id:Date; b=kyPLQX+m488NKI2C/y+VcgaVs8PDucKSEZkZ1xQp9oNM3ML37crxR0MXEmmTiP3nzmbP6IEg7h6RwYGCaAD85+LvY3NwHeLe6pd8EPgsgO1H2JOYkCc/6HdsmM+9bmqs8efEUqslaB8mm0KPDgbYHo0RWD8/lIViFPW014IRP+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHjWCe2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHjWCe2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A9DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784863833;
	bh=wZSOfO03Xhz/TLMWfO6A/Kb41nMWNRT8ntPPLVeXI1M=;
	h=To:Subject:From:Date:From;
	b=WHjWCe2yDHepzaDYJKYHnoXTkgYtOmmqmZQTC+2kW4dD7pIskPhDZcD9JfZvtz3zV
	 2wyryRcqAJz6UqkpzoYN6f+eA4t/po0YCPJOykHVomn+Y/fcQG6/7qDaWOrX74ZAsw
	 WriBDJ8g5fTl09O7rOA6x2bqyD1CTONHcW8dBy5NECojiTczrI5N6tsIgjrX8uSTu7
	 ummfVF3jxJT8fAXGs3f+W6BN9bQhzXA9XEC6SduT9qb5e6zzGXeFyJ+MZ2Zv4uzdt9
	 Y7S02WXMaaGS7xRpZqxlQ3WI6EEgoV8uXSCzXaCRZG4ESjhKYQHfqZFMxZ70frlRkT
	 mjpPXSyyNRTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E46C531D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486383368.29809.5062899194658941893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f4a53cfb6b2fe9d0e340983691b85ae9baa0fe8bc505204f161a3453a78261
Date: Fri, 24 Jul 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784863833
