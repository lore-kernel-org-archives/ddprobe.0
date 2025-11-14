Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D967F28A1CC
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763140193; cv=none; b=cvi9lZIozcvrq02sPWpEORhiTWl8bx/U254BpjnKZqZfxUTPfCRlgPCp1XE5KdK+C9kpNJUTWkrIHwJwcaU4S/MIgH8kZme0vQWJw0o435k2ldyo92ZimI/6k1Yu/UqQfJ7Ar5KplZEWEknp07DqkFcQzbfNkJntjzi7cWu7gRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763140193; c=relaxed/simple;
	bh=gWUtPVhY8MCIS4u2JjNTIYaYoHkvwNHGUqboSuJravI=;
	h=To:Subject:From:Message-Id:Date; b=NB7B0yaGKc9JVNNTqw4h9SDQuAofHvq4mFogqSMKWpTOMy8uYEcwAWE1pUUE3TbZCbVQ/NZoGWbxCom//gd6KqkFNg2wdAqN9lc6rLAXu/cLmadm4ITV/a0ECNOMbZiy/pNdM3gARzFnpwXwLJmWNp6gpBntyZFeGsNeYxNSyTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYksGRHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYksGRHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BABC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763140193;
	bh=gWUtPVhY8MCIS4u2JjNTIYaYoHkvwNHGUqboSuJravI=;
	h=To:Subject:From:Date:From;
	b=IYksGRHg7Le9KuelDjpzpuTe6qeDyBNL9L1YeD+ypiry4+GKUQjqlI6NbL+S1W/cM
	 boFJINvb369OE9PE0LZ4yqqQW6k5LUu4xg5JUjNnu9qwmm0FHA3gH8HdtuH1VGZ0PT
	 YMspGJs9b3N9saVKnHk57n5hCRxeE0SErKs0/NT0qUSmTNtCRHn5ViVud5NKIIWUWN
	 AuZ5Jw9toPrJCJ28eSjs3Py1Gc0cBb9PpRcH7QWu3tRM7n0i+Xp1Xnwuu+++dBD1u6
	 9qJctm0a13PAARepLGorXFEjmvWe700Ex7LhN2I/FXMie6hE1LsC7O2QN8U3mwPmKG
	 wYd+DOSjo9i2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B00DCE8D55
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314019361.2732.16605245778359635165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8422d9abf7e5a5148679bb51472bc69452c2a01804429769b88ab0a5f36ed0f
Date: Fri, 14 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763140193
