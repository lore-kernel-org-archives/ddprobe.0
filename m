Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FCB2D7DD5
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764361374; cv=none; b=uAH3oW0QgpW4vS6sPzdKyq8zUdyDjcNSJvQrAdExYdodea2zJcnkAaf15CWFjFSTz96y0jwm7qRBZba60e+RgTSLaNpZXeRZnDc1rW5Ngsku+Y0nQj1xRgg0ltH22uJzoVRNktOHyJpCxmjuM8QfCBOn6VQSmbUuRdUAulEum0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764361374; c=relaxed/simple;
	bh=JZubp0Li2H1+KVpDJUf5/LbA7r0zLn0/ZLZoVnnbDvI=;
	h=To:Subject:From:Message-Id:Date; b=lzBaW8cRzqcHxH8Kuma3S113s9HVHD2GVfGwV2zgskjKbBfEriWh2UH6ZoO7bzH1HmqJcAwunZluWGQqyuBkWxKVGKjv3XHmdiREfefFYc3fGOReJAd0gECf2sfigpjcTesultPNf/gfzKVsKaKUfy9qBvMyXdlSP2mcYqdbwuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJcaSMpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJcaSMpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC24C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764361373;
	bh=JZubp0Li2H1+KVpDJUf5/LbA7r0zLn0/ZLZoVnnbDvI=;
	h=To:Subject:From:Date:From;
	b=VJcaSMpnz8qi/G9yZE/qEZfuSVzktbBtKVjRzNWjOqLQtvp/o/KXbjksCsrHMljEr
	 ObPwRe+GE9A9zuGMZ4CCUMrDOHeVYvA74aCDNpkDmSow7u5x1jcTYpJDfnfthmQGhH
	 n9o794ZQoKYhf7R8crliRS+EqlMfsvJBO2mErxdHHaZQ4kj9Po1RxkOxAj3RR0W1U2
	 2Ov5aALvrGsr19dmQLPNRK3BkGHgsMAIuDp7k81vNPhzVrTEsZMNHGj3l2w0levnG/
	 HlIY+/UoyGlPyMyoPGoAzCnRNq/d8jvk02V+Ke9jRKJCD6GuEROX280KKv8dtxNhkT
	 Egq0mxsGIaLBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957D6D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436137359.13828.5377021173711103926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cdac2ed6e27e41d7be72d4dcd066637789c584b5bca7b86b5f405ea6ef8925e
Date: Fri, 28 Nov 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764361373
