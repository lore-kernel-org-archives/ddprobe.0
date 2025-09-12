Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3103F1DDC2A
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757698794; cv=none; b=sLyalfiZSGhWEkIQLQSrwdE/VeHomLk3rMYp/At+UlLZKJBqMhkIB9e5HkmRTj0qAT3xQGVVwIiCaTY5Nw3bezEH+I/pJ8YhOOD4BWyYQhUW44K6CyZxXAAVjyB6bBIiAfpywkUAMd6NqNCq799UnqFC8Zf9eV04pG93PC9pcCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757698794; c=relaxed/simple;
	bh=0JLD3GpjIICjoHTN5Xvu4EIop6P1L9wc4cEjGSxu2iY=;
	h=To:Subject:From:Message-Id:Date; b=A4EntKOekMT2/AYHrkGngKB96iN3vgaXzhylM82ftSfXNGtZuMvhjkisgkTI0EdyaBLJDi5wwjoiBz3f7DWaymb7J5sk8gr2P4kVua8WbsXqGsfRDw/12M9NClPsdxN9WFhWSpKtwIPs7HVBw14D0x1NpYTF4mgpbC8r5XMOnjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvRlLNYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvRlLNYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6777C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757698793;
	bh=0JLD3GpjIICjoHTN5Xvu4EIop6P1L9wc4cEjGSxu2iY=;
	h=To:Subject:From:Date:From;
	b=jvRlLNYyZzNSfWx9H/10eUvX6QI3pYkuDQw9h21YpJzEHCnIxkZklZ5XEB+WldGJ1
	 FbdahoHtKu3o2QFX057iDUy+1g+/AJOX2YZz+P5pwk3QHwzyikBY9Mas34MzvnHhSX
	 tUE6zWbn0c6Og6GHPULf9INVHNusk44gq5H59fZ3rpd5aCqeCfkQulJqzUEveLGN0R
	 FIbqbxFjoTPOlz3mTlJXI/6q2DzoSa5jdyxwqTEkVMtIYtIEMASvfbAXBFm62FDv6f
	 XVw9BZt3gc5IjTpWDyQdkMvh4p6lSDNM/kR4OMsZhaYOLX40VBljJ+QKqXqdpVfRS+
	 WARkLVfUUqyBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C53CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769879358.19811.13903912911492108467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c4f74ed495261ec75b03dbc2797fe576d66a9ed84e51dfbc323ad402b2e8cf
Date: Fri, 12 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757698793
