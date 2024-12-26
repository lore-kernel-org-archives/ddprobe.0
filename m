Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DB323DE
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735236954; cv=none; b=kYfgqbI+TAkMkKqDOaPXLNH0HuwHL23/82ha4WKyl60hyiwV/4IUdgL3AIXJtKPStY6WnH9zecIj4tjlgsXO/3jjKMx+adD63x/DorWAcL/8TaSjkthWV86eQyjBS1cnHD2v01jq2smI02OcL8/Quv52aMIB5SoiZADfaVMsqvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735236954; c=relaxed/simple;
	bh=aYU2h8IO7lJakqwsKwhScS3EhxfnbyjcybMwuwnI5zE=;
	h=To:Subject:From:Message-Id:Date; b=Kyt9mhTInF7mLnZtGV3zxm4vHJHuzIn3EFQ+57XUUj/9IAQ2A44sHq/PdGQrzlQPUucki1xjM9VaWgcHtayp4jiBlsRVmwz3tvj1W3ts9St1De9/BxoPIR/lVtVObjwT1apUIk7kRw3tGn1/MI+87UumYag+PPgzN+szUmu8bHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioAtSHCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioAtSHCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6175C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735236953;
	bh=aYU2h8IO7lJakqwsKwhScS3EhxfnbyjcybMwuwnI5zE=;
	h=To:Subject:From:Date:From;
	b=ioAtSHCzL5q8uJGB25cc6I07KIcrUolIbcC8jOS5qtw8mz1a9GY3fiSf+OkiIRzqW
	 YYWfRawCuHVnfcWW3Kd0FFWiMSYILAxNv11Wvol5q2N3TNFf+JiERRKjTmKaQKDd/0
	 Gr4HPTCDY9/h6/qy8HWlAaQ4lBNTeSgVFC2mmR8sZWk3LV/zarBpZhRBZyXwbkavjp
	 yoWNX/YavDnIKCg9WctkNEi2iA/tj5XxJFRq8lbVSMr7M+lERFqDQhmgrYpexT5FYd
	 W8BVXYCRBm0RonOzOLCoNndho9GY41Wq0iFUrO9uwOFQZuuc6m5W8Guv0PQUt55rr5
	 /Zx9cKlqHZRaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92110E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173523695358.6696.13169429514350407527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2777ce5662a06b3c38ff82085e0aec677df16480d67ebbf1568502d2d4c388ef
Date: Thu, 26 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735236953
