Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFB73DA5C3
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780944874; cv=none; b=rX6hcqxOsyYYvO1wC2mxIkJtSHSN2fVnu+gsQtuFBjzLqgpJvokNJ+F1ILWFLZ2TQyuE2lrgLB0Q92na43Lwhz/p+X+riUiNDO0ED/Hj+9BxhOZSOZ+3CacHvTh6HtGkXag48OoDZWMysrRgZxdCgbdwSVKdHE0aNAo1eUbZB9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780944874; c=relaxed/simple;
	bh=V6XSZs2TP3I/er27R/0ysDqwro0o2yU5St2x1J6yNcg=;
	h=To:Subject:From:Message-Id:Date; b=JX8/2QQS6Qn9h79bf6W1zIuqyh3kYCD31Y9aMgzWgPDc4dl97aHCDi/N8sYk+eR/cuRzcSw7bKsvASEmnGGYDTgNDCyFwqVsaxbUCUabelT/Zpq5n9cUiShBHnaNesA729eCBzdNMajd5Sd3KEwnKCzW5t08oi6OAGCqvXLNDdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai9sF+oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ai9sF+oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA505C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780944873;
	bh=V6XSZs2TP3I/er27R/0ysDqwro0o2yU5St2x1J6yNcg=;
	h=To:Subject:From:Date:From;
	b=Ai9sF+ohv/v271UQ347f15B27eRVbsL+W7m/r3ohIL4fCTwIxrMeKG+k9SadvKfzd
	 BXkeBDhcpb9nRKk8iKNgJ+dYvVb5gLABJQCrnngmV/5IfFBDPMournYTZVOitW5Yl+
	 j4n7BRjl0dcT2hVzMPDn4Tx45FxoNJgfT9fYsCeSYsD7UbyNKnbuH124u5J6FZ/Ttx
	 ORZMVFVriZWxKRbDSeQOXen5MFeIZipQtm+zTzKTxUOXj+ysl6yeTlF+DSMb/uEEch
	 kCeYXBlNPvicN6zLxGP07ClhW/Y+TjE5g419d8ivdCqSWR229TeTx32mvG/32rIITh
	 k8wLx7mwnoorg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5ACCD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094487370.17531.4991716779968365961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740bd59c9071589e37e20b2cf912a5c2f2a779802f50924e2475566264c8abbf
Date: Mon, 08 Jun 2026 18:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780944873
