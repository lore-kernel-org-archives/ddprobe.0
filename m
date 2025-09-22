Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8E52FF642
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758536394; cv=none; b=n0DvZHOUi3IKo32IaLWLVJRpFPhiXgPSvrOqBXAJNeC1KwBSorSeFKiBb7h0N7VUPwKYhVQkpFaAO12Y5CH3nFXROg8F4ivT/qRaEe74t6e2A59iirTLvL+yOEgi3ybMuv+gh1JjzinQNX7T2g7vRz3rHEslyCHKO3wDQgO6nrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758536394; c=relaxed/simple;
	bh=Dc8iTiuBHUVJE+w3GkeOKoxp7Ld3mQdtEBvO47D8CiI=;
	h=To:Subject:From:Message-Id:Date; b=CS3X74tpLB+gYFXYL9A2LH+Kcy+7M6O0+3ww+8rp2H0/s+8oMlEp8aGV14JEXRmMGtOAtDUR0hSNpjNfPJ+JbPvGBEpdyzpM1XILnSN8CLp1YXxBSgdeI8zybzktuKySikfHbwsHhYfbiQy3Mze5vAvHbJoIizwi6WsGzDm1w7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N40nV+JC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N40nV+JC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DAAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758536393;
	bh=Dc8iTiuBHUVJE+w3GkeOKoxp7Ld3mQdtEBvO47D8CiI=;
	h=To:Subject:From:Date:From;
	b=N40nV+JCEfv1pnKOG3WE6/PSIrgJ4IIJ6dy2HUpiILlXNQtIi3nohCHb88mt4wvIv
	 SNJGubkOqfc89vlTwM61eiEg242hSnrYtnH50RArLczEbYabiH7xHU+NYcTStaWyPi
	 3aXq0mU4x4XylYK6ixwpzOLBpw6Z1+SmsknqOUVeyxNc+ppfc7PefKnFL2X2k2VKvZ
	 Faumm/iNlPfYev6gZA9nZHXFpQNljASyccBIGS9zcEm6VdTyY+QIBs4D/bBFSqlJbc
	 SSWnAnLE/KJqDYX5uUAa9WbsDoxlTmN2Ymrzs9Qi/XQNqzlIgwsiULsYLPB8+u5Zlj
	 HH82xiSdeUk2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93694CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853639359.4294.795165543609450997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b74e2be6a8a72f6e3b0d998fcfba8ce99a104212f1304e276cfde3aa146a80
Date: Mon, 22 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758536393
