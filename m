Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386AF31282F
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776811054; cv=none; b=dbS2HhwR/zTGXl7doBEccWqap0R9E0HumDDbX5gbIDsvvb+EscwLEnLM+8tZFNc9aeiG7Lvxwo5jP1vaRptU5sOd+VvM02sZi9Hsyp3scx3ztaTs3HHvbAz/biu47EkBWFFCd0LXI3quOdI7gzSr6dLVX8AfsSeuVslgER2Y4go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776811054; c=relaxed/simple;
	bh=URXHDjsXlMp+/1Ini8BD3eDIdlE+WrPaw3WEwOfF4BM=;
	h=To:Subject:From:Message-Id:Date; b=UTVL/POLLOm18O89J/1IB7lKrnpTB497OfVP+9fmW5PzkmGojzNVe7quqFtKojH0Wok6WFvnNseaDhYhrCYqKLBkONpVCrT+eYmgHKmbvJ9HS2fF9+p5W5Ow4F9Vh5p9mKBAlL+EiAS5zeut/qaFqtdTKpwQDomJob7XHMk9n6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQJLwnCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQJLwnCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD622C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776811053;
	bh=URXHDjsXlMp+/1Ini8BD3eDIdlE+WrPaw3WEwOfF4BM=;
	h=To:Subject:From:Date:From;
	b=gQJLwnCsNfk0nVEVO7F/f7Bcs0f3kvuxWYDnheYWbXyYnofIA52uzYVOlKIvyFAzS
	 dq0iatZ/umo/o7x0jBT2JvBUUdzOdvCcevpgnyzEkp8KGMSemmsZenEfMpo9L/Ojd4
	 prtmaomP69yR5ZAln+PIIxSOesu8hRggsCg1Ol71V0Zd1ZpldTCoOEftvEyEjrKYdn
	 udriD1JEWpScP9fAp7u7OATxfsDxqeB0iHYDpoUx6aH9fL76hsgd+WSN35lLHCTROX
	 oFnckNMLeUGq+5XGDmBSxjCoWlLJC9N/Bx8vckSEYlSZNQ9QER4qA9pDBf9VBOPv/7
	 NDB0dI/mLfhjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5FCF94CB4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681105368.19880.14980107561287305394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2cb0fc55735d3303ed29acca1aca565efcb875d414b4c892a1b87c1b837fe6
Date: Tue, 21 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776811053
