Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB6534B434
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773704094; cv=none; b=V326Z3bgWG5pX57aYzPCUKHWt8+eSV6rqC0FsYJJfe/g3v/hQoMyp7ErfzcByMheySIx6fvxpS92O0j0AHAIOYjaB+TJlRNTj/tihd+CaMlkbH+87vCUk1JO2wg8aXQ60Doi13+xIATzSh/1ZZB4NsvE0Ale9hzBGKnPyn5WWac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773704094; c=relaxed/simple;
	bh=oXuUVp9G+dIWvWjbbmAe/FesCVlyc/mgZzfyhJTuwUU=;
	h=To:Subject:From:Message-Id:Date; b=Ob+178TPcAsD1ZV9XHTTGBz7nH43H1pn28MLzgI4mv2tZ0FZleaXCPsJLZ/Ue8+3t1W2nFVLGpW9nhL3nrT/IM5Lp0I9rER/1QANISsEyJ74bTLzjed+45ElkW+zmHgnQMaVLcmZcAFQTDd/OnqVL34/hjSxrI9RDiyWdbibkkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJGe1y/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJGe1y/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0730C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773704093;
	bh=oXuUVp9G+dIWvWjbbmAe/FesCVlyc/mgZzfyhJTuwUU=;
	h=To:Subject:From:Date:From;
	b=gJGe1y/OAU4V0M53L4OY2vK6eHtgaGrmbLt4HFtWoooEs1MfIDcEQMw/AzEWSCt3i
	 TYWWVA0N0GsHz64cAKWyzpsgPH3LWow2B2VLRZNWHLDlA1Pa9a50vCV8CipRmuUaCl
	 jA9me7ce9C+05fMYeKafh/iFWFWROXu/HLMAQCjW2xjRBuFMc6dPS4915zAVtlHpFz
	 HCfVOgWp7YtzGhE2Ti7Ja0wGrrvYW9Yt3xs2aexZGu1ZO9TmJPZ0NKLS+5tq06pflL
	 yCU756y92b6TloA0UZcH1g3XKcQLNiLCeCQsquKEJVCuGiR87eWbV111Al/mhZXN0A
	 u7rUiFHWHi5tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F716FB5E8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370409357.1129.17864948296311623220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d142a3185cd5923c41d9ac4915d4f56ce1578fcb23b439052a1eba3b3c0040fb
Date: Mon, 16 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773704093
