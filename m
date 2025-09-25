Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32F013635E
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758827994; cv=none; b=dYBQQisrNOY6LUpZTWFQCssb2OUz/Cy/3LzZlVmpcpo9GwlFNud+Nj0fA4FlfMAb2bIFM5+9VI9fJMMd3jb/CCCqoPGI7PhWJXCdJYtNH1ZZwpL1N9y06UQrUaFZgOcsulnEKxCwNVWkKxryMFtDqW+XmKzcB92e3ctHoIQwR4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758827994; c=relaxed/simple;
	bh=t6rxataOlzwWs6/5fy7gF9x934e+PUrK2y3AUpcCfDc=;
	h=To:Subject:From:Message-Id:Date; b=rNSDpf8mYH+O4Gdt1TXILG5dJIkQSxVHg7j47TIcLmlPwrWOrRqcFlZ/csWSeXttEr0aE/pfvUgGbqdIhi7xp69EvZnkSaYZVMQcIeNW2KUXT7mb+JIeq7/f2j9XnwWIU3PbuyNofloGE2igZ+K1Rwr4VIxXf8cX1plgQdgsHFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yj4UkfMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yj4UkfMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32C5C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758827993;
	bh=t6rxataOlzwWs6/5fy7gF9x934e+PUrK2y3AUpcCfDc=;
	h=To:Subject:From:Date:From;
	b=Yj4UkfMsJQGn624bF27yUIsUs4VQER1wyN9UHHpvtt4UtU6etr/i03aYD8q70jrAQ
	 TtV+A5p7T2cS/p4QR1g02jwx3qzdlHgp9T8MdjBaXhMZGyRaBrszmSnfZuOlHkzsaB
	 ErxNK01HokO4Fukfh4zWhAsHLQGtfkhynstpOQKyu4/vgBRpXF74IXhFm6jrx18Qu6
	 AzErOcvgYKla7xj6y/ppGQCGpTdtI5IHBU68L79qxwXdqKcmMfdsol0N4YumwKZxqa
	 bB/0KqxSD/aaeB/t10KPY2ODwwXBCRV0K8a3tsoyizMS1q+g6m3IIZftiv/0u7gR9J
	 JY9aZE7ch4tQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991D3CAC5B9
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882799360.18092.1740468397608392320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bcc17263a77755d36df7d5437f17e612ddb5f29cc1e8f54927f1a7519ac5be0
Date: Thu, 25 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758827993
