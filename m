Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B060311C22
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758284394; cv=none; b=cI45Uy0Q+A4P67mAYLA9JRDKGOGqTeaXRzHbEv7F97+ivopps5WP9FCmL/pZPGGV2P+bmyKBV3iaLfsWLe7ow0CCnpRFELtZrFT1j2QN03ulUspkFzMMU5+zSeAP1HXj8/hPiDOQ5/EtdrCIVY1VaFjpWEpeYs4rngr/vg0TIkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758284394; c=relaxed/simple;
	bh=KNfCAR+l9V3tYUMq/vZ/k05CK+QD+GLRkWB5sBmMPsM=;
	h=To:Subject:From:Message-Id:Date; b=f88ubYFWqpzbxlCVPlFN0808Ce08aGX8opuK0OlmeY6OhVBYXYCO++u7dnlSHlxpyDuL4ev4Hclg64FgRFyIBold1Xc70yRkcKL67ohgH08fzqQyWFHQ0kQ6Hez0+f64DNLlgQxBRu0+p93FUu5Xa3Zyb6sJzZvpm33Fq0J7DfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPlukP9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPlukP9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04D1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758284393;
	bh=KNfCAR+l9V3tYUMq/vZ/k05CK+QD+GLRkWB5sBmMPsM=;
	h=To:Subject:From:Date:From;
	b=BPlukP9+ZWZKwBL/o60Qe30D/3g5yGJJ8K+M4zKdwoDjsHnamscoAADZbsPLRInS3
	 c1FcQeT31RGiFLJCqguf2MiCtteDb+6D/Xg2hfB2N45VfaEkiaDrtn3m1cIpVhpLyh
	 iqgNxVhJZ8Y76uUMXfUaFnLfZEv7zxlD4AkCyh7BHu6P/a4vC0H+EK9KfzYlnykSbE
	 zxjQLNte7/thC22m2kuXjbfzHWbEhHCt8gZmdkcPPRDJFNtgjZTwO1ybZq6OKXBtG5
	 qGJDT5FQb1YKrKSj+/RLqKGqjgXmVrD6GCswVO6D92QqFUQb0iy4Np+oVdIlSsHRA2
	 AR8HB4mQ3H18w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D42ECAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828439363.4964.5001534399549553116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6013cdd07ce393c25f8b4d290e0aedb22466907d9d3ec2d0faf9dcfa5eb56b67
Date: Fri, 19 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758284393
