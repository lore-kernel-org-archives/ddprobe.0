Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DEF1E4AF
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777769254; cv=none; b=O1NlILgORHsNqkJUGL6DMhpGttTJ1g80ptUc9HYJptCjFBswDTtNDf4C83WItgzQGfyBhi/9r3R37ISSKNuRzAIn2raWElOnewqR6oofs1232BmOsHRcW0tNL5CKRB99G29P11FjaTZQU+bcVH5hu1T5asuaGi0qFUm/DtajIiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777769254; c=relaxed/simple;
	bh=uPfFkZPDdnxFIVmOL994YpP+yd5AtsH+xUvgptNZ1Ek=;
	h=To:Subject:From:Message-Id:Date; b=Xz701/taMBy417gOiZckVwogu3t5Y0Dixaz3lc3LUzIyrOv3zWNldv2mBW5Y5dsIA9dhqbAr+q8OKLaYikC7TzivZd98TejRd/RYpmGJLg6OEQqugNn9nW/KQ5Lb4OytsZ5dO4bUFdgyjkmEuk2SiDVmQ/D/HBZJgFdilE9Xc0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5UbyBIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5UbyBIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60BAC19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777769253;
	bh=uPfFkZPDdnxFIVmOL994YpP+yd5AtsH+xUvgptNZ1Ek=;
	h=To:Subject:From:Date:From;
	b=k5UbyBIG3hsPoQw0hN+5yCx1CC5ML9MyG6T4tKgimZXjSSiu3uBMCJ+Ub6oLPECf4
	 zeqsI/Br9Q6yYtuc3vQKuFXDs4Ll7sdprbczQGyQtf9YYaZFcO2xO9QXXz5/q66jsu
	 K8S5A3W8y2p6pcntm+FAtz23eNwvd/HTBltCQ0O8F4ToRH0TC6VCKOJ4GBRORKUS33
	 n2j/3ZaPsds4KCXGXaBcmoV+76aCn31HVO73KvxhruHfk+xlwzz1QR39VrkUQG5INT
	 ZTf70NxNaqU4X9/uI52G2zBfMp2NKrETo9k0yM/IC9yJH+ym/q+nBt29E1KdX/LIe8
	 gTBDbN11FeBtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B404ECD3423
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776925372.706.17531082608584004394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c125da1a5334890c72648f2eca7ed8aae121d8fcebf5c47370834b21607f27a
Date: Sun, 03 May 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777769253
