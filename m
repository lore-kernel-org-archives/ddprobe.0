Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C0421325A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748461194; cv=none; b=Vm8b7txF7hJxXbHhXr36X+g8f12Ivw6q6XhZELzDeG0finAHACDXNyPB63WmtjA/J303TJr46CXij3s+2i8SPDrMGXLbQ3vb+g9ASjDVmEItCoay+UU3FcyQlKE91Sku2UJQMWgopYJzFXn6hjDtEEDveEN9FZTZ4Pq45YSOLNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748461194; c=relaxed/simple;
	bh=kr8KAkjP7eBQz/qsE4sisLz1386fcZsdcns2J4KABro=;
	h=To:Subject:From:Message-Id:Date; b=A0TKE1l3Aax/+eq4uzpLX41a3ZoWIPskqwpR16FuRl5rcNZqm26RzBuj2v3mBI+EwJUZcUzQtDcNP4OslScIwMaXxTJ9v0oOdHRwEl9wqXyWMp7CVsymmvBb8gXgBPKelpMYgJtFkSJ8rCpd1PG6UHVSO2w+UsMG8++U/t7+nh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXlHjtyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXlHjtyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4674C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748461193;
	bh=kr8KAkjP7eBQz/qsE4sisLz1386fcZsdcns2J4KABro=;
	h=To:Subject:From:Date:From;
	b=pXlHjtyrHjHDfMlpxT5FhSIK/lZDzbqlBroiljfHE2bioVCvEQ3kaANZ2fBo2e1YQ
	 Mu38Ub31ooBNCFCZHfuUhKnQ53AnjVRmnsvrAe8eLq2BsmG9MTfxGy94alsXITjxwV
	 ZpPN544EmnuBn0vwuuDWpTl3cyoW8QDweEbdinRuCperS+hfn07EJG/58O0Ey91kVz
	 WCK9c/EUF07pXTkPSQuR5Kntv+MVAeCBa6s7EFlT7X8X9SNlqfewzvzSIy/QPyiphR
	 wAJnBTnaTIOkC7VmDUKaiNq+NZzigg0NqZ2as3B4nYTo3nXLBsacTYyuwCHMuPgVGF
	 KXmih7zt+MMng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C4C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846119358.27801.8201092659267190019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6634ba4c2d76ec167909d5aa44ce2846c39b7f01b5bc5637d570df7ab27141c
Date: Wed, 28 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748461193
