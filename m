Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A91D4A32
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781919994; cv=none; b=ArWQGkxd/g2+6WBL6iWtDTDLghuipsmcOVYfraDib6Wy5kINYsTbDiWvOevlxsZRMIvvvGQCLvszkHK/FxUgQ93kX0ommoWKfNXYLh79kAZhwhalVnsHDzUrT1f5CExkXJyrLlDJKGPKQQwfmaJ0R9/I96CTqBLZBRkrAPrwOYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781919994; c=relaxed/simple;
	bh=yzLfu3eBMut9vLdpKxisLnBEl82x2fpuIjnzDzl+LL0=;
	h=To:Subject:From:Message-Id:Date; b=eqCJVoWQIQ0mZJuIRPJVgCF1IvRSWnYSIkYFVS94g4/TnH20968mUcPg2DfGCu2PiGmGoTtSF1Ev1tHXotfgJvLaKOK/484RDOKxnCEkBApzimj1n/jFBg0JJlgaPvOeIbD9nG/hvZYtNdPQk1TzmmgcDzKxy9iRM4Ircolvs6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MM6o+Xlw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MM6o+Xlw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D478DC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781919993;
	bh=yzLfu3eBMut9vLdpKxisLnBEl82x2fpuIjnzDzl+LL0=;
	h=To:Subject:From:Date:From;
	b=MM6o+XlwiBiHWS25TD7GxJGKomgjmH0u+W/ibhBIULVmItrBGR+r77wSyPjvnjzJZ
	 21sxo/EsUh9sKUpa/ikAImzHDYAKjvCm8TH7MPkIwgu6O21x6HtaBxmRGXnsTW3KbB
	 0dX956WMK5lTvRQ+wLGi9yZz/0q2Gqjf+X+q2vLbDRu4Efh5VIioFJIjfAANjCuvWl
	 uhDbDs/Q1u7EOf2mJYqLcvnccZuCGRwd220x3ZTHA9tv9f4nWuATX642rYAFtvHkk4
	 bMyVFxEfMi8vxQ/O2m5fzeKWtsQSRH/3wAFDNHlLF5QXIPQVIbie1Aq5e9pEnwCpsP
	 uJzFq2KkqjKnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8ECCD98FA
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191999368.32492.15256603243750427657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd88215730621a050ff62453e9ad6358981545e2d5a5b9df594d54005dc8f11e
Date: Sat, 20 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781919993
