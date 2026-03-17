Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069682F0C62
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773755094; cv=none; b=LyYJ6fFoRPOF349W0RYB/3J+IbiK0SNOLM5Y/amYn3PkY/dhi8K6s1FLfqEtpGMRi9FMf0S1+nzbdDE2gt/Jm6/QSsQxByRaXOZf7u9Stg8e0zpdfOKbGVhDtuVvF24H2LFsWeIMxTmoCWI75LUewdTMxFdi/92ghogxKzvnyjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773755094; c=relaxed/simple;
	bh=yhBnnLmaUaUUNOuUnBHQSv9UuXza8n6s1AHv7Qx9UOg=;
	h=To:Subject:From:Message-Id:Date; b=WEeN/KKab3u1nM4wyEs/9uoht4J6II9v/pSPS1DA960t7CZrydmiSxza3e7oWOeKC8+mQXDqy9TBhBUdRzy6cPzszbuyQARD6ANlcluoV6bE/w1hcKazgNkN6vbuLfmBnRkeGbX7+kW5sbND39K3KPlAB728v4+RohVOa/vfC6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xm0Dvya4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xm0Dvya4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF41C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773755093;
	bh=yhBnnLmaUaUUNOuUnBHQSv9UuXza8n6s1AHv7Qx9UOg=;
	h=To:Subject:From:Date:From;
	b=Xm0Dvya4N0G/WsTFpMfwAPsOevAKpt/Y1BVWxEJhqkBYSZsH5zn5gcGPCbNpf99jt
	 wCJRxO5YCrgpbDg5ZTF3ixOa/kIGFUNKsUCKwK1mdjlu+iEJFDovS7HpSJ0ledYsG/
	 UEPaqwfWIwPfyPQs4WJsoUVOzuUifmLMS89TrxdfNAwwHpnBMQ/AYMwiMjTPs4vc8y
	 BmqoKrse6wWO3HhbKtaGrF6eMHukfww9Nq+rANMWaxu5BJ9O2oUXE5Xn++wN3BkYpO
	 n/8h4SEgDHOc04YCLXaXwWQbwYuFSkanMiqksDBwtRMzzngBDqFSaUm8yWE9l4cQtk
	 SBGplr7N9Ty8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F936FD8773
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375509358.12278.15693616679579742309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc2456d4a4359f15d6fdbe9419fba74fba228d46d9b432d1d76211a860779f4
Date: Tue, 17 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773755093
