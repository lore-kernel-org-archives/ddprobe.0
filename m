Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4792B57CA8
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714720343; cv=none; b=EgNnjZywpIcnB/ixGdbPIu5YJcM9u/2U/+FYldjp11ITWeo3c4+i+/7SDiGrfkbW4fEhVpMg6GxLVZhhGFyEQdnk+pLd29BLLbqd83/uebcvOO+++9qHa/TOguXQFEP/LkfqFB3UI7ZTVDxAVmrU37BEJjjQ1Xz3zDlwcASCZUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714720343; c=relaxed/simple;
	bh=LRnQ+pRwUfX5+eMyQuIp2exuwGwPuO7Xio4VwGbx3XA=;
	h=To:Subject:From:Message-Id:Date; b=tkQAItkflQR6KNuZmNgCkdrWi8uGhzISCV0907OhItI3JugJh+qdttE7tWO55xPISbLMoUyBe014319koLK5JAa5ZMV7FlO5WwlL/jc2chtDY0FSoxtT7hNgup6B9vlro7hKxgKUBjwIKsRW0RFyHlga/HTho50bNpsZ7GWVxwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgys7GWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgys7GWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0338C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714720342;
	bh=LRnQ+pRwUfX5+eMyQuIp2exuwGwPuO7Xio4VwGbx3XA=;
	h=To:Subject:From:Date:From;
	b=bgys7GWOGc0+fbmDDf/LOs204p5iYd6gTLetNftKUWKbvWrixKuftZ1/SZajwtEzX
	 YXZi7ipOWySupUmTHBU5n3uQa7h5C39P6/ZB2fmBt3gw39RkEM1ZQ0IRulwMJv+eqT
	 QbaZQ7DWtKqGt4+93Ni2YKWeruAVEruTo9dJAqbRLCPVsLvARbRA4r1qMxXvukadBE
	 PzWP/lwOGjTxzLQtncQHSIso0Sn984QrOE6lKYtBvZ5qvrlP0JVxCM+sn13JtqMIVi
	 gzubECNkenDa9+aqoUfB93IreSDJ8iFKYksxX7Y3q4OcKF90Xs9kTXMkWX+nmMsp/q
	 5k7rhDtO5oABw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC85C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472034276.26713.13080240040864116704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31213d23362d45ecdb9788b3b96ebd6322cf27aa2431bc20701b8d273893a00f
Date: Fri, 03 May 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714720342
