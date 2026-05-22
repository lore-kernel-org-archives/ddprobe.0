Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366921FC7
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779408754; cv=none; b=bFOpt9u/0buB2cCbKUtlEp3vP2pnec0H1p5zT56DoBfelQodHnkgF7hgi2WTQG0JMBqct4LOV3uNrDwPDEh8Il4+39D921TODbf6x/DCRRYPOghEAv5lv0yK3mf60YViuhYU3zU/cBJH3UMTOyHWAlX4fgGZlYQ73MZZkppa3nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779408754; c=relaxed/simple;
	bh=rWbYxyY+ZmbndENgsoz9ESbZ5I+kAICVn2HB1UStUzQ=;
	h=To:Subject:From:Message-Id:Date; b=Oj2X6ytkhLKQLTf5RiBWzvrW0dcaaV8yZTK8u5WteKIQ0r7/+d9edTy9S+83VDlGklpz+vJ6o3nLci/MgtoptkC/GMFJjW/vG/i4ow6PdPZBfugxX6NXmqLHg6W1Cd9YyfSCkWLY9Gj0BLBge7TZCiCVwdcYZ5yaX7rW/1MJWMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6irLok9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6irLok9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FECC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779408753;
	bh=rWbYxyY+ZmbndENgsoz9ESbZ5I+kAICVn2HB1UStUzQ=;
	h=To:Subject:From:Date:From;
	b=h6irLok9ghLYO+rlnzaVl7sdgTtDGdYt5qs9P3mAr/4FwzcxwyEUf3von8vG7lBML
	 DxidYzMRN34INxeVLPbOLvD+Fo6H3ngUTby7siXv91UG/L1ztjwt53Z/EMxLvN+IWe
	 umVx1TmBYz7bqsTGaNlEut+2QIT6qC9K1ZetcYOicn4E9QZ97r6lOFxu29jb/Wr+2T
	 5S36SAbcQXvSglhAiOKRsH0nIy5Dya4ykpsDT+P1pvH0zaDN7NFeBoOql9mOLCWDNV
	 wG3zk+OhHEU818hDynG4GbYn8gFrbOv3DCiP+oIr8Ym3TuEjhxVrhf8EiQdWvj2BVv
	 Gci1SZlGvJsgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56D3CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940875373.9694.2770321331761495615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd6965d57d5101a0e5b7e2fbc65b573ae8669a185c630b7d50a27d458a8f64d
Date: Fri, 22 May 2026 00:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779408753
