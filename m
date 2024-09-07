Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D305DF53
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725719754; cv=none; b=foIhm8oIKLHHUQaQ5cGCnTqvzlqwmb9Evy/gOR2sKHSwS7A+G6hJ3vQlmWYuaC+529ANCB1nQR2C3fg/6bXiQ/GxjjD4GL13+9Pny1G+nl50SMtHoR/fPG5kJ9pr0OtOULXCYKyQCEN3aJxIkEvRev6gCu8a8RfT1+yiDyRciFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725719754; c=relaxed/simple;
	bh=sC2jfynTBzCRrlqZye8kBQCTilcZJcR8Iov46g1daN8=;
	h=To:Subject:From:Message-Id:Date; b=kDFbSH6uicSyChKa/Rx3bfgd5Lwj6FMVf285x3iH/p7d/zS9p+gN50LmBDglBnBGS2OmLOPa59XBl6GtiFQ71jrHHy816CgUBc5yag/61BO07X+i9wsQz17A5owB68aqKMMdtG6vQGX8s9qGP+86b/cwXHVOoLLRjUFckVP8FwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nADBTwuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nADBTwuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E2FC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725719753;
	bh=sC2jfynTBzCRrlqZye8kBQCTilcZJcR8Iov46g1daN8=;
	h=To:Subject:From:Date:From;
	b=nADBTwuAn6zg9f9DkW4ayXf731/QtzJOxzcRGrQYxeQN/BuAXz16aDJtrX3/Jp3Sd
	 JkOwlzigBSDTfIKJQPhqKVll9YL0OTCmRsqBEFmQoJpiT+SMEhXVoJOWXI2ygZHlQE
	 D7GEEuwdvHIDkJUWJfr/AInh1iMYqRfLhVZYXrhl3CXuxFPvsXYgPS/i5IZXT1C8gR
	 d9r/4aPbke/ZIcFQC/tXVCovi4WoJfY6PBlnA/ARDfDsBNEesrVtbzBX+f93nRmvfb
	 AL6PZ0crT+suyWQ7sdnwmarD8hk0Yum7AA9Ndais8IM/ktIjZCa00yLelHJRhzIRQ/
	 a1wwLeP8k1/bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DB5EB64C5
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172571975361.24976.1294728057438939092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b197509ea2d9b0615715119644000213a4eaa2a84f93f0f107083e1e3b70ddd7
Date: Sat, 07 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725719753
