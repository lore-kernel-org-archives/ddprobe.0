Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B36230594E
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786830034; cv=none; b=RBjpZEIZ3r6QqCKv2Grqg0xFLEEh1MS7h+TlLiP8Sz1BQlndwTzTrDWfdbC8NdOuTeqza5OpEUU2KgDC8pbWUGoHid27Snx/qpf++K3NPwh7BBQS3iRXiSxdZgTKT6BTD9QhFbK+rw/hbUG8JRScUINH/Mg0L1XOPto8J1d1AtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786830034; c=relaxed/simple;
	bh=TEVnt2hSeIMnI4bEhFi2skODsiEx3o5mZMLxXW8IXoQ=;
	h=To:Subject:From:Message-Id:Date; b=QdAk3oRgnEeoJwfwzKcnu5FLe/ito1qJqTf8HL1tQSHHcNZAucvLIqZVYny9fJPzLArh56wXZgPzj3pPYzAEti9sJAV/9XeHdjEE049CDSer98Ojs/+pOam0mASECbNJ2MsW1ziChmS3TGF9CjGC9SXMdU3FiOBsgP9cQSj2aaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdAlsJcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdAlsJcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2410C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786830033;
	bh=TEVnt2hSeIMnI4bEhFi2skODsiEx3o5mZMLxXW8IXoQ=;
	h=To:Subject:From:Date:From;
	b=pdAlsJcvcj/54mHOOsTdnuFC9YYYx3NzsOdKvdpdvw4ITSca8aUjdi8Jz/Wo9XsPP
	 PwrHt3sXEgVANrJVHY1EekVKs23+tDvyfRBv0r9c3XDR1Z8W5pNp7f3JzJRu1N3a9c
	 jIYLOPKpQluqVYICJXlT7CjH/5YUzrduxR8YTOhUlfvt+xnGfbBevIFsyPyEJbO1Cf
	 w0qZ38lhEQf4cZIJSPqeiF4F8LMzbX0nTgTEYyZd2DyxtBUPtM3el1iEdd79xQdRFN
	 2cJCHQIj+cAMOtQWgF5m5guu84BSMLTzpvZ7rCa+ymfMKXCZnaclhXevCgG77lzRm3
	 tRV2Nlg7MMmLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA25AC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683003368.32711.948906690011374687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77815b0b00796609e901e8b5e1c2fe0aeddc7aae2be66c1444dc1ce4969b08a8
Date: Sat, 15 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786830033
