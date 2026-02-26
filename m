Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D837636682C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772107493; cv=none; b=kP7DopDoBpHNUUEmV8ui4EvEKih3d3gb5xm6zjMbdmS6k29RCmoB2AoQDYdjMUZWRzCmb645D4fxMdBVUPz0LD+wb6S9dTN/YhXShGSjPdsiJh8ACYJakRYfw7BLnrV5xPyhvLBDR0C0bEWcmn4Rg55SAJd3CVQN9YLCsK9ooRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772107493; c=relaxed/simple;
	bh=/okdCzpHOpl2NmszyaVt7Rv0VyCwWpvKN6BYmU2Zz/Y=;
	h=To:Subject:From:Message-Id:Date; b=j2T8I226xI5VJLstBTKBkvCt+UhUqLAxTmSacoOF30QLGMU3BIKBhXFI7eUri2GYQVfXzp6xT/eUFaay3/iFA2dvGPjH17rkKQwr129B1UuUcv6XtM6O9apE/9mNU6w5cuFNzrMcZK1+M2/7OaknLUImVboSNIWAkXWPT8lYNHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmIAHImU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmIAHImU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1225C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772107493;
	bh=/okdCzpHOpl2NmszyaVt7Rv0VyCwWpvKN6BYmU2Zz/Y=;
	h=To:Subject:From:Date:From;
	b=RmIAHImUXDohW92pYYpeNt3C7pWG3IrTmFn/CqtIalFfPlV6tKcBsTjH5q37a2mVJ
	 9VjCFQdWP8t9vYQvPhf5UBvbjOuRbTx+FyIS5kprEGnTWDtlb4fCGjpl5AVNgds1Zb
	 WmKgt1gH26i53HNiK6BWfVh3EmpZtoGo1+kw3uRkyC/p8yqiBI0AMeNXBWrhKbZnHI
	 a3Y5IuIc8JaBmZ9IOI9a017DsSNhbu1HpRcCeJhCURROctu3sIYKOPu4/YK/Hh8sGZ
	 PWO9cTmz2TzJrlBIp4gkvz50m9VreefA0Yh9EC2ogFqZYQKGQXkN+VT1cd0OAN52QC
	 DfnGQPGWTDE7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB19FC5937
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210749361.19724.9904714567108001283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602d6c4ea1754ef8d4254c557c4fccefdaf8a9e051b2ad0cdce29d454fde1a1e
Date: Thu, 26 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772107493
