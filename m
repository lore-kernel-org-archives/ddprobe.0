Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEFD173
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 05:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729487755; cv=none; b=QDFZZFbOK9ybB6CEdt3tR/OZfoVVciHX1qveivoQpqttMS/5aXWh5TBTHdsXqXy2NJl23q1wdf6/5Mg+CSoN4NoLrjceKSFPgrttgF5hJuu3wH2VWQwP265keVrtTy8LvxX1EyOOCtkbdhCXba+HK14YxxJ3zEo2bfbz6XTBGYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729487755; c=relaxed/simple;
	bh=mpq27e09erzwFqPd4ouoGBdvvuqKBcQpOuqMkQPMEQY=;
	h=To:Subject:From:Message-Id:Date; b=A5KxpD2zN36LcY9bvev86zai66tUj/b5DZURIk+D5uyMw1fjUQ21/aNwjlZUKxUtfYppUjWKBinEcYbjZq8licu9byEJCfOk+oI32C4RjO4N8TMljm6VBAMeHIqhKyqqIc4hFG4x5nyrmql4vt6SN47YIRfQxMqR3Qtt7ZLB6wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfK1rgis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfK1rgis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7A1C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729487754;
	bh=mpq27e09erzwFqPd4ouoGBdvvuqKBcQpOuqMkQPMEQY=;
	h=To:Subject:From:Date:From;
	b=tfK1rgis/1wpQATrW0mDEkMYI21IlfIyMKNXwOtTewcQwJUmQ5AtyT/fYdsct7qAf
	 Pl25lzhZdBY3YVm9EpOam2NIG4n1SBzO/4ZrArJ1NkuT/sG48edfH7Cf6ZZ0ytU3XZ
	 XPG/h6rcVdz+Bud81S7mo/8WOreLKBQPjZNYyAKCQuTbNg1JazumZi9JHwcyp5Yo3D
	 Qfd8oQ8IBLsX7Kp4ctj+c6jv6125LWL9wa/RtxMS7nayczLHM2rqfvcFVI6hTsFK0g
	 4ZySFwzvtgAPDESbAtkMIh76XmLRCHtvQQx+iK9qkha+UDc3g4ripS7PT3SRmUuGHY
	 GN7knNoLWJXbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9E8D3C93E
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172948775360.14032.1806098149744070605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c207c74c9baeb49cbfd301933b84ab73d2bcc20c7fbfbcf4e6cef5a5be95c5b3
Date: Mon, 21 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729487753
