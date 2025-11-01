Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D5E2F83B3
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762000194; cv=none; b=d19rk/gHtXJa+58Uv927PPcQw04wuxeXncDcunaGmH8gNe1yuf+qC7eOc5NAwcMGz0yBD9YJwN6iNt43czceZhyQBfH8YQWB1pQYNt/I56VKuYjPw3yuTPM1lcfvI7Fep9ZgZnz/c9RZWKJNDTZDZBmNhj3ya6CPmm0H1d49hrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762000194; c=relaxed/simple;
	bh=VHv5SnZF9pWj//A124eHs+cUSHuLUjDabciI36dj5wM=;
	h=To:Subject:From:Message-Id:Date; b=gRel+UgcbOMoRdKLQ7qjA46NKWEHfZgiaQBeZYiJOssPzk0K6Xpxd+l65ZmZZoUKWGOo68ao0Jsu2su28OPAts9QOajZ+YaR/gZ4JiLLBNnVQyXRqxeSoWuPvudO3V2CUR0Zx+5WAgEiQ6dgezvUdEFr4CecHrBQTRovOZsDCBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQ22Nv8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQ22Nv8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762000193;
	bh=VHv5SnZF9pWj//A124eHs+cUSHuLUjDabciI36dj5wM=;
	h=To:Subject:From:Date:From;
	b=KQ22Nv8Mt5sJs6PYkViTnBs0Hz3/pPBhAEs2IpoxpJ+C9b5N1rZBmae0qSbVhwHCK
	 96leBVJuK0ZS4Fvj/Co0C2+Es8ylUm25IGkNguG0nLYrus4XTwosX8Y0QTiRhW6h3h
	 ieZ3nLtZxNMZ62eYtHNxbjQCzE2ACBoW7M+ItVok4gWKt3U/y2bfgyCsvL3iBWMZ0i
	 MzCRZNkw2EFViv358wYvpazSzVbU3U+bsOhFCl29P0CB7ut2sJ1CjHRXIsY9rPDgvA
	 VLGbuih2zYq1+j9nGCNLl/cZjwUzna5uR191V7VSf2PnF2pVQZDAifZwEbL+PABjAZ
	 IqrJrRLD/kuZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961D7CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200019358.5853.12220269970554200985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a6e28a3ae26719b120c0d5b2ccaace79a2a9f6ad8bb79aeac300feab94a074
Date: Sat, 01 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762000193
