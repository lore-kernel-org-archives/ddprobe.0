Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5169B23AD
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717721243; cv=none; b=IkaCkf2LYOCQD6c9Yd27ZqEIlexuQ57bDfUQUg2dGFXNZanmZDiUgbQO1Fz8S9XMlOQeLwGZ5XDeOiy7t3z2OESDUqrk2t9xmrFvoiJCuWJ7q55jn1vVeR9VOSdqdCGy2ObFTxb9y/vwX3xosaFidntvunvakaS6y75A89etx8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717721243; c=relaxed/simple;
	bh=OM3YOagzFCMMrpp6ooqoTlNU2MCdMqts8F0HcxcByeg=;
	h=To:Subject:From:Message-Id:Date; b=qq+g0VgITUr/xt87XvgTg4pcCnHc/lA580zqxLXWKcOiOaLJ0KXRluS251vUF/QbBNU2VtfBn4Sx1Pyc7VaQRWXBxue5QPDQ6Adfb3R8cyc48PuU+zLc+79p7TGCEgVZOIrKNldGjWwKASm40iblPMtvgoC3IJJPxN3zACDCBv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpHS7FLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpHS7FLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD05AC2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717721242;
	bh=OM3YOagzFCMMrpp6ooqoTlNU2MCdMqts8F0HcxcByeg=;
	h=To:Subject:From:Date:From;
	b=XpHS7FLe6L6ai5SKFAw88VqCdTRJI3ifWezIcBlKf/T/RV7/ZZcBqHOfnTjibglfa
	 DsWjx+fPQty2cV/yZwPxaVhZfchA8BPefiqKqIsbg6oYp3kAvZh4Zj8cO7mLwXwMYa
	 U3koqEQf2HlNRrkXxZCi6IaWtbGlqMAhq3yBXzFjJ2Rw51oZt7da8+4ssuxD9ryWie
	 gRbTECZFBvJjaZP+9Z2uiR0K+TNiUh8viywxD40NjrsnaTLY23a+DnkezL6xeclr33
	 Nkisn2S9kAF5BZi4A7mhG7ph76tRfCNo54U2SN/Hi4jH7AJD+mI+bZ40R9SRVkzKQ8
	 zdkZCRqYHE3hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7187C27C52
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772124280.18322.15479319884765412010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3bffbf1af468c3adad50b3924d3bb4f793db6e29864901e647cc169d3354367
Date: Fri, 07 Jun 2024 00:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717721242
