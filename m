Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0E919DF81
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736364354; cv=none; b=XN7dGrmiiKhubcHiV4zOYVEkO1OI/vBOFeSTwVhfMq1sw7MkJLl16SwrjPhg1o1isCssNgEuL+/KiHE3XCM6wgpnu+97LVy/UD6/biqiXeNY+QK9hkGUnVjjSgtLROV8nxs4REdyQ0X5puf1TXNFbSOCFUKyVovoKOdl5zRgKtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736364354; c=relaxed/simple;
	bh=+D20Szlh5fZS2yEDWCVmCYmzMJjVCqxWVrp+W+4V7wY=;
	h=To:Subject:From:Message-Id:Date; b=nH8cSV8DfUpDEScOdGlYb9A/55slZHXj8KnhsjE9qXKgG/AqyrALC7Qgb0Oe9Z9iCV8u4w0LlyQ8suqf4P4B/PCDiNiiYnToLUCCDtovz/YjM0zkrtzYQns6lP0SxmsMo0O83oO66RJsHKuOsKXDgEMsstYiRscHc/e1RIx8U9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOXM+379; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOXM+379"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB23CC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736364353;
	bh=+D20Szlh5fZS2yEDWCVmCYmzMJjVCqxWVrp+W+4V7wY=;
	h=To:Subject:From:Date:From;
	b=dOXM+379X9146kWlszuWX+N0s9NT8KoFtYDeTt28kXLij0apXHWzUmo81B0RCVWaI
	 7msVRyDpChtGz+i5M/CDkwA3US74SVO6F85OdPQCkYC7YYPt7K64J9Ff6c+Hc5ziVl
	 AxOaTB712Tjqd4uOT99zRz43wtNgZXrXvJm+JvNZPboTbxqpTdMOiL+Xc2F6La9/l3
	 ZJzh0dFMgB4b5GnlGcF90s5+gbA9oX0sUH+hHz2pECMAOTpF1X2JsczCN2/iN3sSfy
	 YlER50FUvv8hzrIezfOHys1qlUibm+UoqqzupSHv1HX2vsM7S28wwe2NaoYXG1OxvL
	 Btaq7Y5x7BddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952EAE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636435360.30649.11861559958181966634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca50c4c8fccecbb771890a9435445a9c34c70669d686ebbe29ebe0200dab762
Date: Wed, 08 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736364353
