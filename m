Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E08C28C869
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776755854; cv=none; b=FwnKS8JC57Rr7DNZFLmMgFjY8gBG/CfE0MTv4MNtqYEd2F3y1mQRpAg0o+AFfWPX6ceZtgchYJUDQ9V5KqXU1irhZz76gMdf2TeTuqt5LAsrlN7t8ieUuv0CwNHnlicJwuHGxfxTaTvq515FaRJFDgdU66gkDtxfWUe2/BYdLKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776755854; c=relaxed/simple;
	bh=+pH2EP1WQpatgyS8dpNkBNUJmFsVmwGz8Dh+nP9tKD8=;
	h=To:Subject:From:Message-Id:Date; b=gd0Gogtk6eg20QvDzAM8A1Ah9mBpXrrTKTMVx/kMhFi7jXON0pG0ElMjstaZlInOPjHrXYR2X61VaMBLw87bJCqQGhCVDPx2o2Oixbw4K3vu6jsVJqY+gbVLnYonGSEfDaCDLOmXq6crnlTTLz8VmXw7UWBI5o2RJcn51dWFklI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRChZ61m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRChZ61m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B973EC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776755853;
	bh=+pH2EP1WQpatgyS8dpNkBNUJmFsVmwGz8Dh+nP9tKD8=;
	h=To:Subject:From:Date:From;
	b=lRChZ61mxdOV+CZiI75Q2cUbeKUqrgq4yEgpCX6WMOmFTAFYHF4bKGb4hHAmNsUQr
	 9LHCP82LQC1Fw8Bck/LbI3nRRcakfECQaM7IaJNA60cHVj2K/jhiEllCk8BtP0+Op7
	 EsrbmOTjrbECKFF53V2pis7gTUj/PzWcEjUT0Jao9yZeBoOew88VW0p6G39smELCNS
	 xdsn3rBOYXVN3QSQ5Au7DC9wntOcteB4saqo6N8Dxr7hLAaT198g+9nLfz/lJzy2SH
	 bApyico/QVjvzuRvQtofoclX+/xZIBE5TrijBalYyJQpJarvxOAHPXMAMOAPW6Ay/1
	 jqu6T4zCjtZcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DFEF327B3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675585368.7228.12890041445327131783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083d109d92c8872e503ad76e313d7872e779154abf139c398203d9747aadf58c
Date: Tue, 21 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776755853
