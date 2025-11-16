Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFFE20FAAB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763283054; cv=none; b=eBLhqX5Bqbnf7dBw16rg9OPuVyGfE442D4iHHewS6nFPaOa0jzGqSQtwonnyLOx9nTUcdYxf1WO6hoC3h8E+ERRpo0lpGV8TtDfo3eVRmLpnvmCsW8qxp26ptA6zwkcW/oeNGXwowwGVrxsSj+uc92aCXEQBG9V82rNgBvCmyvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763283054; c=relaxed/simple;
	bh=R/TUcZlFDw3KIT2tZBWW84C6KRPIgjTnPBZ/OIJUzg0=;
	h=To:Subject:From:Message-Id:Date; b=LhWBCRFu+Uz3XQzh98b7e+pWo+iGEl1lsWazjo6OC+rfgEHb1NqW+J5i0hDWo+fcdR+7NdoC/Wl4L266ulHAsvFA0L0Ygh57NW+ge+KxkjUL+Kg7jYQWezSlBmDIcz/lV/YO+8CPOKFJFmnslY1rJ/kBuTtlrVrjEnMe6rI3dgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8nuYYQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8nuYYQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4B1C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763283053;
	bh=R/TUcZlFDw3KIT2tZBWW84C6KRPIgjTnPBZ/OIJUzg0=;
	h=To:Subject:From:Date:From;
	b=A8nuYYQIoncjwBLfmBn+oMVOKd2WSC0UlQ/gd5skNCag7RUxHieI+BWpgBf1/xZD0
	 BXE0Bu+nojTK20QqHNnzjogfjztp0VARwKtztHT5iioAzlJT9f8oBRC+Oif5P4kNFl
	 VdqF/MVcUMoP5bNyYfTjjqTH+irsH5KM6Ikbgfqg0TbrHfdRbFpD8c0h3a9Wz1e/Nn
	 HZL0QDJ0uTDS47JuR0gXin4lxQH8+Zb/o6NEf3mQCqI+QFcpjT/7bVZ9KzsITiRftE
	 jDA70BFrCVuGTT2N6c1hk5sfKeA6DOnpMVHu98bOFOuM0Ay9/f36PqI76Dscgn+V+l
	 iAI0jTBVsy5bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D10ACD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328305359.13556.2512855895199060071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac1473570e5a1d6ca104d4913f16ccfb532b1fa7a6f7a260147790e8ccf30d6
Date: Sun, 16 Nov 2025 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763283053
