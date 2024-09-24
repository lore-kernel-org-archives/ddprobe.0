Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3502B1B85FA
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727160354; cv=none; b=pDi6/pU7BNjmRdQVjHFzj7qS/fPMsAx+HqUHrXAsjtQKG1sT+Qc0DXIZVC1kYg6XxG4G7V8N5/kp//YCaLSbm5UoWdQeqaa5uYp+t9QCKXORDZ85AdYQIT47g4IPqRCXTNJ2y9CUXOQ4M1hFVsY70giFikN9btkBtoyjrv+TiEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727160354; c=relaxed/simple;
	bh=kgW163MgMHIE9BHrOAasEowLMJuehlCo28ymSQaHw3A=;
	h=To:Subject:From:Message-Id:Date; b=Fcxm1p/MLYpTGbscRNNr4PqILt89UvA7257hs95C28xkLE2h5aV6S7zxWPsvv/yi5NeMUcVNNDhoQuzac5KF0dlMy7Nu1I5M5gio+Arf18zeFolhKBgASf1NPUjeSNU9soKQ8p8f2VXYXXPC/Tb3DwNqhAfSwV/tXFaEDRa6wro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BomjuLyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BomjuLyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BD4C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727160353;
	bh=kgW163MgMHIE9BHrOAasEowLMJuehlCo28ymSQaHw3A=;
	h=To:Subject:From:Date:From;
	b=BomjuLyTcLcuCFxQvi5cLEf8Aiwk00I/4xLzHRKRVMUobwkgwZzbFPpaIxL0PUWG6
	 0AVoeLfqes6IZj8+0GxRBFemYnxbL0t+DVCUO5/rtHChNf1bYK1eQ8JtVQ/Bl7pcz9
	 mY2AIFnPznAJp8r2oNABPk5mkPMId61xyc2Ok8dXetYbaw4X1/XJEYD7f/4bvdc6uq
	 h6BZGD5hFfttJyXFX3rbtnnonnI2OsGwfVmy6E3L+/w0RsUdrrms+3YRn4FmSSvOe/
	 4FqJbVG+WVxkUcI0fYaVHSsjdPDDtk+ADY2qFPHJA+1piY3VVcRVLml3RUxuTmXKPE
	 S7gxWjLNdyVCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B88CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716035359.5401.6866402207144576705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ab7a73ceff2caf313ed2c02f834f7ff30da8bc69115ed8bfcaf9bc01a101a3
Date: Tue, 24 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727160353
