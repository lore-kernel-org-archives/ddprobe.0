Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3919128E576
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750769394; cv=none; b=gRtWhVDOD0RccxdfYmrdE/u+PuH+So7+eDVRzOuF53BZzT/F68mDuF939aEC+WySlZsNB9D48IfV6xyrV2hzhvMMiQjFPnIHCsEL+IOnlEUyVxAvPqd5zCnOhB+O5RIX4Mw49DpI6PHdRHFf0XUbCOv3RKTj5b6dJEgJzNGVfXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750769394; c=relaxed/simple;
	bh=ZqH89n1H7Xgz29J8E2SAVivs9QyhqYLYZCOUOT/hoWo=;
	h=To:Subject:From:Message-Id:Date; b=fHcQ8WKyb1LbPW36TRsL7WHyGW/o5fpaB7GhTyWeVr/iX+BqTXpNw7c7Cg8sPqeCMwYemKcj+j32s3ibU2aKiUbvbZu2gmEL8zc2Hu+M9MN5NEsFsriERbE++Ixx50AqDr8NIzEEgz4Fj/dWub5Kl8WDPmywMRAARMqxlea3bBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riDz/7Pf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riDz/7Pf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E66C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750769393;
	bh=ZqH89n1H7Xgz29J8E2SAVivs9QyhqYLYZCOUOT/hoWo=;
	h=To:Subject:From:Date:From;
	b=riDz/7PfP20BwUIGSHysi8q3V4Ttf+h073Y0TX/4+H7IRgIk2/T6HfTeqJfYcSqJi
	 kAgi/7Pl+y6RDYURUu/m6Zb5rsYjVXoO683ssiAwOCf7wVWPaa0yYYKUmAGzsx+ZMu
	 vidCIpEiEMJ65rLdFjwnpDp9q6wbAMDO9tgs0giUxMEkriBWHPi0+LruHLXcq6StWx
	 SeEwVk+51Cn/1hRrsZb/iL30Bgc9klwLKmjcTdqNTQ2r0EhhNJlFPEk07PdGGx8B8h
	 Ml2J724A/xkC7UUXbXMa8AEyCjn6HH+QJcJUyu05Pb5H7TURmtZ4gz0gDCUQ3GM9MU
	 4r7Qj39BXBpGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B0EC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076939358.31860.13638611280867798624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292d99a1b5de0b3c291691987b8675454eefb74a93e38082b2d01d92c48b32c8
Date: Tue, 24 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750769393
