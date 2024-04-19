Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7057864D
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 23:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713570023; cv=none; b=UNiwBQhaIaptCb60pE+qxhnEzafyJFxNpzPg8o2Sg+38W6prCwTAxCs9IaK/hofs3fkBslcYUu0gn3SXOJMul7Xli0PrKeLeBCTjuzRjS934/1IwQmC8aghtxd4X5Tmzrv65X3MfaLbnPwSuaUPzrj19T5w2tbtnQU3wD7tsRrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713570023; c=relaxed/simple;
	bh=+RWVXS0qCTqPy+8Dv+Dv4XeS1C1Q2ieMIveUBKFGjUg=;
	h=To:Subject:From:Message-Id:Date; b=o7Z2J8bAP+78L6sl9kW1NqLTUvfHYfnj9kMhIBMFVu9v5HuWnJbfrE+Wm/uzExFyhX8ldDyNynZwwxGLpgwXZD56EjzqNT4ob+tUqSsL3gQFxVk4X13X9arv3L73XuPI2qUgDoy6+hznhu54K5Fkcjo1BHNj5MDdfJiiDcXgy5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClOqaSqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClOqaSqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED70AC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 23:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713570023;
	bh=+RWVXS0qCTqPy+8Dv+Dv4XeS1C1Q2ieMIveUBKFGjUg=;
	h=To:Subject:From:Date:From;
	b=ClOqaSqwTtONkeBJg2pczlryTejWzff3g8gS42BKWVWC7oyAoUMpo2X3qtHqsy2LR
	 R4YDBj5X8hDFlQocYTzKuCYuBvD03iFUnjkIdV/rEdtmYb1+IKs3p0w30+6D6jNRGB
	 071o8zSuwdc2CF/ubjfW6nM0g07XqH6yUjG164BHGjTuYkVqWzgAqTnIyvCDRu1EyH
	 ZDEtIuJAX4Tq+H3azPOrwBpnOP3IXBRTk1jU8gey+G0nVPosOYJz+FSqMtUpmVYw1x
	 +JuBoXPHKKmBfRe9vOw5ZaPBP6UbUUlzZakjhM+I43yWskFL/FoD6J6FQtU0Mg45XI
	 QRL02uLOSwpTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6979C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 23:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357002284.14494.8223198542418777441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb30e8338fd12c0cc04155cee2b2e015e6d51f17cc3add8934db7b1f01079bf
Date: Fri, 19 Apr 2024 23:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713570022
