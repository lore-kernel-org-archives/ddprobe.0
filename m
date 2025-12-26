Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3037D25776
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766766234; cv=none; b=bZpvTR3tGQqLeKj5YSCEtwf4Gu1QE2y5ITrPeUPhQH6imDKapAG4DWNmQqJx+4yYdZqIb9FKdZmzuFaDsX2wX8ErvzxVHXQfvbFk153sKoOWkzu7sNh7SKl2R6vHg+rMx5cvWWw9LaTT2wycxY9teZ9p7+2gymUqhzgzcOGKSm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766766234; c=relaxed/simple;
	bh=4zT54PnWx+cEkMbNFRzTNx01zsSjOhwN6aIEoENmfWQ=;
	h=To:Subject:From:Message-Id:Date; b=neOMN0OM1Dm/VzWJB0iT4drZAFoeBEmQXETs28tTkNIyXuocGzgjudys0qYhEi2aYuufwyKJTJ6PMVdn8b/oHSppBnpHY/cv2fC6cie+L/eLnngUoPjD+rdGLPiMqCeDxXloX+1UFFQwXyNYrFA99p/TRhOINjKI6M+P/wwJxIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9ekv8My; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9ekv8My"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC72C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766766233;
	bh=4zT54PnWx+cEkMbNFRzTNx01zsSjOhwN6aIEoENmfWQ=;
	h=To:Subject:From:Date:From;
	b=l9ekv8My0pjV/WqtCijUV7F9VEWhRPycfUdQmUX4lfITIdmktsaT6hvZ0zT9oIFmB
	 tXG6KiZFelv3sXTj3i6NGeQSnQ6T9UkK31J88mTSuu699bSsBpsj8jwYWVvQiGi4ap
	 DzG38N4X+P3XpXEK1wY+2yXOrSMiX8WCiVhLZvwBkPs+rpQYrznPC8NwGw5kXZHJsU
	 xTGEP0/9kkZ9A1OTenMmk5/5eTBONtQXu4fU+PQpoRYuIC2XfTu4ZRVm0RiHVQLWeh
	 FyaHICfW70HOL1sL8x2rotNIpAMfZuke992eakLM4pSLe+3GNulxA3JJF2qI5m4fXW
	 MFxxS24M1BoGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B890E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676623362.30981.7891494259379544584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb919bca00deca0d6ef918ba4fe6fa7297194dfbbdf8be05ec22647446240b8f
Date: Fri, 26 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766766233
