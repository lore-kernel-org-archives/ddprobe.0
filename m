Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB7E1862
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728791154; cv=none; b=uWU+htN27V8WwipKPnXVWUeOYtFt+LoyQxT6ze7WM6Vzcdes+6Q/u4sLxAMmY2O3ksMw2+ayR8V1+dI85mMrgDL2/M3ysYDYRUT3ewak+RQ9oKaC5j06gNXkL3XquJglwVkHoTlSMX3IETf3gOTMCUIwhiwE+zWVamI7fVIwpbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728791154; c=relaxed/simple;
	bh=Kzmnqb/5rPiER3khHsBj+HIkjlXrXne3PHdTOj0bUN0=;
	h=To:Subject:From:Message-Id:Date; b=dWNiSMt0cPa9sbxp5qab5GzKCyU8T2q0wOxBj5c/Pxn9q3zIQaaxgr5NWmBk8vR1vTCT1YfzzIMDwds7DdgmCL8i65YHC3ozDjlN0RseciKQztwgHNSLKpiXqI2fDe6UAUeIeSZkJW9lIwIycUYJ7xypq6h9utsVYG82KF/jnYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUa5K5jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUa5K5jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8019C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728791153;
	bh=Kzmnqb/5rPiER3khHsBj+HIkjlXrXne3PHdTOj0bUN0=;
	h=To:Subject:From:Date:From;
	b=FUa5K5jxcPqBVT03L48o4bV78JQZAVL7UaWexHu7V5biY0fKHPNuLfG7uJ6pV41OD
	 SOUw/O/d6+ug+zvAAubyvdfI/4Y79pXcBZU+o/ItsLKfy3Cl07BkRt+nDinOw0A/gH
	 CVikGkHy+zl8NXhSghYm0OMTJ/f1GomLVhsMe8MP79CUN7Pe2xmCKTrAcXNaN3wx2F
	 BTBmfTFcSgcf0YbcREFIP1wxusOcury9bZ+TLyHCre+1GWJKVwaCi/k9KIx8vhi3a7
	 cCd5/93o14+lQ5Wbdvk+w/iCDW/FVjUJX25sWS6Nn7s2MVkNDKe/81qr9wDlWvOTXf
	 UO2PeoOLdDipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33D5CF258A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879115364.6759.11874730489505015399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bda95f2afdd7004a44f9a6dc7d1d9aacc1f4856e569f50245855a6e633417c1
Date: Sun, 13 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728791153
