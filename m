Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289EC645
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763269854; cv=none; b=bXFqsZ9rsJTu8wdpKCMLt1acYFXB9N5/Re5abXOIIemLQdvemyQkeRGS2Vhyuji2OE8e4XKKGv3DPvuYe3NkjcQifeXPHuxkA7Uq++QDMKjypmuyX/h9Tt0S0/YFlNyIjeI60MoaWvXQyes/3jLboTf8CNOKgUwHbmX1UCoeO+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763269854; c=relaxed/simple;
	bh=xjw1Aqbxo4o0sAHjXWBdAy8UoazFfefWhDWELYKV9HU=;
	h=To:Subject:From:Message-Id:Date; b=SsFLC4LVf6z+dNiEvGABOB5+en/KwFnSm0UrHcEJ3pFpUPp7i4uuzMLuSdVDAeKYUsVQQ4gMvOBMjhwOCCuBnyKQKlR67SGXkFvpp4BHhSLLnVnaVLkgbD50xifEmvscCmXwRBJVuivA179d0P6f6pkW/+sVOUM2nvP8pr0NWvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bjd8ayaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bjd8ayaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02EBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763269853;
	bh=xjw1Aqbxo4o0sAHjXWBdAy8UoazFfefWhDWELYKV9HU=;
	h=To:Subject:From:Date:From;
	b=Bjd8ayaB+CJF3+n9OjaNwNmuPbAEe+mkPaCQVZBwl1C9Tzj8Q1g7aH78lRa1YcPyk
	 mX0tPzKolkxIDimvpAmcnQcNQeyjpYlqkLNkxNfdO/eQ3A0Gnuy+N9pSoUMoW7BPAa
	 qPJ8a2OcOjBWryTXh0z7UrT6a0maJvXysf6MQeATaXYFaAwDSBEaxEZqernnokW5jP
	 OKaP+vfDCyGpQtaYZBnXWQ6dCgDX/mCwMLACO8ch7/0w4HbE4ZaD7SwS6Ll0Kl3+sU
	 Hs6ga10qd5iBbGCvLuSt+Y2m3ML5hy7mDf3sLEqOOnd6HO9AvXtymETNQ19adCEvEt
	 EAIcAxjtjZ2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275FCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326985357.7964.12687142060133078023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08e95a4e99c2e98515883f1efe608485405b83eb8f7b4586399da57b250a476
Date: Sun, 16 Nov 2025 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763269853
