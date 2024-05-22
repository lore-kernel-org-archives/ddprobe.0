Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4A21103
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 05:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716356003; cv=none; b=k7ZY+LTXz1Racu+mxh32zt49ANOD11fVSji3vHgczJfi6rVVR3HkCgoI1eDTGm0H0tGIJ4bynN5PL85DddGGJbKZDXKokJvl3AbCfhe1gKy8u2XwhWT8QOnCIhSMgIuc/WSR/D9HzD3JXCKLL+/uoiKtSNc6fxbuOox4yZOPjz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716356003; c=relaxed/simple;
	bh=veBOTb2rF5wd2j0d9Qwjz7VsoIA30bqas3KMR1ZoWrk=;
	h=To:Subject:From:Message-Id:Date; b=aMvbPDAQzydLtrCRqK306inIzfQkoBSsxUJ/X+gvmcjzZGkjvaF6rPcsobFBd6tyfLNqrlJTjCHU1vPR7g/UplqeE1QjwtSDXhHblVpo8whimHar5xV47qcmkp3D0t2fY9K1APf0nmkzTQf92GqNbl/AFw4V4RTF090xQyTmiq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLvbP2sG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLvbP2sG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCD0C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 05:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716356002;
	bh=veBOTb2rF5wd2j0d9Qwjz7VsoIA30bqas3KMR1ZoWrk=;
	h=To:Subject:From:Date:From;
	b=dLvbP2sGOxPOG9qp/M+/FgQdq+yK4GbUyUG9m83pUiIlolvYZrnNMTrAblpsvuiN9
	 e+vpzrOn88Y8dL+hXrlEuQktwgievgHCWmVMxACZze6ktKF4Wy2jxeO2i+PVthOQyt
	 BqxK92FYow6QYDqVD4yfOpa9f9rN0GH8ZfTUNaypzXFccn5PCz8Lye8TiYEuSjqSS5
	 1T6a9IKnzkr6zMcLeMDmQCisJnDWNqTfJfHmnvDHAjIMRlg9yyciVBv+ssW81Qv0yo
	 yrfmTrVEebbynovnq3BnaFiB1TuGa4GzdG1SJCotFG7R0WKXl/PkI0QTna0ff8ygJK
	 1UYUsd1Oa3g6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36ACC25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 05:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171635600276.17583.3237355678342501354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f891150b805586a78ec55c44f4a9e5b26593ed3ae1b17e3eb0d6ac1549c13f2d
Date: Wed, 22 May 2024 05:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716356002
