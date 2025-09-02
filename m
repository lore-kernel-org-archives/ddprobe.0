Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DA726AA93
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756852194; cv=none; b=kAHSc/xDMFciiSr5QH7WR2+vClIKD6XSO9kJ7ysUL87+55Ip/6ywVc5E9oWI1cgPNoud85pL5eKk0AMcbj8xaewFh54gg1S9b+VuXqhSKGbL8zB9oYGrlJPmGEC0yubAm20wFibpatZ/63jOORX8uRniPMnv6xkJQ1cjGaP6JJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756852194; c=relaxed/simple;
	bh=VQE/mmzEGE58FJ5TJ/9hBCfPyQwT/iZ2JRbsxQVx78c=;
	h=To:Subject:From:Message-Id:Date; b=sUjeH6Pc+5vAU4tNMFrLbqaJx2nejow3461eC/UWchCMgG4688sdwalXpZep93HCyEtjcjl1uqdWgPnDVOYEpWR57YAOKwieVAiyExfHYMHyZR5hSSzUecDmLsf1x00RKoDlvvH4fcttqitOoZYbdVQZe3XXUuPTViXTphAtXo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHB3MoLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHB3MoLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BD5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756852193;
	bh=VQE/mmzEGE58FJ5TJ/9hBCfPyQwT/iZ2JRbsxQVx78c=;
	h=To:Subject:From:Date:From;
	b=PHB3MoLY6bEMCB6pHO4uaRUTIPoIxEaq4i176I075W1TrSLzC0wNOH912JZTV08ig
	 vgwVb3tg+jqE9tlwh7Sm7IWuAhoDWjwbF5K5hPbEqtrQCDilcW+BJ7znBnNMpqt+/5
	 v8DeZ75ORt3xMcnBW4P+bUjt34ftLzAxYnlK4pg/Jmgai+NXPN1AQQq/AniIL9+m+2
	 4bqoF8befJVpTodSLDTRFyeoOBovMBINY5wAbqdV1wyDNJVJ6SAfOokrmjI++AI0uI
	 eyFrKBqZyqMz9uMJX4gH+z5B1SaL7SiuSPEv6drFCV2YuUPgaZ6e2eAc7E9dij7BVK
	 XI/rvw2CxXUEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA0BCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685219357.26719.39286804471420524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f6e6a12232f0ef54d61b815aa27cf552575bcfee24579cd60426127b804e69
Date: Tue, 02 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756852193
