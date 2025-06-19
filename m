Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242BD3085D7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750321194; cv=none; b=qoAQf8WzBszQqo06alkt8Sfp+alnQl0ta8nettAJKpVhnhOmfTSIoYFc2azSpXq0/MCfnqb+ywANKjQkq1GAHtqCuvoLxbAtXIWFZsAWxTU5lA3idH2Jx4AIhDgeutvXzU6Vhpu5H7ipXnd1efEZl4ndoqLbJimiD8XkZ3U7eJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750321194; c=relaxed/simple;
	bh=vGjNk9gibcy8Lj+cnhvZGyrV1+7wQhhbUlASCpkKy3g=;
	h=To:Subject:From:Message-Id:Date; b=KFVJcbRVLirtqS9GZKip/D8yLRjF74v0loXQQUT7gp9LIZ20AoTU06y9ZMj99M3tclM280uKom0BN6op6E4jkNinjSxlaNgRiB8+2E1/NBsFeDvxjp8jggghb3s2MhSXiVKpbBO2clCvG7fbjm77XtF40i2JZkPVC0PHbI6KKXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gc5CcgFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gc5CcgFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F68AC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750321193;
	bh=vGjNk9gibcy8Lj+cnhvZGyrV1+7wQhhbUlASCpkKy3g=;
	h=To:Subject:From:Date:From;
	b=gc5CcgFTUCQOPyilEQPlBbzIkFkBSeS2Egi9BJxOborvEbRrH8kGmkWo14hioVrhh
	 6xdn0BPybnFGUvfjvoXQb8IFPIvNF3slEvjyyRsZ6TjKybawg3Wk9U/ECVnrKrzmxt
	 5Ce3g+Cax4unVHmKOnRQBPHAJlbwF946T0rxxgOLdlHudQUGXy/aSZFwAJ+WaNDM47
	 F+FE/KOKeI3q840lhhsHvZ0WfdrBL9vSiGTnqckZJLv87ZU/zjdTvIpNOTz+Eb/AWe
	 1mE6O2g/5Rd5DOmX2clVcvxv0mjut+ufAkL8nnDoaM0elOd1S9kgGFdMIBCjrRbob8
	 rexEuU0IlD5jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC4AC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032119357.14595.10107908230033210294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e650f9b849690e1870b0e89ccb4d2d5afa0d3f96e86a18b937f027a4e948d1c
Date: Thu, 19 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750321193
