Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A50447A73
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735841154; cv=none; b=EGJTpw0OopWSAUMYHsxtYSPQ/uiFNUiPPhfeQJrtTfVFFAOR3eLpz3K3FPqfHd4xfjnj80yeGzx8YR1jfGDRaL24i0J92/2qVeVb9rMh8I52xFwGj0NPOmYfGATNbSpZBq3tQ50G9o2BsYASJPfBYuMdv07sRAYuGDTlKY9ZSZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735841154; c=relaxed/simple;
	bh=vtRXCBAgUXiUZmVlWhI+ELWZxipcxzRi+rsZySTtATg=;
	h=To:Subject:From:Message-Id:Date; b=mPArZNXxX8rq2+6q8vJTPiiPhhlLHaVVYN/hxljKQ2lLLJRFGC/HHoX+Y8WQ/qIyqptThH3nckrcWkMNiUOWXIs1nOuHXSNdCf6rgoaU4CjUY16YqzQC0DtzrgEQoXxPJS+xrZCkEJHw68Lb/NRagDHldEVsFcQCrRAfm+HGSXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DC9o+9ip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DC9o+9ip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C40C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735841153;
	bh=vtRXCBAgUXiUZmVlWhI+ELWZxipcxzRi+rsZySTtATg=;
	h=To:Subject:From:Date:From;
	b=DC9o+9ipB+YSr1PO5eXm4ccR6FZfFfP/M59K3sKr0pU14WMm/NoddDgF3e+nhxml8
	 VfIHG31L4IDV35mxEKbcQ7I2oCPcOVthT4xWrMlL/6n+WZdVxcCVVnwYgUP3yT4HMu
	 D9E1BeEQ+3stYZ3cwZWbbpXyaYGnApQWTJJnzYNMq0VhnLLrN6JxQOQwkTLMQWrktX
	 pHPl2php/om8/RRj2XHZEaEfGsNlf7hKS0SVXpCSvYjW7t9LtIkFQbfseN9NJm/46F
	 d4dO+onhPlZi84hJUpqa2ypZvsmpPZSdbNjpuUsnFT94SUdim8HRRUslyGwUJa6uMT
	 NoKN4CqRcMI9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A28E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173584115358.28357.13650755799174032178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f911d0658fd0fc7fe9702225fe1832aea5901c68ec696779e4f950f0d191634b
Date: Thu, 02 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735841153
