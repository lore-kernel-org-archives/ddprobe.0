Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CAE298991
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764741774; cv=none; b=P9UjbOkAPuVksiTJ3pamFSdBHrahLo0sDPd6jBafDhMekYuTlgFaW2m3cZjV0iPXeWg2WRPcMUshX7LaTGrcfUoZJs1TBGMOOi6LpMJQ4rAPOKfH5ZtE8pp62hHlFIok83mJndvLmk8KoXfUp+7NGEnukCCTGE25VJOSa0q7Ly8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764741774; c=relaxed/simple;
	bh=h+pabdEQxyPN8pr5lDhVIioY4EDK314bYEMOMbr0xls=;
	h=To:Subject:From:Message-Id:Date; b=ihQlqXRe8kxTxpGj6CKRHu7XvecHWCW5bFNeBfsSnay5HIzowfmXY95eV4B3JphmCveY/9/C9+hO4AvPVvY4CEw8y8PmWITT1VmSy3bWNxDNOmcoKSP4To3MONPOGBES2IhFYLhBO0wIwzcFpaIaLFiqdXOoBrZixohin+/xTNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIXPDhJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIXPDhJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CA0C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764741773;
	bh=h+pabdEQxyPN8pr5lDhVIioY4EDK314bYEMOMbr0xls=;
	h=To:Subject:From:Date:From;
	b=DIXPDhJYu37LzsysEpg65SQJD0gTdhKo9n7qYsHfp6E0IU+GFdhSnQOT/IfVUYNCl
	 qcr0PaEzNq4t2LNjwdukSfwIETLvu4C7fO+KMEuF7t2UmYzDMEcPpfIn/fxSLsgJke
	 auTfZ7kotjLw/bL1m9cKLbXr+KJLCToq6BSAduIWi6Al+sFVNuZ/elSAQ2lKALp6bW
	 /NxeFky78H97Xr3wwk1DC6aRJcB/qteHEXNXAG/42rcFuF6fNTGt702u/s2Y4go9tK
	 CxUULOEbzpvwFppWtrtmlpsam2USzHIdNvqyBsdGK16ucRqlNh2GyNvubK8W6CNYhH
	 5lmfwmGVE8W6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996CDD116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474177358.8812.6472840501180019917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e8f57a2d239a20734b536ae14f5c34556fd2fba03955da9b6af1e117c13e48
Date: Wed, 03 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764741773
