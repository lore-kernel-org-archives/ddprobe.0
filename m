Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6C1433BA2
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785786034; cv=none; b=pvazlZFVqtbQY72DouZ1jQe0MbIojtWdsvNdGoOr9zdSzSUbGgWgO1QJIT8xt4TqsoRzqL0VH8/XaDK2kYfZ+PMjeazGtlODb/UyDULRwTe6ZdFE+A7ReZS6NvyTq2lNCvvZ1qm8cQeTndhpFkpxmNlOXLkXXHofR4a6JxETL0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785786034; c=relaxed/simple;
	bh=uqFyZhHDRwVf3kdtwLTgqq7Z8Bm2geFbWFiUTADcNIQ=;
	h=To:Subject:From:Message-Id:Date; b=opQG2/hYa073jgHhMhZvgx+B6DjAKq6kPjmvadzBHz6lC6UTVR9V0u3XNNHMgSMiyIhY+0VCcJFUYlFB7d8V7J6wwvO9CCtpbf+WljAeh9DcT/mNTLh8bIP7VblX8O6qx+17l/SFdUQX/eUULKQbu/OHvbsja5kPVWHAn4q7b2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me75PVpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Me75PVpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B05C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785786033;
	bh=uqFyZhHDRwVf3kdtwLTgqq7Z8Bm2geFbWFiUTADcNIQ=;
	h=To:Subject:From:Date:From;
	b=Me75PVpbie9iJ69Ku3JLjfpfB9zJU0uhz5B39WUTYSUzzpCYHqmA/VQiXSQc5TYvd
	 L8kXxshYCSEsb5xStDKVQpxWs+hdlYwpnRxSJQ6txxeXQPZFuXHzIA1+RKnODb5T2b
	 J4EEE6f7RMvP9zoaqzBI0eSdGffXzR9hOGnJ84ph2fna6cydfl1p6JOFwlQpZnklmz
	 2T6KZdsd7FmFKslWcj2LSgSbQwPujTMlL+UhFPTOQ9ugCfZM2JLaP4cjVvPiqNPcDp
	 sO5H5hYNxu6PI9iZoZgdAyAED7d5tbziFs14PbeAds7dVO/ohOBsnKvt7lePZ4VT6P
	 LEGEbQPIGseQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1301C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578603368.17595.375192816577269118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21596db0491e5beeca3b263d3327d363979a9577b8be07414e3de62feff9142a
Date: Mon, 03 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785786033
