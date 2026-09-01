Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD6D313E00
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788222034; cv=none; b=c1IpO7iObb1muTwpW5Ty3/XBUmVadnTXSkmLK7FOA3i1yZqFc7c1OtGAxE9g7bEkWxBrtY8ySI3Y4rM7vaS8CzZpe8daoHwPVE6l2VVVbr5icm+3LAsXhbySob6Dc8v1gX1yASjYH4reePnw6Cf5o1RQTa+iy+uerZPeT2Ir3Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788222034; c=relaxed/simple;
	bh=GQfJp1OIImT/S+Rf04iHxsk7tfuBN9viip6AntEIUTM=;
	h=To:Subject:From:Message-Id:Date; b=n4fts3Ize6SV8GAbM7bpohwskgLudMZA5r14730bUF5Nr2WFKxKlK0U6jJSiKQ4StThig/O5BU9rsrtwZGZ8LE2X2t4KjuN7iQ9g2hDv91N8grCRhw4Uayd9/yWSaQD9rCG6rbvH0TDmjwHnAU60nIyIR8f3cjVnMTxZEj+JsZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNXmBxT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNXmBxT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC19C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788222033;
	bh=GQfJp1OIImT/S+Rf04iHxsk7tfuBN9viip6AntEIUTM=;
	h=To:Subject:From:Date:From;
	b=QNXmBxT/LEOfWpoVUoKTNJy/nVrkSky+sIb3tS12yRefDlwnQTW1Oe+Ld+3Sc8pPD
	 2gOweoBHFOrEQb+lkofN2PV9yad/zeHoKyuzZBfvwZODoRnqyQ/4dSnX4CGC6wQXCQ
	 HhoHPSwHU40Xda2NhodUQb1lDjHXqqFtE9BC/ZUeVf/VFAmX2JkixajsvwO0UEnW13
	 F/n8imaP5ZhHqh/vJBYHBikmVNFk1AzZYw3nEamfPlpMU9Sf19JkrRnzjd1WO+1quw
	 DevCpeZ/cVhfa3IJMEipXFn2/7rxq7KD2XExbb5ZxZmfJ4lvqsyEQADFeOP53DqUfP
	 1Zb92jK9GnX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E11C61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822203368.15711.15807437048463048026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb20ce39b4d84599a00dbf568703399da87f00fba8b1402b2c96a2da9f32cc7
Date: Tue, 01 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788222033
