Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1570E17D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757552394; cv=none; b=DohYnT0XxxJmdcU/X2Ul/phNlRqElzCdp4+noMU9bVvPhcKKNQXc95hFJJNX2Ttz51Wuav8iF/CnrC5F7val2yjlMWU4x1wKMvJrvjxhPRPvN8vbHOvRzX6t6RetytfiFGoAiidAn5/5BDm++Zh3alT6/aNhUJFRoRdLE8saq4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757552394; c=relaxed/simple;
	bh=sM858gmEt4D5v2IGbcMfa2TVtV8TO5kppkwRAE+Aw0I=;
	h=To:Subject:From:Message-Id:Date; b=n2XkPzWVbrGI64FovFtdTioRRGnW6hwA3tD7OZfZKwZExBwHGoGM45VJomeSpAzkcjfSN48IKbOzp1Z5qkIMQo5YctHZndGxXgCycwRs/VZ2zwtz9SU5Lc9YeKcMdDxaQEN0ji4v/y3Ar66PWxRQUZgvNFQtgspK73aLokY4r3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExlqWmNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExlqWmNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FD1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757552393;
	bh=sM858gmEt4D5v2IGbcMfa2TVtV8TO5kppkwRAE+Aw0I=;
	h=To:Subject:From:Date:From;
	b=ExlqWmNVZlU/WDfdaNidP9dSA1qBsCLjxp7y2dByOhCSYGhKixJ+wYFT2HHv47Pkv
	 3sm0Ly553ilgD4fZXgDicsVaIESSeXQb/zR2NNW3XQ+B4tkUd6T/iAHRk2raVvnWyS
	 zZ7J7Y80MkxtkXxvaCJ2Em1mzXdmMmguByrULI9R+ggWl6gtky/yXQF9MvZSPM0CoO
	 xRVtNFPFQjmodjaKljbG1FI6C5aXvpn9jch3+bd7VG9VMjGnffoitP+9uN2hXYJnZ0
	 pZMu7rBxwIG64vQ21OxQSNm++G5he5AV4wr6du9DcXydn3AwaYORWIFDAvdZBsZDNw
	 fk60knBlKC/Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B12CA101F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755239358.20695.2546079457972000517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77478cca50f6b6ae8d48d6deab318f3d029893cb128fa52f52ad8cde2f42bfcf
Date: Thu, 11 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757552393
