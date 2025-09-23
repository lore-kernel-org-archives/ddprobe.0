Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A6F274B2F
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758596394; cv=none; b=cqg4VKBN7hTSaWDvoX3ZJPjBNFViH+380Kr1yqJcyIfOpJ41NTK786D3Qylhpu663OVzjh2Fe0e5lLBHyuqIxMqJ3uRriekRLJFndHay5gFDjznZluHgGvDvlpD4YnUwvbnSXavTPLZVRA772r2q8sefUIXgXpEsU0gnrnNUDVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758596394; c=relaxed/simple;
	bh=XbTpWn1aHMLBsfpN7JP+97L63vU+k7syEJdLP68ZacU=;
	h=To:Subject:From:Message-Id:Date; b=D7JkSPPNOigSZL/zUgzokI8L2cx5TwvXaqSdQzhUYxBunq11y9qnYDVNx7ffaUdIJdRRH/AaPHYoGCUq1Xdk2dm7M56QDQNGkMn2Djl8z4y//zFvWLB0mKU1rvRMPhA3ltkUCnA0xXRYRzIH+sEXSG7h1c3Z2YNuKFOghBNGmkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlimdAKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlimdAKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF5EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758596393;
	bh=XbTpWn1aHMLBsfpN7JP+97L63vU+k7syEJdLP68ZacU=;
	h=To:Subject:From:Date:From;
	b=YlimdAKWOz66rkjigaskMxUjlJVfpeilC/O6viIjCx/SqxucmU78vFRX9JTjhCm14
	 zJvyk/PZyGT9GUZ9NJpsAs1vSPw02MJSp/0/WqYqCPkbjDZlkhaNQZ16vMOt7gk/x9
	 FMNRmqW8V4uDd1BodiFuSnv3Q/nzgJkxF5z3i+4C8B4rjZM53prNr04O+WzIb5hWih
	 rIHcdXrLZLdaqZJVuaGtWbH7ewvAxlj/voDws7EI/KvveupgKbp+i5dm/TuKywfdTD
	 3J3Lb1mblMq0TPmHkj8+kvYRv4KCDKR2HUup14T3TJly/CJbJUi6F0nFPxb54AFYN2
	 u3uoEUgjugYkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BDCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859639357.18521.2914048054804749762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a743c38208ce1f228e2d6239d5162261c7b0878aba3845d2091fb17c5f40f02c
Date: Tue, 23 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758596393
