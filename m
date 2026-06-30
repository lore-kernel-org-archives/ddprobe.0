Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295EF31F997
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782856114; cv=none; b=kK/tkUoMC3igeTlwyR4oLVQ3CarzqhWAPWcNsJDZkGWMyW2N4A12biGTHw8WsSBP2FT2HpXZY9kTABpNe1U6E6K877LMUqVUzG8nm1meytKmDlOmDRRfPOSvFDkVz8UquGzwZRpwBxl+iUfYhifkt+Ru3GJpWQ4ZO15S9VGNIXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782856114; c=relaxed/simple;
	bh=AebGJc53Iolrp0zXHD+ZxGvoW83qM2o4eq5OUFez7LM=;
	h=To:Subject:From:Message-Id:Date; b=agHzQJOgWrl1cIlLpTIZyJ93y2VXT2JlKTHzXm7C/Mgh6l/sMQ0oU0r1wyZb95vCJVhITWWQhWvo7BpmwQGe+LVPCTjwS/aGMrqNF4H1OVWbESAzJqpBEeqr5AOZ/Nyetj/MLBNUhKZxurRHRuER3yHt3PRPEBpGsesafEkGbD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHDo6/B6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHDo6/B6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0077C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782856113;
	bh=AebGJc53Iolrp0zXHD+ZxGvoW83qM2o4eq5OUFez7LM=;
	h=To:Subject:From:Date:From;
	b=JHDo6/B68GJsjNxl/iZXMPfXfFMoYeyYufrN1kXW/yARHQz8p8VYq7bRhB6q3m1wf
	 MW+cYjnPy+RygmAQfWS9a5d6dm3O2S/rD0Go7DntVUMv2nayPtFpLOdefjuH1vPRC/
	 jSaLYL46I0TKNQwnrC6HI9GZU0DDgwecA2nYYEwsshFBce4AdKjQD95p7kwZy0t5NJ
	 MxueP+uOJC23R92118H4RwRFUnZ9stHO8kEZ2w+uY4rBGTAYdT894j4xjfZhxDErTb
	 79MDlwRf0n/GXwC/y726pZdn851W+aQsOLaUmYaJVtbJ8zcZIQeADH5CeS2tWeZG23
	 hFDINrM9KvpPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B9C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285611368.13114.12941967942842736556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140d3fcbf0f398be72dfe68d4b205f167065f50ba2be38c39ff2511eea23a43c
Date: Tue, 30 Jun 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782856113
