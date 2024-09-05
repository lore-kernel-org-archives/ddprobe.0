Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AE3189518
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725542154; cv=none; b=cYXpbto68LndcNcVAsD57rZ7798pAx9LjdhYZN+hpF2Dtg2Le73xcxl9Le0t5F4sLUpDRNQDfE4C2pTFmCQ60NDTTYatHWYq0Nh5w/UKbaTk48iifgSbExUHKQdGzsbzNbJIl51Xz+wyJ9PXQzFr8BtWimvhSpFdynr6F2U8SJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725542154; c=relaxed/simple;
	bh=1y47Kb7P4ewmgtSWyiN7ib8p/R1RwKjJ9uPeRp7+yJY=;
	h=To:Subject:From:Message-Id:Date; b=MzKnEuHh2Py0asjc4/0dS+iUEt4f+la6I3pV+NXxqiX3X8F/Hk/I7a4n1JwKzNt3xInAO80laEiazgJNnOOnNskj4T+4+sKqyjr3KIu3cgveDgdcm3Iag8St1RHFjnZY19pc/QcNmgDUl7d8DZ1D3mz+8J7zPAcWHNZeOWHeEDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIbyjfba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIbyjfba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AEBC4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725542153;
	bh=1y47Kb7P4ewmgtSWyiN7ib8p/R1RwKjJ9uPeRp7+yJY=;
	h=To:Subject:From:Date:From;
	b=FIbyjfba6hFb1WJhXXGtMLYZrv8bv1N/F20BBFxEUbqWIf3LMkYIBxBpb8y97+jqV
	 QfU5m9Obek4vNbhzYPbJ/bes/ruYbDjsUI346+f5kQYHK9KYXlQbuELwSTO0ZScVVd
	 4ZwqPep5fPMGDV3hH/hlC+4PBL3irRn1E+1avvpFm/TaMEqu5U0YrQDv56oR6ipiSK
	 FuwX6pPvZz5Lib29pv68XMBX95vnRo6QL9i4vTg1myBki0CFFhzxFEhGqn2L4Pc4lJ
	 JcnSEn3bHm4mvH3vK9BsR4wYkgzuoNfKHns2ASJ6gTofxMWi1O75BMz4I54c3N7ybb
	 KLmEhD3wFRnrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F792CD5BC0
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172554215358.17074.9929470996414787228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4ef2cdcea438b83cd4e9c2737dfcef895cfa74df54d9a6e3123fc765785ec3
Date: Thu, 05 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725542153
