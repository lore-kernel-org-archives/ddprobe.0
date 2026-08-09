Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A098239E6C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786281034; cv=none; b=MXLCYgfx7C6kZdiQbZkfcl3ekQ6Ww+Ux9bf5gqehjE9tXtT3/3PUeNqIrMo89IRc6qrSdGG8GrjbmV/asvTlDimWRVCeS6glbHOwvHiZHoGtzOIF0yzgGRUcaPHphy7nJJuucKJAU/xD6z979TtirS+sW4C/xwrL/wX/qyNcmOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786281034; c=relaxed/simple;
	bh=0c+V+MO6X/DFXzSsZ4fIpj0nVtl9R2zXwZB2e05OAW0=;
	h=To:Subject:From:Message-Id:Date; b=c2Yk9z7CQ/25Hw4OPzr9h4nLtK/Px+K4FmeZ7/hUWr/YPy6TTKU8oZPaa1/CYWUKhI/zzAHdSV/oxE+fLsichr7soyOyUb80cDz2PxIhvcfDWox8eoC9q/RI03OApleosB7WLfnfc1SjsvcbS5tut1SakWjIa8CeyC2mFgfhUuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWMRtvI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWMRtvI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EA6C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786281033;
	bh=0c+V+MO6X/DFXzSsZ4fIpj0nVtl9R2zXwZB2e05OAW0=;
	h=To:Subject:From:Date:From;
	b=hWMRtvI6D1PYkJqN5xbXWloxE2sDkZ9X4ycoFTGPw2Z9845bs6DOMHXQ2Bbea+0b+
	 OdimFgFosvERXmTNlAn+5YXmijl/AwxUBH4VkOuLqH0ai3YBhW3NEssB5TSZ4sDQG8
	 vhLXQMliAmh4shrXdmW7StTlgk/8K0TlANzHGJHhGKfTn4ZQjVzAXfpPqv3UaoMDNd
	 p8VO0Qn7iHZprxL6OlV3E+IBmLvTPX/0UGbd9WNFOrH4LW69h3i7XnJcR5/SZIN9g3
	 ZVKb2/Qqt0CUJRCmcrJkTF36IBAEVopzaO7gdkDIA+sTZ0b6hbJuKGs+gqMM7ieZNf
	 iJ9mFlB+NxgbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D4FC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628103368.30941.9672959728388274182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376587cf738e9c509787780f85ac3be3551f5a1a463be3edeaf4a9ce94e68801
Date: Sun, 09 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786281033
