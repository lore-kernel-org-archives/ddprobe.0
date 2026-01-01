Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8DD1CAA78
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767280434; cv=none; b=I1qejqZVHJ6/Mddg8Dk1x7FWW3hOD7c+7Tw+Z/DxLvzEkWbZaioM5PFaKnB97uUGXCUEM3ME1VqPRwi2lD5TxdPpbH3Zrp+l97XRVj88uaxrHJ5hoJoTsFyxLbeP3/p5YEzXA9Pcicp0vSq0qGTxHACw922iTt20gj+DdjOfjdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767280434; c=relaxed/simple;
	bh=RcbSods3Z4DU25jlnSQii0zQ0fbOe2d7t5Wiovuc/+E=;
	h=To:Subject:From:Message-Id:Date; b=M5lJqFiWpXyvekahATVMLnUaSFVCJ+EDSvtlQQ6oksZzIGIKPDOcvpsZVJ/wf7k+7XoGehMtdbP5mQfQZjEx0uaJftcFP7w5QX+U29RgRfiC2bM1kXys8jdzSoXsatH5JM8cGqHv8GPJ5YpiQw/zt0Mrx54OxGqGbUjl5ngg6d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfOYZLqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfOYZLqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D55C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767280433;
	bh=RcbSods3Z4DU25jlnSQii0zQ0fbOe2d7t5Wiovuc/+E=;
	h=To:Subject:From:Date:From;
	b=AfOYZLqhmrW21D//D+k5Ke8+2b4jNdvRhkLfaJyEZZEdT4LcIWvpeizCavnbDBE8S
	 5HcW2UeI6+oV5pLuqSt0GC0PztWxKjgGW9P52dT0qjBt+hAOEi31axPFxFAC1NCsrJ
	 2mRotY64AwICD5uqJRL22g4PlOSj4C3P5aPUVQVCEFd90seL8UHmmV7ozB8ps9f7r3
	 Myag5jbHSZxHrxenjiX9p4KlEtva5KTeBlhdcE2FsxHWrdYs/LsfHlbm3iiIrjxB7I
	 SFHs4Ps/ejhhvv48totJDPz8enqXeHhrP1REsW+Xos8FvlDuM35VS2TaqRKaexr7Bl
	 KUYq9HBDPgFEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CA7EEB57C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728043357.18284.1809175735847841335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ebf8a2ed2f051c2875cd38f0dc9eb3e96259fae59371f9e0bfd3682b5e3608
Date: Thu, 01 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767280433
