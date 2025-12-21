Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EF33A1E8B
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766284434; cv=none; b=MF9xpkbaB7qD/EFBkirIDZJd6ODGWj1cJnK0cxP/0tlAWZ3Wqkv1ZsIKhgduEW/Bxf73Aa1BlfaJuoq1l7t/OeurmN66ZBGfNdna26CmZ/PXIQHxsnA5f5vXscAJvjKz3Nc/tfKOO2hfzPYlIAVb535xbkd6mwoSCz7r/v9/LMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766284434; c=relaxed/simple;
	bh=naP49VMzsboGk2JHdU8xSYgx7WlB17UDFwiWrKDPrJw=;
	h=To:Subject:From:Message-Id:Date; b=MGnsUDpbWpkc1Ro+hTqZLeActNI0ypG9ziil9emX/ABNLCY9e26jRJPmLCeqfBX9/n0QNW/KYwGeXTHUIRyPH8ccPA1y+loDY/PZN5I6RWSQkZcdeeEgqZkh+37mLK0Aag1VHtfCXD+sQh6CWKujU1OGAo3GdsA+izDhF12wiEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3/QRBrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3/QRBrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7633C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766284433;
	bh=naP49VMzsboGk2JHdU8xSYgx7WlB17UDFwiWrKDPrJw=;
	h=To:Subject:From:Date:From;
	b=h3/QRBrhx7YHUVtkBr+PNKrmwniImnyAJSQnTca9IfHMn1xxsTy+Pf+26WD0kBjhT
	 kQaow+gR8a+4FToajtNdyeFhCx8A5XVSkkfsS94e7Gv2AcocnnW5l6JK8n8oxuBvpn
	 fzmIZVCsyYFw13lXtn5qvham45e0iqqyAmfhTP/SPSr4pwep1RUNOVLgXLSyuiJCyo
	 t7mbmd/axrZ46bauQIySpqYqCL1c3Cxgo4OB5Knaxie1L9ynas1TYd9agsIOYKx7za
	 RMY8R52L4I5JtKUbPMlvOkNrL5JjuzYdewdrGVFsgsxkj16GjKtxOZug6aPaKgMTww
	 yl+I5r4wpQxJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959CCE67495
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628443358.22908.11505863996970800370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec147255145c83d1d6a2fb783d8bb867d9ee5c83fea802b3350a1d521f99073
Date: Sun, 21 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766284433
