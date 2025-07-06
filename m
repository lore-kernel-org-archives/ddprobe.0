Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A31A9B24
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751783394; cv=none; b=Uq/Fe/vJuw2Ykjtl99mBLGthEA+p8MkJH4Wy/ZVWWlhUvAgjvAqt1tOjuAtbAU1kCwTp00Jsji2aVC2/e6f8ax2Vjx/fdSpQDQd2YDJw+jhMxyXOh/3jQUbJkTtL364xkFLU0s5+BNAOi483LCdkWZLeoFSppnfJdW9v88VBNgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751783394; c=relaxed/simple;
	bh=djEGewnK1hivufYXzZQXlcttCWh43gJGOvz20fucMxs=;
	h=To:Subject:From:Message-Id:Date; b=AUopzH3d+dCWe2DGwhrQGrjeuKY6iBrpXlGpk1b33t+1/IouBB9YOCI0+SG03MLMtPQrGReDKPZs8ssgirzgOqsNUniZANY+/hStXvcTVYGb5940n1ZoUEZfVe7jTEI3YAsk9w5YsUQL1pz0Ri5mVGFcSesKXtPiqdLk27cd2Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwcPB7cL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwcPB7cL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB0C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751783393;
	bh=djEGewnK1hivufYXzZQXlcttCWh43gJGOvz20fucMxs=;
	h=To:Subject:From:Date:From;
	b=qwcPB7cLQ7M9ec66VXpCLmc6Oy9rXIPe87XM7eWr+j8kugnWKyxu9cwbXBYhPOQCS
	 a3FU4zDP7+JD8SgBtY+AeUPODX5lXeZ9qjTxsYhWMsITFfplE4g+rcsg5a0KUZMLx4
	 SQ9xZfPlkLhOAk7/Ff+mlVxva7vngxxzwGn+az/hBReLxB7A/kTOm9FW1mbLQjU4Ej
	 CvpmJTuE5SPCF4cLqFWqdMa5M+5fp0tY4IjuL1Cre7ccmqiZwn76iibzzXrsw3/or3
	 08k3ynyzgVuLUDYJzsA7I01c6RlJ9YDJJ04U/Lc+h22rHX+BXocyWY8r6faQqcgsZb
	 tfcIGz10FTscw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92762C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178339358.6603.14756870629575699782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14f887cec87cc5c54f529e9e667ca51edf72dc03300ffea07e2cc8e985b340b
Date: Sun, 06 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751783393
