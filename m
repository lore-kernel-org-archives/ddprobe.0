Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B80421744D
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731447954; cv=none; b=XSwMpviT53Nb1wC4nvubMkPPsZlob4odkTnBcXGRXz0MLG5bvi92f6VG3DrOdxxH0crUyBZA4OArV9jWdnMc0KK3lhNd13Y2YMJ/+JN/FP2zSJAYz/vpy+HEQ1mJ42cajlksLZ94FL5rzGZ9C0h77J3ehP2lvdp/YSMsSrjzpVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731447954; c=relaxed/simple;
	bh=NYG2jFSjDtU1QxON9xkkZZCnjJqDubJbMyQFQyU/de4=;
	h=To:Subject:From:Message-Id:Date; b=dbEO0qlBcdBoHT2hcqIphTa16QhiXBGZhPQuILscd/R77vGUZU6nyUKbv5B5dicmMpOUz/+BtcDtOo17Bls6Zd66ejB7mPDctsC6R8ItK7gSGFXo+PmKEN03zFHRgH5iwhvcUw85Xn9wHqleVzScjs3kXJRSLdmTqLUb7HL0EDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSXdMsZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSXdMsZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3718C4CED5
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731447953;
	bh=NYG2jFSjDtU1QxON9xkkZZCnjJqDubJbMyQFQyU/de4=;
	h=To:Subject:From:Date:From;
	b=nSXdMsZnZUj9e4gD7h0u3SoIxb3XEqOVL3koUUYvftq5bT+jLvw5ZSq7bGQpgziGp
	 LAFelo211qvgr7zNjND+v6ezp90XQRBLx9VS5mLTtFDeQXFYKU86vrmHCGmqhpPBHp
	 Tw8t2HUVDknfUKELZWNCb3xHgZd8b9FmfdFlv21ufoDnB8CCArYF8bOFSPOuW8b0Nq
	 kki/UB15xNG62rB7wAxwtZ2wcgmS6T21bFozzYVu6jxgXBVGW+H0RmWoDxZTNl+WgU
	 pCbGclL86XSP/IFhsafDmkf5Pw14qODmPsVGH4cnNPQE0u8+wsZS9OjX5nuT61UW+7
	 GneriH2GSj51g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B79D597AA
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173144795359.23765.4452723790853051667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e94d4631b622ad9792802fceeb983d1edae1caeee740d1315501540e8ba89eb
Date: Tue, 12 Nov 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731447953
