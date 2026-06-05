Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B47199385
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780694074; cv=none; b=UIzQW55dpdF6xhPDNxbo8MN7pdrW6YoBbUVQuxonIgMWdSlJX5w/IgNobSpbu2FF0lqgu2B4X5Hjdw2DMbbuvDF/SkxKJnb9JquhqU+ZPniozJK5n2FrBgmrzQQKhVJKL32ktun6TKtR9YC6A/X97RAm27GE5cy4esNmXaGCqT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780694074; c=relaxed/simple;
	bh=uEzkR7GFA1tKpGnDUCrtYEr18Y25U4mm/dUo6rywKEs=;
	h=To:Subject:From:Message-Id:Date; b=u8hph7NztGK3SoQitdndNMrIyZUcflralY+zFk7hMdBrZTAMLSKpDCpX5aNeCUL7QCYNCK8Vs7gKdhc43XVlA1Lm9EfwczOHtvhshrF4sn5HghpWkkEZOYLqatKIFIHZh4GDAiIEnELHWz8mTfExeOTmQ9tSKTYJx9/cwCqIMCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhWSEHIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhWSEHIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCBFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780694073;
	bh=uEzkR7GFA1tKpGnDUCrtYEr18Y25U4mm/dUo6rywKEs=;
	h=To:Subject:From:Date:From;
	b=MhWSEHIV2vaTvVAMSbPVcPukslm7lvOHEVAqF67VHkbmKsg2ZHJ9JImaixiX95aQ8
	 Qfgw1Wd/y2qF+VU0bJZdvIDQ79T2VML6qDfQhQtxbbwM+GO/6cT1V1kRUlm1yeSLvt
	 7K4AWTIwK7jhx6sZlNBZs6fQWa/xzjqvVMoC4sSUCObbtMyb0+i95naqJlQHS5um+6
	 hsWcS6EZ24RP/lJOWU+XPO11Oc+jPYTnoD43UqQJH0cVfZ7ymEIc3u6DXcpDL7rGtJ
	 njrQ6ZX7iFUzFe27BLqf+gi9ztzYLbaAjK5h3No0ty2QTkXLASLNS2nEFEQjVZp6m/
	 A3ZSXma8LIMdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28D0CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069407369.23089.12689648546787732453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ba3c52613af27a2b5680592c57d8d7580679e5ec685270060c477cd859d387
Date: Fri, 05 Jun 2026 21:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780694073
