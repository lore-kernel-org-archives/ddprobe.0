Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF2333D8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737159954; cv=none; b=YDPwCuMHq6b6wPsztEHZ009fRrblpbH0+QovWl8VcSpMRzA3v1bjScT8od520qhTk9CWEQmWH2xJhEGraE7nia8O7QNINn0HwfYdXWSoYbKbQ6jLpz4zxpXK474gSGHWVwb6mn8c2DpQzWM/0Acr6fCZNr4u4e5n8NeuTjAWpH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737159954; c=relaxed/simple;
	bh=f5n+tg4IYKM2c0wZfTsbD4uMB1M3hMcOF8OCg2MCxsc=;
	h=To:Subject:From:Message-Id:Date; b=msgEdVeHxdc0M6kxB6XGoskpGdKEKI+b/mpZTgwwgjgAYp2wtSKokO4F03EB+aCP+EVmzWB2mQq8a8QkuzZAO946VSv2TnJJKW5sCpk3KQ5CfP7UnLmXVUUFURRIwUC3SK67B9C0YyCo8YDBeeU74d8sFBwmCfLgh7tt+TTl/2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8QuETod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8QuETod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD8EC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737159953;
	bh=f5n+tg4IYKM2c0wZfTsbD4uMB1M3hMcOF8OCg2MCxsc=;
	h=To:Subject:From:Date:From;
	b=T8QuETodyqmtXsg36SotV7HOmby7/3X6Fd4zKdrxGRl62ApheV3N3hRSeegX4NWC/
	 t2pLdv1K1+ikbOhk7dOqtS6/7TyrPpGhPgI73DxT6egMzm6PdLbiSEtXhBQ4N596BR
	 uapT7rGa1C1TIbPQDFCh8mntgQlKgBBGG+a360ozmd6Zr2X5GYT86tsfRpypSZVDVY
	 r3Fp7oOgieYulEPpu7eDPtoQEX4V6r1rU8v337sGl5JoBWz58TIYRmFFvDgxv5nA7E
	 JMconx6shNnxCutjuE2DtObyu87QarhU69jr5PTuX3vXUE8bO6qRr7mRdWK0mOh+No
	 cwN1IM/eJaLIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9843AC02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173715995359.3568.11005528620616002824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd3f50ff775239cef900eca2388fea16e624e1c93b6d7486f15052b804099df
Date: Sat, 18 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737159953
