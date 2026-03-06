Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFFF273803
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772804094; cv=none; b=oNaHquzTJhkOGY6R0lngzDDXtOr7mhDGBRKVWI7xkchFke0nVWWaDo48IXqvvwwMWdSwjpZb7pEAN0oaRSIoocKGtLZKo/7cxAsT7s92K17EdHH1GPJbVX710lCp9oOtdBIxzM060zRVLMVKgkLepOli3okaXrD4zc1Chw6FllQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772804094; c=relaxed/simple;
	bh=bm8JygXyFxZp808RTmEY9wz+Ae1z3QsVgBbIh0WWX3c=;
	h=To:Subject:From:Message-Id:Date; b=fmb6PlLD5Hvs71mXWMiG9JZBQsDFm8M9z9WKD5y1YwVUQHNlEe93G1Szf7P7DAn6fLx+OGYAj249zdnOxpvOIsFG5AzaFdNvY2tjbSKWj+vUjQuw6Z+sE1tISRs0q5uTLaRO43QeGMAUjr0wLzE/OfneA1N39xcAfIxpePexcfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aj0Juv6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aj0Juv6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B51C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772804093;
	bh=bm8JygXyFxZp808RTmEY9wz+Ae1z3QsVgBbIh0WWX3c=;
	h=To:Subject:From:Date:From;
	b=Aj0Juv6AVoMvHE+h2jznxEavMFD1gXgBuYVkTBxAYO6lg+waeiu9zCVO90Jnv3zaw
	 FyRpQKWU7gBUS1hw3GVui6tgi/DW4cIP0EVq1FZlaJb8Jz4yTYJpZx4NJHHNkPrkno
	 n1fqNGjE3xW8hshZ63gp1xGMzNyx+PqJ+Whb+/0MHMXLqEriNQBm8vajzsLn0vucpO
	 fBJwBPzL9BkfU5dxz8aLPZHtiD6JiNGpE5kryobhlc/mshU5iSRNMAvqfe0QxKit0x
	 s4Kihi6ssrG1BsA+5gY/wCNRW9yL9inQSPwfn4bw++e2wRen9XyFtHAKj34ogbjIC4
	 GEChQRsjyPq3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AF2F01832
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280409358.14614.2764181134554823324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46e1a389ddddb362e1f98c3634abf478e2fbec364a71b17462360c3f36a5aee
Date: Fri, 06 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772804093
