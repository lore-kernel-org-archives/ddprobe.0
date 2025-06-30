Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A922580F0
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751299194; cv=none; b=K3NhuW7HOjwlW/B1gj/ww+DfnAD7NrdIwThKw4cjhCU9hBMTRAxf9UEMhbfTZVUCfPLn3mqV4Psl6RxemuijQTi1guwZ5QsZPYYfe/fn0DV0RPqFaevyahiTrH3M6U1Up2XUg5ouOYv2RCq02P78qkw6YVoK0gWBma2LhW9lqFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751299194; c=relaxed/simple;
	bh=EE8dzaRdz6zAvJAK+GoOsxB+1ekrtSnR4Us5t8w6+5A=;
	h=To:Subject:From:Message-Id:Date; b=HBXpJsLFJ+EZdVTU3bW/j/xYn4XU4XZBN27NYZQxG04xKSWtiSkN/I7lbL/DB+n20oG6t+O65h42MgUj+hNItr2AEpM/FhncIjy0so6ts5pIMybOx/0sH7Fx+yJQIKk0UGWkgwCL8Yf1S5Dv/ROARYGOySVmv1ELhsN3LiaA9Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmItgatr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmItgatr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A61C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751299193;
	bh=EE8dzaRdz6zAvJAK+GoOsxB+1ekrtSnR4Us5t8w6+5A=;
	h=To:Subject:From:Date:From;
	b=cmItgatrN8U2uDB2XUNWx8aC9R3Uux8D5EfYV1ukuqF+YydltWhhHZGuYktR51MX7
	 VZTe50ttl9owre3Gtz6gBl8AeK6lZkuCs7B92+8OlKdz8ecjI6f8QErgmKMhBYT+Mv
	 SxOqj6RsFsXBenQCRO8Lt3NKJN8PKeHd4HkBp/p/wPRszZ02Ick/i5PyaKxYprYZbu
	 SBy+YWx4BBU97VIXQ4LgH2ffI4qgPx8+kGXqY1TIHb0Q/hcMsp7ZWpQMcIYlhrsiRD
	 5bcDAfdoU8KuQQulYTpY9gcRuH8x14dTsc9ZUohX/w/9YymWdgHDuimQd85+y81PXu
	 bavEzmkF9kbXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CDC8302B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129919358.1893.2491578182431763722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e9ed9e2aa9f3634010fc8c563ec36e51884cd10f6710845c057c61c85adbdd
Date: Mon, 30 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751299193
