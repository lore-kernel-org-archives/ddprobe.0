Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A5C1DFCD
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705495697; cv=none; b=Gc8R6APfSz92CZpYrA3IUgvsgBA359YpvtGhEYP8oc5d6lQMx68dIShwbw26bjOARiUSDT2d89IGp72kRod5TUAvSijknaq6krRIvzZCmvCBX/pHugV0WIQRRAmSIXnknUTgMoDuAr1jD5kcIiAENSI8+/4aCTBWb3/jGBmGsYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705495697; c=relaxed/simple;
	bh=uFmbvzWqjCBQ0+cUV02/BdMsFOX/U+xPbT/amyDAeJQ=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=e5j3eu/w8yMl+8KGFADnUs+XhgjMDLwUr06hvrJElc8/kkQxGImogC3W4ujRgSUgDhsX+NL6N4RcjQ0jMrcUwf0LA08JwCYyQ8tRkc7tF79gpCL8suaQAs6L6UKAgBC12++nbg2MUsHSXDUt//Ag6/6lhLJNYbWAw65AcrXxc/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfzptetQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfzptetQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D32DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705495696;
	bh=uFmbvzWqjCBQ0+cUV02/BdMsFOX/U+xPbT/amyDAeJQ=;
	h=To:Subject:From:Date:From;
	b=RfzptetQRhmWSLkJZbliROMaWZbAMOzc5xSe4CwXT1m3xwySgM10PW+vwfqKrIrFu
	 ED1Xx54gZMdtNEoTZVuobR+mZk70mpZePL8kVHyS6Z4jyKnaAE45Vt0CbfDIjXzC86
	 vq5RvirgbRIFatp944BOECkiQ/xw/IzRYzii7duh6vC3jlN++bEd7maSOJseFBbp/E
	 v3fti8oG6hHshuM1wGisJuIPWAynK3JnMpEmpVNFOHSjZ6zMIIKSuqXApUylr2b9Tu
	 bkEbOZoeDdgqgMsTIHMVKhBe0e28I3iCBsznc0ttAx8pRnWZcIEyzrnFv23yasVF/9
	 OY528ePIifJ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6585CC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549569639.8158.11164364944438110988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cf5a120075cb6404375e55f11065785ef560ad7854f20eba144c38cb8e2c8c
Date: Wed, 17 Jan 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705495696
