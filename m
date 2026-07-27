Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A42EEBA
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785115234; cv=none; b=UBtzRJPysyZk3nNaVsgIcXWropw9EatxnfpY0uF3GLYOfYKW9I0QfwwNGnWaFPLb4TB9IUvGIzMGRDd8aO9a6S+BYY+rtSUbmM5f5AnKO0FYguadBlDbXqXcVpiSXr8qfqgwEHVQgtpceVakvULIAg913qsPPoTXevQKVFffygk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785115234; c=relaxed/simple;
	bh=mqrrBKc70AIOYT2jVHCkdRJn5FcZyaz3LiJtb/LFQa4=;
	h=To:Subject:From:Message-Id:Date; b=PBwsPCH7+OFoq2LwI8XhUUPaKebXZ7S7gfN2UL9Uo7HKehZqlfinNpKzopi09C1KvpyLkJKc4uR3/JilQMeM1AM+s/q8nNiH/nhyMHnIqLkpuCZZHTlkjOurniYMyYFEZ1FCRksN4xLLdPWPsyAVhlYnKRU2/VY1zxaxtqDtokY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJqEijQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJqEijQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6099C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785115233;
	bh=mqrrBKc70AIOYT2jVHCkdRJn5FcZyaz3LiJtb/LFQa4=;
	h=To:Subject:From:Date:From;
	b=nJqEijQ6j+cJb2F9GvC8xVvJYtC62rTAy8yEwMsCqSpZPVzTBp4HOE0RuPDSNMg9Q
	 gnPYkVTs7+xOl+o+0j2j4X8w79807vmytGYSbfOeLCixVmqxHym9jhQII8kT+XzWhu
	 kiTEPJqQ1SUel7Lh+WKFk/zWx5t9ljR6hYVO9gW8YBUz45VOU+4m5Mrc0/isw7OWg6
	 jRDfPIjLqGqvVFgZK9T6FlNV8QYBMMq7wlTUU6cHr3AHqu0PHR7nn5WrTvW1hD27h3
	 DZnEUZzCtZPgJTH0HQtIJ9wk4Y4Q7G71fJ9J2Ei2tIJvraYPGA7XJuQoE38aKrE1lC
	 kzfD0AB3EGv7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE27CC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511523368.25171.15443243071826631139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64488d49f9884f5ca3e9ff3eef0951823b575a1936936b6eaaed0fdc676e2831
Date: Mon, 27 Jul 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785115233
