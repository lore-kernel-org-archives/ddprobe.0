Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4EA18DB35
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766725434; cv=none; b=d8jkZWewzzdlBCAHvvozVbhHCh/eRa6crdG5w5yWaX5dOMYzkHh/Eo3Q1V0IP+zMFpbJ5270ufIU5cYrvLsD7U67AK/gCz0Y66mHeg35NVe16Qqxo+t6E6BsSx2lf0tjsmFtx4I6cRSYwPopCa0EsA/FkQJbwZzwOiZo4+C6Wfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766725434; c=relaxed/simple;
	bh=x4H0eWhHFVM4Tmt2CgcLb2MRzADZpVCUVk8MlsoMASs=;
	h=To:Subject:From:Message-Id:Date; b=PUQ8HPfqRnZs8fWjSpaQTOBmlfY8/VDWj0Sy9g+zYSPHJzum/VlFV6Ebnui40V+PyKN4+RB9PZaX1SvupXc+jGSpoFOrs2IsS/GHYWgXI/SzrSKcCOQNkrxAmVupoFLhyJi5GbnnkE5yPDfefqW7gAGjLfmVUtHei0XjNA6OIyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dC93UrnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dC93UrnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE353C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766725433;
	bh=x4H0eWhHFVM4Tmt2CgcLb2MRzADZpVCUVk8MlsoMASs=;
	h=To:Subject:From:Date:From;
	b=dC93UrnZqcowaMJEEUcYi9iHcXf3a92xZTejqJw40YvpMkhKlPZgK/ZNinMPULM0I
	 uCNR/YpFsy0MZsLVaBxqZTEwLHXQc05sM2IPHr2DXBd/nqk9KcNRTimh8cbbo+ZfpO
	 /X7VBS1JoDKOpRkZwmnlEHPNe1HZsC/Q6b6/F5CpnUgwkxH9tHjz0icnq11BZKwH3M
	 4uZbQalP1mB9JhBZMX+iiV6K67HvG7ZqTUGU+Na+SQZbL8YgcCtJbQRP1OtdJNin86
	 9hiZe/ZTusGgVr2VmGnPzXXsENDna4tOuqqgQ//vLsRF9OhCT3Cb6n0Ed9L1i07D7l
	 +bEEwdMIUKnHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A17DFE82CDE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672543363.14876.13129604785318810315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b38149ce9f52d087b248bebde0a8840a0a8f0187b2b456c96d0c809614e045
Date: Fri, 26 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766725433
