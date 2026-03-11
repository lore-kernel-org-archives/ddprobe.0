Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F253C1F1932
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773207294; cv=none; b=NKSb1Jn/Emq85U8u7k0gitLRLYVOAvPjgcEKWKmjYtjVhVlaktSlisAyvbQhHhZZEfNiQUFxMy4ytIUdzOl6zo3EhtAzCDasNFIM/fTVMOQkTzSWr033s2Jx/nIcysnKZMubhFm6lUAK0SKKCPN+7vYrgCSmQsnq1Mx0FBv1XfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773207294; c=relaxed/simple;
	bh=xEwPgV3yEV/xberxZcMqzWzLBtUm6+rCKrjPp/xwJo8=;
	h=To:Subject:From:Message-Id:Date; b=OgpeLNM7C3d+ns2PXzX6GndG8nkV7g/Zmu8PuMnzcoj6wCIqzuInx+b46VmNtxlLjNciGNR5FQ3SFVfKMUw2okrjnlTg2LiwhcLtgR8WKWEwXS6Vl2wWnZm/ng1i18t8Ju2YVTGADNaDKtK20u6fD+8LnOkNXtAU/g20mTTNc8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=de0IdHCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="de0IdHCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FADC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773207293;
	bh=xEwPgV3yEV/xberxZcMqzWzLBtUm6+rCKrjPp/xwJo8=;
	h=To:Subject:From:Date:From;
	b=de0IdHCosQGMR+qUFYki1CklA9JHE0OVa/DPzsh/A8WzYMAvzdFbTKP85sTvkWnXG
	 uLzG60qr1OuitJyRQv+gD9O13vbA+Tr+d5kXBvykVLhLYg1HlJJMdwugvLTV1k8WVU
	 lNfvCdOZTHtGBaqmiOsrvg564WBhJ1RXe+cRcAG1aprLUzrgvgglbeGRCbvAw/e4/Y
	 I8aMc2mvlcEduC8WnXoldKHaGI9yclD79N7dnhWwvrtJ8WZDIIsRykfwF/bpzX0II0
	 yDTGd6vOK1C90Rp3O2RVjpwbB/qNgCT9yK7DqbXASGf90gpDrHHNP7QCZ7KE1uDeSc
	 3WDiHsDFYzDJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DAFD88FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320729358.12618.11784936216419745840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c48c025615fcb1acded2505373bb5bd6afd0cc0d1ce71a10e434f4ae7c0e671
Date: Wed, 11 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773207293
