Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3604318DB1D
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744798794; cv=none; b=hgCbZMVYK+8M7v6Yg7OnrrJqQ1BaOABwWPbrSPUSIBjzp59gwCEBOf1xOsA7CCRqa89vifLgVcTxY19HuQEhXHvas9zkppdNXoGcl9Q2l8iRv6nnjnwqxx4jPbqHO6ro88EefKOuqTDvVe8/i3CXfea3e5/HkBP3Jf8kCa5qkU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744798794; c=relaxed/simple;
	bh=RG+TWqicpxvaoNS/7tzv/qJsc9wNU0Znx4LBnz+xEr8=;
	h=To:Subject:From:Message-Id:Date; b=sIEdpNpTXG84lUZpvXS1UtVq07Jx4j4EUdWuSSvqHG6TiOprJOpn+hQZuEorLjUIJLpDcM/5NthMEMAv7FbhgAkjruwOeES651mH/P18MxEEVOTD7tuUEXnof7dkfaPesS2U/HRaK8KoUDprSksJHqtvW2G3/5fQf2lgrP99vK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNBZ9DR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNBZ9DR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41ECC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744798793;
	bh=RG+TWqicpxvaoNS/7tzv/qJsc9wNU0Znx4LBnz+xEr8=;
	h=To:Subject:From:Date:From;
	b=eNBZ9DR9Vs4qstQ/jqqP8F9+KoWEwSLmVoBTmrVFqB2LKdo1GEll4JRp/gXKCIaOd
	 UV4yy2keSGygYpKY3PIrp9AdcuCVHAS6cy8qlVgUlwRFlu15+fRkEe7+NdEKRyGBCO
	 Z2Gg2XwWWfGLNIi1HcfnHxLr8Dk+G14266I8ayLFZvlEBviFitVV0S9gOgdcOrcjxu
	 8rSoFOytog5vBVbrHAdjETUsXU5SaWGQPV0O63chlw8+PGxalI5UQLSvPPPiDn4TNr
	 /m7/bnT8fpJ8BPhhNgXP8wwQTLenghOFXEqQDypmC956LKXgf1fQRxsOgLs2dG0XT1
	 79ffr/6yJT1zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BADC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479879359.14073.3727438132009729132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b45aee10e13f76e1ac302c5566f4d9d6c3736dbf5c9b5607d49be202c45944
Date: Wed, 16 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744798793
