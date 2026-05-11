Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193A93FBEAA
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778508634; cv=none; b=ofTG73S0X2mfSu9wy0EGoduHjXisuJkU3uP6T7h/NUg1Pn3R4wX5bAUxV0MqzItOBdE6dvzAiDItIpgK6p4cmMfqkvWday0KI74q6t5fruwlDKAnyR5/ih+1825t6BwSPfDOhBhVuQloVs49sziMu7Dl9p9gfm6qVRxsp2zc1ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778508634; c=relaxed/simple;
	bh=rgnx1mqATmfogsOmqHNfuvDYbssoEPy5yYdPpPpa82Q=;
	h=To:Subject:From:Message-Id:Date; b=rLw7pIcFzogis/tX7NzrIY4e5SUOPrUd3cOZeRmCGGYIWPS5X0ATZFpLkVolW2F0DdwjqsBW378T9ELqdeeXFW4AFHLGLGTC29HisOD3FcVs7itqOUJCkkAE6cC6mw0m2lGetzXgpGJz6mhNziTPM7PK+Ks+TdtIyMj9WL0xakU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+WKXE6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+WKXE6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAF3C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778508633;
	bh=rgnx1mqATmfogsOmqHNfuvDYbssoEPy5yYdPpPpa82Q=;
	h=To:Subject:From:Date:From;
	b=u+WKXE6uV1zE/wwtmOLr4Butm83xWtMSsLGZ4IBMQc9jP4poh5pvclUyk9nyMsWPv
	 1GCBZdK7tgx42YyHsmox3YXp/9sG6PGaGCHnpSObiyZnNhN+ADozUqr5uVkj2YLo6g
	 6m4uXWqvnNgdwJqwQKLPq0RwbphnrcCRcq+sEH9VTafEGwWeAQdn6TX6hafu5MEQgo
	 PS8E89foJHKWqKuZMmpAseHIVc0nUEbSbMEy+a2y2C9K1X6PcDCL1HXzPEiMJp3c3D
	 z4iPg4l9tTc/mD8LwnFcmsOAPpKp9ynnHunLsFa5stWNqhBSF8kXyDl3gsIEMCb6nr
	 3xTwNCP2RvKSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3942CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850863372.14408.10991041928819278602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97aa04e583cc89f99219db25c189c258a2096c41b9860e29d49045663d1ddf41
Date: Mon, 11 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778508633
