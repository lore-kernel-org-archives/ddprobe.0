Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588B33FF896
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785922834; cv=none; b=HuDLKZpCnTEFazglAoymLt8hSb5jdsLDSpxG5g6HoU/HDQwDKe4EaHYzafGXyIC7YSlhiUM1489PPfwzv7KwPRx0OCVGjNT0+s/xPYLoMqp1SXIHvKzKZAABhxf9ZDmP9AVm1wSRUVg34lGEeP2yFlpU6XLyD3MD0cDSYGBTB74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785922834; c=relaxed/simple;
	bh=wLHS672uEnFvDY3hVKtPW2lcqiyZvGE4K79aTIPlR+4=;
	h=To:Subject:From:Message-Id:Date; b=YiW5G9WQd4XMn4K2oRU9ZS8/JCOKmt7UiX99dpfTeG6tn5OsdovMofejgBGUcAUXbeW7Tu0DQ0r+4sHh+SFInEV4tDQVoPNoEYwswRFIpMe5K0aU7WGvr/EQx4XfVWnl7tDrca4FKflecTf9Mkp2vgq+FTViwCfQAhyBhj1GOCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3BNNUbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3BNNUbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7186C2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785922833;
	bh=wLHS672uEnFvDY3hVKtPW2lcqiyZvGE4K79aTIPlR+4=;
	h=To:Subject:From:Date:From;
	b=Q3BNNUbzygr7ruUOxpseubaxc5u5+x+A87MA6cWOcG0XEftgS2ZfbrLfBGBsMsQuH
	 lqHUSZubJAQ/SlVopvMEHxlqJWJCPE6hmRxZn+C7HLKDwc/7nHrjIiUA3Imbuvzj5V
	 CB2x0gx4SlXFoG7zRhcimLqOKliP8z5SlRO5LoQ1/1K4PG4iTKkhaVQ6MeerP6qPMR
	 fnWW2EARn/uS7XFsk+DdV7ByGazwPi3xFhCPR8kVJcrZECx+ZWeTj2nAqU1LVjqT0U
	 /BClGHSxdTKOdUahM9cxIuMgs8NbpJGiarDVFMszUuIcbiHE5s6XMsttfYYiuaFNCj
	 klQv5aUOSkK5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B268AC55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592283371.18604.13716861701584374518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109f7f15527a772a372c94dd2c242344ed54593c2c4bdc8e599728fac7034075
Date: Wed, 05 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785922833
