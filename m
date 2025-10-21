Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237D0AD5A
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761021594; cv=none; b=WCYsPeOewwCVjlu0AJaBrNQLJRFvS2rxpZR4o1Ul5EjwiqXg8MExB3DBuyXkw4oFL6kBysIOrPIlM45go3E1B1jRQY4uC9+crxykILwErI9yHsUu3EPEC6MVE+HShFmF8gsvsJjaBocV5TGHOkM+xvosPJjkP4DueXPEp4i4cM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761021594; c=relaxed/simple;
	bh=Qp3W2dg04VLpRHjDlpHVlC1Pk+crXFvMbouqpNnSUdg=;
	h=To:Subject:From:Message-Id:Date; b=nDUABN++udur0lYNNaQXShnRo2C+YQ4/RVsulP338BlnnJM2JVwIopynkSYXhSy5/GAbDQsPnWjckMYez6B8tVfQhO4AraV0/b0sqB+SCJb+IUK+okpDApB66hiNr7vlF8cSI+Qrxf5tv1mjhiocfW89SUDFFn7dyqTCDatoKD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0dYqAFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0dYqAFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC6CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761021593;
	bh=Qp3W2dg04VLpRHjDlpHVlC1Pk+crXFvMbouqpNnSUdg=;
	h=To:Subject:From:Date:From;
	b=T0dYqAFUgdn5IHuSd5SJ+1WdSYZke8TGVBuvoyy4luRvzVLFjbAf2qPBWQzrgR1Tb
	 TZsTeU154X7vLEfa8iQUi/STcl5kk9fjgeNWlbOrloeKWp78KMNsiunz/D/odCU9fH
	 N+cN7gngJPuGzjIVYjq1Avn3BwaEDhRD/nhMKYC/iugdXAWz0bF5mTs8Ev6N0/0ACh
	 uycFGmUo96ij64VSaoXmVlne9hpfT0AZXffZqWX8vj9siu4BuJ+GPYqXxPrFcKNUP7
	 loghn+sUKWtZo2UR5+j+oijpeuTVIqASF2V4Y74mlCebmgKOyI0/t9wFJxPFY/W4FH
	 oRsjY05zKk59A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967AACCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102159358.12884.1583399702765734524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5b7649b1a7d86cf7ab535fa86ca9900f35e6265b0e2c7f6f89010f5b7aab82
Date: Tue, 21 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761021593
