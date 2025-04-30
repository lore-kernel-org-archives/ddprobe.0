Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240B333086
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746017994; cv=none; b=f7kLzL83UnqxN0aki3+BF8I7eCWC+F4D+os+7keJehZpIwN8G3Hnt1xa7enQKOVKGc6vl4gbR2+b+eGwgq1o7E/TVj96KalEH0IXajr4klV66QVfH1mc80s9c4DAIrob+MpCWjrA6LbKzS8/0A403kAvs20gPmroAWLzOWvGz7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746017994; c=relaxed/simple;
	bh=dzcOj5EC4+B+Zf4SGI6J79fghSfmuo3P/l9Jp+1QZvs=;
	h=To:Subject:From:Message-Id:Date; b=fZ8aKMC28NOqNfUGlHE09VIU4fQtTt9bReDEi3tSB6E+3xiiD/aKS0J5GVxnGzg2rxdvZ8GhHWnfIDqr6srCIPHLqK4ov4zk/waIUY0sxdzc7COFhMfJPRyBAHcFybf+sPSmMiwehLuuaowr1flPhZHZG0JaWYuTQbgcjoF77eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCXT2E2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCXT2E2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D210C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746017993;
	bh=dzcOj5EC4+B+Zf4SGI6J79fghSfmuo3P/l9Jp+1QZvs=;
	h=To:Subject:From:Date:From;
	b=DCXT2E2xlfCVOqYoflurlwYLl74OQyUiezUFB87seAYMZw9z2UywGSw6426waFqUK
	 dCaDy18EEmGrRUtRvqQUdnIkJKFjOMZ0TJaaIgHmX1crHxFwz3Ol9OlMid+4q8yv3i
	 yHikTc1tFakFDptIGT9fnIbMoYTI5okm5grW6Ok9YXSj8rWM9sv1BqKJk0vQeC1YdD
	 JFSlUGdQPHXmPMJhI0tS2TAuA2haKKE8l2XKKuyBPtUmyf/DcCv3jyBJXQKKSb2AY5
	 RvOteGVvH0Ru9WuUe722iPtn5ncsMpSvfLhcPMAPv18zncpMqkPlxHdKEOoCePwCV6
	 kmN1jSEO4cy3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0E4C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601799357.18263.17013732741402400460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5698dd0b96fc730b4faa98dd17bb674a36b09329d88405de62655118a0b914
Date: Wed, 30 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746017993
