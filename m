Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386B223C8AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758299394; cv=none; b=QHb5RxmM2f/+UfmSy4A/YqHeFawPSm8FxbwCjPuUvW6ilhhx5gRQnKcfPz2k2aYWwG8Q3ZEN+gLsJpWcbI9du85mz+ADauHi+LrnLX0M7JVZFvJqHEUxrkQOq9mRqQqd+FSiqGBpOmJLh7wQo01VEICvQ22CLErLOH5Pj3aGb8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758299394; c=relaxed/simple;
	bh=TrHQXcRASxR+3UpFexspLxoUTZoWt+Ubg/t/kD3cgWo=;
	h=To:Subject:From:Message-Id:Date; b=NdGMu5EjZquO4eOo+ceek9EahF0AA+uRn372dsdveVN8NZuptmEXpzW4LLqDGgbaQzGij9wGZEOprllAesdYKO0SrT0dYSitEqn4MaPhqO/+dQeDr70TwvsXvMIS+7yKEjrQErFkspNGMXU7LUDd7JFS668nIbOBqboBNRWugnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHJYZJ0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHJYZJ0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3795C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758299393;
	bh=TrHQXcRASxR+3UpFexspLxoUTZoWt+Ubg/t/kD3cgWo=;
	h=To:Subject:From:Date:From;
	b=kHJYZJ0luc5el655sO+ujAF3hVwxomgAUt5fSYl7TxfxKMpn1xc8L0aGo8VoNzdpU
	 SHDbWjeA8Vss0mafd7LygAEOyMJOlrJMsY91x102SWHryca3NFVFA/MFAATQRvDb/E
	 xOspQEUYmV4gGX8z0pjuCxFrpyFFRxrPfFBI0ZsClvWAn/f/5xHAngZ1K4/BSLMLjd
	 KDNL4J/SPe+aoBOkEsSAJEuuYP5f9Ms87np9CBG/VDNqcN9iAFCOeiTUg3LWgiFEc2
	 5oFZmEZzOjvgmbfWjdMtWqsoF6ZEvODHWTm+PoRX84mNa+G/4M7rPfk+06v0pJ1DRZ
	 C7FYvZZOYdFcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FAECAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829939360.6589.11579516292445367411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee4d202055e2218373c8945c297108a3bb3e84b02ea8d36f92d594abc963210
Date: Fri, 19 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758299393
