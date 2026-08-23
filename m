Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621B849362B
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787479234; cv=none; b=gCyg/qyjW6wSb6a2U8vVAjOwDBS3L3s9kGd4BshfUcm0kNgBNGNjKxE1aBREOLqhNBgOsby+PYLZiO5q1ZDlS8FjDIzhiDPzC5tmXlZuK+tddc0wzAbz2ZNzvh2nFhxHuQ/A7IuIf7fy+cM3K+rHcOUheuLrWDCSqA7xiIsntZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787479234; c=relaxed/simple;
	bh=sWR0zGXRi5umInJBBNzxk5jjnW8jnYinD0tvDexx6Mw=;
	h=To:Subject:From:Message-Id:Date; b=FMYqEa7GDqgvQ38zKKEewFPxTqJL2MqKti54IuPL0EqQE17IZ4mZikh125gXg6Aj5mra5ZJBGuQV7j9EjL3RdOHDcV/Dg8TiX2HSAgxK0/G1glqak8nHR9JpYJweHDSnJM4ilkNSVoaBksalE312buDaZ3eJcP7sDRBlLei9yU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLL9rnJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLL9rnJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB115C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787479233;
	bh=sWR0zGXRi5umInJBBNzxk5jjnW8jnYinD0tvDexx6Mw=;
	h=To:Subject:From:Date:From;
	b=pLL9rnJi5XmkQwAOSJTRGnqjd6WshjpewCrlox0lRBPeswuEANPn2szpYD00x+wjL
	 h5Mt/Io+8vrKAIHSw4ESUzyXz/WZD0D+lzFvKbDjhidOkh5Bnxu+AQve2t3Muu+jFn
	 WhSQhXifYLOyEGgsDuliuCpT9mvlTnuv1tY4zEX47we5EXg3UVQHSaFCKwysv4E4Uv
	 rtQXrBJnSW9c8YLPix51VJExlHOcuN+9aHUG/LjbJtm8LutQxz6TWr8e17m9IdXjQh
	 /bWN/81yIXwGFwXe3047bwHHZH2BgJYJST3c8S5QlJvhIe6N0YkHSq+0TLfJ9S7kzH
	 +jFkw/EqihMAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBF2C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747923369.13343.8832220039850332590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 913f7b3cb8665597e5f7629b9a06f6b5d6d0458e8e77f3bead40a468a245bbbf
Date: Sun, 23 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787479233
