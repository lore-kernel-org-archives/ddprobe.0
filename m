Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24773451D3
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762439993; cv=none; b=B9shU/uS1VYhYQR0dl+86AsaqTsZd1peAJENMMhFuRG+C7AAhfsb+M/i/iBvWv/3aMklp2Wwe4sA66+GNBZpKpmLshVKN8CVl9SwheMl1ZJ5QSQpY/GIfOZa10KPnP1PKvNMq7Hrtp6e5I03R+EzosE31RUyuwKaAVatBB/v/K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762439993; c=relaxed/simple;
	bh=gyoP0vFpK0CC4C1f2BcE3/HJUuxSAmu+4TTqn7nPjwk=;
	h=To:Subject:From:Message-Id:Date; b=Z2W3mOgnVwEP9TuJwqPRP51WdznuznTSDsURWYH0nPs7QTX+duktXALHtrMN89Tg9QoQq048fKt3H5vzhDWUl0vM4revLt0irvznycGZTrhXgPswpW1ugAjFTlgHEfHsIIvcxZw8Ft9CsbgQP7WmDDa69Tqg2gf7JXbBdhg6hRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAurXgWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAurXgWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2494C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762439993;
	bh=gyoP0vFpK0CC4C1f2BcE3/HJUuxSAmu+4TTqn7nPjwk=;
	h=To:Subject:From:Date:From;
	b=qAurXgWiRwH+c8/7T9A4Ma2fI+6s4HtrCWHEFfCjBS3GnR47Nhj+GVOax+1UuCkdW
	 ubUXphM4QJF6hcXJHN99JtqV6RO5oj5pCXbsDXdaW3IHrdlcV+ZZzdH8Uxo9nRCadS
	 CJVjUOv9B7yNl33GmpxFaWXZ+H/+Xx/ytZRdwfKaf0Z9r/m7XAvnEMh3tk1rTfNhCA
	 4zu++alxZj4fWxJwpRHOwz0vlJ0Tdcnd1b1SV7Np1JtQoTwaRXVFvgBpw8bXPLutyu
	 3bVNOhgBA50K3mgU/eLa0DrnVEg6RlXcWi6E5cIFn3Y9oyeCNbBK4V9J5/cJEBQsH/
	 MRTswRy23K7vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A02CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243999359.17759.3203161795106652651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ccb4bf0f764c532feaf4f27b389acba400dfd8764e4c91df3cb20601c71d53
Date: Thu, 06 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762439993
