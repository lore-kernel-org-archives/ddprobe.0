Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4EE3203AA
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762358394; cv=none; b=muE2E8cQX3YtQyuQpgF9vFxJ+VCzQMcY+iqBSFdjTGdcfgQmIMtoX0UGCHSc0yEG/QTioQxXaORJzwl2MrgrzBBjb/QzHFrSk+Pv671Urawdr/g8HZtoNy8F3OcpqhAreqWbJBELUm88czaU4d5YqOVNOORF2/tewK7dHs6OLxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762358394; c=relaxed/simple;
	bh=gP8clguIpHbodaMB//PYKtzbieEK/CDhhuA1KjExBG8=;
	h=To:Subject:From:Message-Id:Date; b=Gf2umkY57s3fY4Ki8wOr8DDF/UlZiez6PPZ4tsF4tN35BJKsR+XuyqTg9+MRISiefeFzRX6+tsQrPnUMIlFmgv3vInqiat9w0cJ4NfNddqadIx+xAsX+rSMVKFV6CG219oqKLzEbpdzHqw42ftHN3/7NrzSU1xG5GfucRJ/Ilpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2waBLd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2waBLd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF08C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762358393;
	bh=gP8clguIpHbodaMB//PYKtzbieEK/CDhhuA1KjExBG8=;
	h=To:Subject:From:Date:From;
	b=o2waBLd61T2Rugd/XINN1ovps1h6wJP8gIzmR9eHzBAJgX/MLHIYnEyhiHqzx1myT
	 SA1QmncX4MQbvb3hqOeJJ05fx0PbkyITE6CJuVbRSD8KRASyPPwqeJdNfdm7nvq4UH
	 HGubN2b3jV7ARGZoUli7PIQa1VUs7RUJ/PSaDVuAKCVDej3YsJ75fgGzjqtZY5R1FG
	 xEMIzxhBRowm0SbnidcntU1zA/frYwMmnh+lMd86XRhDrZ/TDs+FeX2BGuoKI5OIKr
	 8L6FJt1FJQ36i9JhLjIgIXiJsveo+98j22bf6N8FgNciwdqLRhT3SLQSQQe0GQbgDK
	 A5CY4Fy67Eolw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9254FCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235839359.18078.13454801393727899224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48090c702520cc29c0ebfda401b328a7c6f384b470cae2817e037baefe2dabf5
Date: Wed, 05 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762358393
