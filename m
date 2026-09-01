Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55426390614
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788298834; cv=none; b=lBMRMM4rWjQzZrDeGq7Yj+Zgt1FCrXr2knL+x3LDSqD5AWFFVCKOg9nvebZ5Y5pUL+143Ke8e/iqQpgGm+xXSEbaSd52grSdOrMS37bfsafEnnXdYXX1Z/9aw3C3UVGc+GylGsnQndhCtqX8ia+I8yxGN3htEmp9JZ7betIrk5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788298834; c=relaxed/simple;
	bh=OkGOyWSPbc7pNNjIjcQkzAXAh41oS6NFla3RJ+bCeA8=;
	h=To:Subject:From:Message-Id:Date; b=vB74ISqqJ8hoWrEuYx+qXQd6HJvAclGgsTPgmkFLwIxPFyMQ+roObKkfeOuuX2+WB3a6FC4hub3/Y3oBQEceyQYE7xVPjk/XgX1PxaOV2MICsYMf1SbwIeAPnyY9P5gWwRqR+oeV1QYfSZWZkAqkMlvyFU6T3AhRfsQMsgRlTJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTTa4BF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTTa4BF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E3FC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788298833;
	bh=OkGOyWSPbc7pNNjIjcQkzAXAh41oS6NFla3RJ+bCeA8=;
	h=To:Subject:From:Date:From;
	b=uTTa4BF6ijaCrlRyEFszup/DebAFLF8JUhppIt/tWpboAD+rdUkyCcg2cYnv0fyfd
	 nfYSGW/VIlQX93hP4JxSFP53qySgis1HAnGKNlMd84E94Y4JOw4nSanQDG9q/2G+6I
	 h8EUzPILh9N1dcI/OaLHs1a8D7D7jtK67agOoIEZsXCFqMu9tiXlQM4KgltZdOoBYn
	 QEHz58Avi+Cs6vxpVQwtNccLRV4oqJSP4xK17SPEJdbKNZ3PmfKXOUhI66QJumP6wG
	 dUidDRfWvhfbxBnIbdVX0+3jcwEBxwXsNNUrPxzeYe6fpbcsMQyd9KtcmO5GG7+smv
	 8E/zy64eumPNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD255C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829883369.16999.2033202142959656617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504fc1730e528020dd08b7f8aac8886d4a3f77212819de9fd68678b2a3b6795b
Date: Tue, 01 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788298833
