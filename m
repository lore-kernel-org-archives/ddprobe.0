Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5054014658D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736070354; cv=none; b=NPGInoJi/vuL+7jFR5PEmcEdbU8D4bjnWwPnZ1JCJBScNy8GWd3i1UfXlp+ZSvIjmRuXG2XksWNwhQ1zlmqtvfcM9rV35FbpnmJLBnL5BwKS/opvCziPQZV0owBlMcQ6Iy4NUrHEux/ZUeeuOLRGpka9aaGcaXtL+VQS3/f/2VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736070354; c=relaxed/simple;
	bh=TZfjLXWppNzUuQKMK4QuhGLyZQ2L4hjPTkUu47wVO2g=;
	h=To:Subject:From:Message-Id:Date; b=gnauyTyPwzE3IMo9dMBMXWw/Z8DLUYzB/bbYWwiQKVNCJSQRvEZqId9tFbDhSCQemTu81IWqt2Cph49PnA7slOHY1pHK3k2ygbycNuY9eaqFEMlxF08bbMLob3DyRbrxaZLZHefqLMWahVEp28ezP1S6pu+6MO9z/nw3TpOaGnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDBneLRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDBneLRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22E6C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736070353;
	bh=TZfjLXWppNzUuQKMK4QuhGLyZQ2L4hjPTkUu47wVO2g=;
	h=To:Subject:From:Date:From;
	b=PDBneLRho9TNlhlJPK4ldN1h9itNlUxRhbBkCiUGIP01fjw3J2E6Gwnup+2n5z3S1
	 MFzyH4xjC3uWwoHoZD0cFnPeSR68LbuE24uGZbpWSVlnJTPcTJy0DRibR4w4GBa1j6
	 iEl5ObaX0f/aJxHT5v1VnpAdCFI7K5lnzQitcAxksxYt0eKmrmNPT8Qz6blEVv9UoD
	 TyRvfyw1zMNEdYLdPapSY69zqhwGdUp5CSrxxz7uo/bo/2nJYafm9powuUKNylJcTd
	 Xwu5DlMcw07m7Wupqvy5Dk4VNfjoWb+iMxJhSuGvdrFTxeHi6+F+ByZxlyzGRcY+5L
	 VwOvIJVDIy4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06BAE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607035361.28654.4307171786742545498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b1d06cd62068a638b4946017f75b0d10a1a692b767848f14bbaf77adb54cae
Date: Sun, 05 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736070353
