Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB8A367F56
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770385434; cv=none; b=KYbcda/dazFDlq7q7FZ5T81KQSHfgvZl2qkqaq3UNkqh8CzzRNRZl53jPOz2PZh3qG7CjLCkxDtL2MV3uGlZhPN49ebi2Ap+gNZwgYDOHVRsi94UHCwqT/atpo5/NAtpSWirU/uN3xJngPB86XDm3a9mzVOpbC3/2lL9jVF/W8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770385434; c=relaxed/simple;
	bh=6CbdeWBckAl4dTWdVArLZnLlTUMKrgWNB9PHDL3ZCwk=;
	h=To:Subject:From:Message-Id:Date; b=tG5iCtL9jCwLZfXua8SCNkp4LaT8Gjsw00oqdUVN9gOv6uiMJG8jbWXvYgdd+DL3U3UqWm4XWrRuIYR4tCqJqZieTr10oc6HYT0uWEIf3tMwWIZtfDkZu8e0I+FpJQ05EhFhe1+mzSr5CND8KIwCctlE1yrDkW07Yk3oslKAlHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ps2m9v/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ps2m9v/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF9EC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770385433;
	bh=6CbdeWBckAl4dTWdVArLZnLlTUMKrgWNB9PHDL3ZCwk=;
	h=To:Subject:From:Date:From;
	b=ps2m9v/cEMey81DWmpcp/5OKJ9Qk0puyIDt268y46T+646xmT1N7JDlRiPoyzOQk8
	 F1ua6atV8UsgzSXbf8iW1wMYnHXrbd+X+rz53gFMxN4eTFxi09n3bOW3YEBTskMImC
	 RoOePWxNCla7a9xix+vnAqxNJOrlkSBHtWTbD1Sn5+Lld9YcpvcocHnxb+gqLg8Nde
	 fGfQD8VjaDcWugnj1TA30CWfOxrcFZA32RSLjNoOm97Kjcuf7hwViCjqZjENLvrHOt
	 8o5wVtcPwmT55W2f/2/fSBJ00+mQUZV/LnIysAvvNYVKJsxZKm0WPCgxy2Heo9+Z5x
	 tiDNgrdAMZ43g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC402EE20A0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038543368.7722.15272012442434930428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e203526e63b6ba5cbf04c5ab321b828efe635bec55d4f40156fb919dd7187758
Date: Fri, 06 Feb 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770385433
