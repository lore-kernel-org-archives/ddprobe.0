Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5D137BE7E
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779358234; cv=none; b=NSlTW6J3xZZ9TvQdKYOIYUHoPB183rFSVH81O5j420EOQnqgrWhCf45xP3Q8OBXNtkvNSKeiJNYye/m6raZaMVWmLWBxvXZ7Cuskgs4+YetUWhxmstft7zx7M4ez+Nwz+buvy8HmgKV2g64b52fVAJAb+exRLtSAF7gHiynmGmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779358234; c=relaxed/simple;
	bh=44ZKYWdlW8Y/G95XRXFP5A+cOjqC1HUmARckC+AS6eo=;
	h=To:Subject:From:Message-Id:Date; b=WlIjl7OgZUFE+B8V2b+2F4e5Lxv+THZQCblzInFW5o8e9F3gNadw4UC0yQuZ+uUXYLFq651OeZdJpoQRNbcY3yRhmmZaEc3DYap5XBsEIy6++JoZ8OWP//R3BtZ5WFQbO6rtHzfPAc2h9kBHV5gmL8+0rGJcBQ6e1CSzdpqwOS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mwpimu64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mwpimu64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80B8C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779358233;
	bh=44ZKYWdlW8Y/G95XRXFP5A+cOjqC1HUmARckC+AS6eo=;
	h=To:Subject:From:Date:From;
	b=Mwpimu64SUoDnWFfWyP5J++egDD5/GPrYTmd0fmfiM1CzJkSBg6LXYv58AJ9aFFZP
	 tiT7uIlE+UUHx1EVLSqXOf2dfUJvE5oAXnCS7mm2ByAIXCkhZgyJw7YcwEmXBv+WDw
	 UgERS/DoHaEiqOTpgo2g9foF9g+z09bL2+wSN7gJDszavo14E+TTGk3Ps59h40WAQ2
	 pMteu3dchjzYfoxTMKCbgkD7cX+Em612eKH1gtcRwAcMdkD11WwLe4vtZ8TaNtrv9+
	 JD6Z/34+V/xhrENSGUzLpQ9Ix7f7b/IlLfzJChegJ/H9e6Rh0LcLgyUH2sEfk0k0Ht
	 DEM138WxsaJCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA641CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935823374.32750.5392267352774420865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91760cec5ee90082a6c4c5d3fa789d6026f9699efe7b24b046b9f13255dc025
Date: Thu, 21 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779358233
