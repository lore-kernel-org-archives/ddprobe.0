Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358A1157A72
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734594354; cv=none; b=cBylom18MXscrUT+oqujIKfKDyEepQ/XUMCarwvcaDugFrKVZHkHvSkAUglRsFf/of7hYJaoMj5FterzSz05IcWTEFKNc7j9W1Vj3J/Z7Ip+y9dW9udv0TfUSuccsppT2x5im3u5H66DPbKwyvMPo3x4C2GzKx5M/CbsVtQ/RSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734594354; c=relaxed/simple;
	bh=LehJPUOocBOKvCQ4GBIHieqo3/RIgDHdTtki8zpKgaY=;
	h=To:Subject:From:Message-Id:Date; b=WAvlmXpPMDNvx2frpJg2yxVCeSYwHmjq/tx/gvIspZ7h8YPdAsJAgaxuXTUl17FAbG9E/KkvncoLFFgv/bCWrdKS4uYy4jgsGCOmy2XhA8rSL7X/4p4Rc2toHd8pbZ/C2XHZIvSKR8g2zVJBJqpfvVXFZSaxDG6BXrcmobr1qtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ky7jdOcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ky7jdOcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A809AC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734594353;
	bh=LehJPUOocBOKvCQ4GBIHieqo3/RIgDHdTtki8zpKgaY=;
	h=To:Subject:From:Date:From;
	b=Ky7jdOcXorOFSkiRY8vNuuIdgT+b8AQ0+Z2XNTaPtaddDVwxM9lJqtM0EScIAy6lU
	 RrYNTxPtzJb9CHwv815ZXiJCFl5df4zx+15YhJJnjPu+mnLLpB8qkLkJP+bq/zoX7B
	 KuC40Ma0+rx1szruh7PRX9TMtRCkkIOnoxbwv84CWkFdcI4DC0iHRz/z/1kAZsNtmk
	 TDEAsJgOG25pigZ0x2UslBzCqRqPwPZjiDQG2RDXdQZCdTJK8VfvamorwgNm5mi/wd
	 vzYEGdquJS2LmKqthiukmXT8IVRyaI4qtgkaqlRhW3/sVjBYN8L/5NUIBbd7Fi6Icn
	 Nwisc62tTsZvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934BDE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173459435359.32130.8099775883229675199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20515e3023a043081b45ee2289bf46d05318e0fad67406a8dfec5d799a06c1a
Date: Thu, 19 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734594353
