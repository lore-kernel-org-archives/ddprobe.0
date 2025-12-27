Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD857201113
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766853833; cv=none; b=UxBrhOV29yEAUDcXpSqyxqFnjaMJQ3EriaePk/s12GLrxAQiHiYCTUBS12x9WP9Vxf89u/p/eLYdsVJpMUJ9/VWqcqlEDhryk6a0hqJA0L+zFD07rE29f0opE130qiVv3NT8TeFt5u5/5gqfvZTjn/phhBsgkrSS40SopKmW0r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766853833; c=relaxed/simple;
	bh=Ty7FVIuxok7PYSn4qlTZXNLvCzWfVqa1Es6WIK66aRo=;
	h=To:Subject:From:Message-Id:Date; b=feIspxK8WNa7+ZM1YVCWTwDLDAWzEj+DezpUNRnTZ7NaEXHqVNUYEwuh2gWsOabS2eMZaO0U/bYnfkpwNgO9HlscOmIVz4qrVtjVGbSELxbQlvmVN/wKa1qeQ01VBB7QhZ4iqrSmaKdHy+7/up01UWCa6Qg2rMNCamJKhhuzm1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/Eou/7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/Eou/7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56A9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766853833;
	bh=Ty7FVIuxok7PYSn4qlTZXNLvCzWfVqa1Es6WIK66aRo=;
	h=To:Subject:From:Date:From;
	b=j/Eou/7bv+rzpvksTkZpjNOPFtNuPOFbwrVaV49s9RJ5pOy718Z0RgRWAQmoPVL+h
	 9h8pk2ukjHGMNC1B2WJtkG4ikP1VDWchC8Pw0rjQx4aOTsZYEMel1IwoHijAwg+/jQ
	 IkgUVlC5/PxMimbzWTkfvrMzs9zzUVhX5f29ASJVnsCjXRHuvPTOeClOc4/a7zymFj
	 uVcPSVZCwhe7UZgzecT1e2FiaTGESugl6pFxLheE/mtSkzXhYB2JceB0YPtMWw5/lF
	 RaLHTkKV0RNEmP+n/+Xb+19Qg3l36dAAgXunaWVDI1yxUszIBLkiS3mYhLSdets5Zg
	 8LWGPbb2yGrEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F5CE92704
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685383359.19364.17852726748823603323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6b3af693f93d5069cd45eb7fa1ad4d6380b63d57d6d0f606d847ad33e508a0
Date: Sat, 27 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766853833
