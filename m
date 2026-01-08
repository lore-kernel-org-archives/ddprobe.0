Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B032EC087
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767894833; cv=none; b=RPhR2geEIEqckp2/dK8oYPiZ9jBp2fNIHFUIMYoT8xvW6AMqfFcYB7rxwlnHZkO65oBrjF/45CnzTKJxW4sd4QKSQt9dPVyoCU3RoYgj1uye7PUHQu3+qsr6WFaKeZ1jtq4cIs3nOgPxDol3FkSFh7yOw5/MQJ+KxZLLsU0FIiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767894833; c=relaxed/simple;
	bh=MNwUtoZtrUwB0GUgdUblOWdoFgkKIs9UXxDn08SptcI=;
	h=To:Subject:From:Message-Id:Date; b=G2SVM00e2X/Z15RQQwpe/gCB2tEpOiP/zptRlE/nFFwZdutX4k5IEZGHbYbXyj/TtgbCx5ya5GZOqVs93dq/QeZqIrm9OIa2DQDHpaFubr6eLOl8oo40UZmEFVHg/JbPVohgDMHD8mBwARZjHPK05wYQ78Poc3MRqSn2mFNsmag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP4ZnCpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP4ZnCpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F1C19422
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767894833;
	bh=MNwUtoZtrUwB0GUgdUblOWdoFgkKIs9UXxDn08SptcI=;
	h=To:Subject:From:Date:From;
	b=CP4ZnCpyWop7Vog7YqfFPFimodjYXlnEddiDF9Hwq+06Hf/7AG5CMHz8bcEKII9yA
	 C8cPE6mGVp9NGvkQZRdIGsTp6Uf5kug7wUfuOoTDSVgRqmfrE6+nL9OQoAGQNKUUhJ
	 xWdT7VIZCHeeKuYR1UQhpb2WsqXsd58Ou7ZRkOGmb89ErKAFRV9/CStoeXOkltdLVL
	 QguIZghYyp+lrOtN38keNl3URnNY0iTNjqGvwbwfHaNED0O1LNxg7MLHNXpUNwzkbA
	 kJI64ggoMbn/Pw3T9Q+uETzoeOqMwHMlAtedLCTmJtmkc5Rw/Rj512ArN2rwGb5ss3
	 CZud+gsixcKNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C08D1D487
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789483359.18437.12642417245512123017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e8be9053092f8de02935a2c34984f62c28fd915a9f72200ef9b0422ac7da66
Date: Thu, 08 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767894833
