Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5231E633C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774853093; cv=none; b=Z2zS8z0zUvAwwLCXG0iNzHGViLfQBRm89/RTmbDCypI/ux7YqCSsoojvOUuAsp6uuLgo6JS4bqptCvbQkVAo/pwxg+cXcGAtBqnCcKMNhexUSLi+W9I50FSEgiS9cQHBI45RyqLtyRkkgTyLz0pvFitvifng+sgUZ0aetHvpY9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774853093; c=relaxed/simple;
	bh=+O5eo+UU6P8uHFE5MGqpGxxDU03OGgA8hPLEe3lQrmI=;
	h=To:Subject:From:Message-Id:Date; b=clPznGM0SMZYrBQAsM/yUNnBrek+nV3mOGlSU+rmUZuYE+P1xamHBcByXkXY1OQfP7eBM5OajasTBzwelU9Fds6yXBa6z3MwbyAP71BDjUqluOOB8ofFfH94WOKBoITEaLwTmqyS6rPj+5IDVCb49FhxqRasdl4wxlxliU51Z0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scKwycjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scKwycjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F00C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774853093;
	bh=+O5eo+UU6P8uHFE5MGqpGxxDU03OGgA8hPLEe3lQrmI=;
	h=To:Subject:From:Date:From;
	b=scKwycjyIS6xIezonuD3wXvJPooKKjs18VjACPPBiJ3ONXep9XJ4UDNEoaH+9HLbX
	 GaieMTcM7/O44sjZYxebMavm0ZltXqoeBlqrvmxR7LsXPl9vBgDQxTRf3AWMHE8XM/
	 QMwNmv4rmWmypH3fkMgvC6dJBowfCx776cRlpv14rDNc5B/CJNoromPaDDZ/4b8rdE
	 FfgMZanboSXDgLjbjoBv/WJknTPGiX4gMyJjDgFVAIB3CzrCQ50L8Nayvhgc/YRwVK
	 OT+RkujJIlUSApTdPOTpWQxtko3BKAWn/W+rXI93SzYXbM1IcKccElY9lOT7JJYLmm
	 gROGgbhY3hBrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA6FF494D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485309359.28655.2658555568537515700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05b1ea9c905350340374f1d2bdd99ac9e4d8b280939c5c301d2ab60a0570e6c
Date: Mon, 30 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774853093
