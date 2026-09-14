Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AD6448B87
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789397434; cv=none; b=HToAQFfq9GcHeyj1lekOVmacHYAC7a9ug7+lrSNwI75+NKRI+5GCfL8xUDLfykAYpbPDHB7K9bG63Ev9sgVXu00UjrgdhBTujOVrZTdNDAimV4rcEOw+BLEgKNDAOLNW7oibr4lzdI1cvISGETi01RkBKYkPCWyP7Tlg/50ZZQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789397434; c=relaxed/simple;
	bh=uDJ5RZoFPKVYMWNb1rwSLtAk08PzORD/uRY/hQtziXY=;
	h=To:Subject:From:Message-Id:Date; b=tXqHJGMcjk5heFlBIisKs+NqaHqmbKkL/5mvF7YBvkmkJa8QN1nFPtoemL2vAUotvKqoZjIqRoAcAfQhzHQ+Aurw2UniwPhsgRJSCKo8m8g93wAC3qMLg8zKNaBz8kuSraTXJMOAs/W/PxsfNjexMZx1hu1LhE81XhZS2qP0Z1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsw/fDfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsw/fDfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35F0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789397433;
	bh=uDJ5RZoFPKVYMWNb1rwSLtAk08PzORD/uRY/hQtziXY=;
	h=To:Subject:From:Date:From;
	b=lsw/fDfbWOfv/vnh7h7TffWPmShbIfcEW2uCoofS8ZVsJf2GK9T4CidwrLbygCN5Q
	 Umip8C7yCBOcbeLQwu2J9VGswBByBMtKpgQyYXRD75tekBDrFRlNklMxfZfyyOSO+E
	 bEypKVZYDbdimd0vuBwykHBhHIR8CQd8SKlYTSlpga5wOQ3jgvQL+Iqqz2CbaT0C2T
	 Txrp7wErnhBb3nIqVy1YD33Sb1Xde2WBRMGR1irTdfnN4Re0hF9f49ib//3MhSGiL9
	 GLkCHG0aj9SnqO2gd/fJx/FR3Icb3TpXyY8kuP6+/S2LMBjNJ5ZhYtbyKypNKjD9DE
	 C5ihJBMjWdz/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B125DC88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939743371.4041.3138773465796492051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbdad91732f991286f4a8137f7b4b2dbaaf20206ba28ec0fde9a2910e7016383
Date: Mon, 14 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789397433
