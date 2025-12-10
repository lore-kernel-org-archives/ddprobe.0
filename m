Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F11FCFEF
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765330974; cv=none; b=ZgIV9AwoSrxLGKkH0T+VkFbWN0NoMvGJKh55CAL5Ftycv5MSEB7RsakzyCvm/t3OqGF7VNqzwh3J8IxbSMOV7KsRBwa6WTj6E2U7j6Ro6VtNvqHp7owzbIiZT6jnI1rK7ywTatbXo9HrtMiMOoGVkpnzSsCrd7+roKJdnYFcJsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765330974; c=relaxed/simple;
	bh=NfF2PKcDvB+Qyrjnz01UJigGeQCy+iuv+/vs/AAKz70=;
	h=To:Subject:From:Message-Id:Date; b=aG1TPulCqz03PbncUc4D7TKoRcuAIUS69zTDpY+Ww5bl03o/7rBizqZ4KUZijy2knWbprkzz+n9PrdrHWuQbO3g2TUQxQdZ8btqvZTUcCeSRPtgKrTO3zh/JI3+tvJuWc7aUYSgLjw/Yoq7KQ//83x3y1oF1BBuIpDTPply9O34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCPQpecV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCPQpecV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0581C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765330973;
	bh=NfF2PKcDvB+Qyrjnz01UJigGeQCy+iuv+/vs/AAKz70=;
	h=To:Subject:From:Date:From;
	b=TCPQpecV3jBlf1He4aCVFmVCEvANeTLzsL/v1QHaNiDiJxm+z+sPFXiQV43dY8aVu
	 tRLjNf0bd1EJc+cbAnCmj2QhQFlmZvYx658ONkTo7KvFI837subN17E2qY5QpPbq9j
	 fsncARo4dw6GT3OaQ8t1zxqVzAIac1eIvQbYyRRhE/iLw2suZyk9BT6PjGC5Y8UeUK
	 byvaTO0yhgSEkh2dYVFIpvBpw9pSg0Og8mTx9Oh4UXG6VD5nsI15dnqIImbtHZ5Tsa
	 eokgAxygTCMg20Vh6k2S3+uOS7kpSllQe/6ChZawU2mZVLvj6S8FYVmARBEAorVmam
	 OBNLCz8mR3+hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EB0D3B9B7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533097359.28446.12649964276935961276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024355da898af0af9db45b630c7b945e8a4afbf6b9f287f4f72bda3fb3439e51
Date: Wed, 10 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765330973
