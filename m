Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA56175A87
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774996494; cv=none; b=ThfVlWed1vRNS3ENacEIDgH1NoNHbbPS7wDoP3f1htQY/1/mEw7+JK2V3Y79i+2sLub5leONE0KeSku7s83K1H0pPxR67r6ZjmKhcrSqQCdLlVFpQbbWZStBc8Ld4H+UNVhIYr1D8Z8XqlaqZMSEyCtvzbFfHpT/waSX15HAHRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774996494; c=relaxed/simple;
	bh=cPYXoPg3E7ycZYQmBjhe6ZkviXf8W9EndjUKGIDWQE8=;
	h=To:Subject:From:Message-Id:Date; b=GbkwDneYhxGbFZ/LtxlCr6yG4ja1gXu/0CQ9ZTx3SKz/VxN2Ew4yRUt2opypAPLdRRx9WSXjqHa2Jt4ZuxsTPXeI2+vTAPBYaAOw1/2HZ7mTkofxgcelSgVp9VZ+YoCiCBuvA6j1dmjHkI003bwapDxWtwbkF8Gopa49WjEyzn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvZGb3te; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvZGb3te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A414AC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774996493;
	bh=cPYXoPg3E7ycZYQmBjhe6ZkviXf8W9EndjUKGIDWQE8=;
	h=To:Subject:From:Date:From;
	b=CvZGb3temw55u7FSmBhX1bkUX4o6XpkSePEL7nGDSTJ0Q56PU7t9OnyimdZfvmpKh
	 Og0EyG9EPZaWjQgn39fn4E2jGuX/UqB8tJG6er1SRplB9dz9V/oLgFK0WMeVMgVNNg
	 O7vQD/dmhMOd9qI/QPAXt2kWCB46U77KD8JLN9bjC8uKwOfmEx9++NdGAoPDusyOmT
	 +9ua9tJ456FWX76bL2Fbfv3VMlQNoW6ZzsJyJZNpQh0k2Ovm/kqCSBcjOxrK6WV+P9
	 zjQ8xWbCBD0tS+TlsgMI1QcC669E+WHY3La1l8PdjTgRLL++5OZ2tz0k/xZFKsxDx/
	 ZswigiyKWNi0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F2910F9302
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499649359.29144.5499317570202083741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a5e108ac477ea127a8930085d42e32544385dc7930947ffaa9b8d7d5ab4061
Date: Tue, 31 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774996493
