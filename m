Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221A22F28FF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761341394; cv=none; b=MIq2heMB9SmujLY1sLAtff/xJNoVfhcJ/3lRSotwEOBrsrHnNJe9I5evYCxDTL7rP8Uci0S+aVWdYGIByiwYHLPlAhehswZ4OIRPruvQFXwcsIlPkb9gT5FQb1jtpU81BcWleoJSTi6cQtfGNnQHRHUQs2zZO+oTtQ01f2J8Mys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761341394; c=relaxed/simple;
	bh=TTBBIkFkBLunmixC05UFJnV8XeVECp4xyl0eguTLLXw=;
	h=To:Subject:From:Message-Id:Date; b=mC1ER89PtS5zFw+aYtgnd2FIl+V2Y0K45zrpLocSl4YtVwIuqRDwrmBU/24zW2owWvq4Tp6dpjid59UGGBUWv+26qbclJZr3mFhwA/PfMKkgrBaK82vpnk50NNEun7Geu+cUVrQ5/otdPN5ZCR6sFabE7/4UvqFzSSWXry3fR20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWSFtxKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWSFtxKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16DDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761341393;
	bh=TTBBIkFkBLunmixC05UFJnV8XeVECp4xyl0eguTLLXw=;
	h=To:Subject:From:Date:From;
	b=MWSFtxKEFbvU08oYmph+EfShaDxf54TI7HQRhIv5bUdeclq6maqzCm8/RM9cVa+ng
	 3o3ueDNx2ELT00D0rvpCDmMTjKlF9005Dq0havpA/YGYruP2XL641fcf2inSaAOnyY
	 wrdWs9JSed87Ee70k2ZKgiOJx1I8KQr9Oy7vBqrc/gq7wH7D15TBsLXwUl/tofLA0k
	 VQC3V404+Hk7igubrIXoP0HeRgY8YnEK8D1QuWLBToK4wDyU/T+LtbRL7g8uwQW2TD
	 6eEfHNIeYsHUxam2UtRjwthc6WIpiyWVaVShqvjyxbpPs89s1NN2uObDQl4c6O2yv7
	 ynd7DsP67rNBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79FCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134139358.12586.11775163203137638678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa01adc90932c6ac083cd9f9b8254b0881f992c64e361da7ae569043d4d5bd80
Date: Fri, 24 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761341393
