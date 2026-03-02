Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35312212FAD
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772439894; cv=none; b=fvj53REg3QsCNeObT7gDoCuCjVdiQJHySdTP7B407t00tt9viLt6gJOO7tilXWt9zBcgsklUDt2J+/H60iZi7++wN9M+J1Vn+0TBL2Mv6wUetgnYVgmyKB38QQoK3LAz/DBiK+F8GIsDMOVihhUVe8aBT+OAC96Ck4rSVP+jWV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772439894; c=relaxed/simple;
	bh=Gc1apcMT48l2YHhd+yCPPcHZFy+8/Y/cNA/iMdHK/LY=;
	h=To:Subject:From:Message-Id:Date; b=aaP0fzVSeKbgr5RoupN0075UgkrVVIZNL7l2XR0SPQw7Dg1HTtmWOFj4Na6cklYeZ6zbS6xJ7UPAFHygLkGljfog6+UhZNjMdCNslZWL0WBalcFccPyXrkMSK50XaK1+Dx4x2XMjtGH1WaXshQ75HuQpslipJAeMV+teUv1r8Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaJ3ENKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaJ3ENKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADEAC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772439893;
	bh=Gc1apcMT48l2YHhd+yCPPcHZFy+8/Y/cNA/iMdHK/LY=;
	h=To:Subject:From:Date:From;
	b=OaJ3ENKYLCa7OnASPAH3wsZt4byk3B6w98J32hdvji/chBsumIlEHukF+rV4lyFUd
	 xTu08EnmdPwqznHngZHDcknGSRQx40Xr1Jjke7PHhfil2llHP1d/r8GsCbhsD5UiMx
	 B8d6XPT2c5hYBUyk5BIbVXiuqDO5pHTs75uEwLqy/GoLFtvcCmm1kFtPWJdEwYTqU4
	 cqMSgMaPw5FVY/24DR/NOtEp3F3P/JF3iNglK4AJyT9spKhobynzsPQNbQoj/W4uSo
	 FkaohzXtF2MusPBW5ps2dw3LtoUZzHoFa+q0+oe7p7roeCrJx4OFHZQa7VDabggchG
	 8n3nBDncH/xlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41D6D58E73
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243989371.11522.14431682713568971388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443f451afaee99a180316576e33aeaa12bc8103f690a9c2ce78a8bce0cc5bdfc
Date: Mon, 02 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772439893
