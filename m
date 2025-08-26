Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1603122083
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756234194; cv=none; b=ToM4ay5TE6DFslkah41ovhorRPaAPfPqiI3u97J2L/UqC7f40EUfBefYvcVjLUGMbTH2PqfuLUWYI3jvuH2evCFR8B39oj8wUDZ/2AWP/DjxndpDvqzZIummH4Ygz4TShsdludVA7r5p2DifApQ3tRuU0hmcyGAixIDVAsPf24k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756234194; c=relaxed/simple;
	bh=L8/XwbmmRX1QyuEw7RxKq1GRWvo0jNyTm6vEOJL+aYE=;
	h=To:Subject:From:Message-Id:Date; b=MbBW32b2kddyWlaaoudnDNwFjIU5mEtK9BKaByiNgiF2+80V9sriMeGKb0AFbZnwIISgoE4nBFHU85n9K56lP9fVm4+ZpQFALa2fH1r+Hw2WVN278LPmyNlHZFgpkci+k5u1BPFArScq0nLy73O0VrLHwLIdZJCcZYWCLWsBh9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/6bAvqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/6bAvqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDD8C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756234193;
	bh=L8/XwbmmRX1QyuEw7RxKq1GRWvo0jNyTm6vEOJL+aYE=;
	h=To:Subject:From:Date:From;
	b=W/6bAvqoEoWpr/p4cx+Hwr4O5rk153AI79vD7mnjzHnEJ7FCW0OIPz5wO75opRvx+
	 ft4JCfQzSrE/vXPwFHAc0csIubsc7dNZuGYyzmZNKh4Hev0L2vR8p6+ErIaygHgW3B
	 JoXL9XlvypH46z7GMa3oSpjVGwwEdVrDdhElAF44eymtm+GJYf0FpCqD382L6I3C0Z
	 kDa+XfrgVL3BCeogpPWgwc58SIAJe6YaRkcw9ihX+MaJPNHzjRz6eDMrHPp8E1ciFb
	 WPFOInJzClGMRo487OqNbHUuT8yuEJ6BNN7wnNzLrk8ktFvDut/uKCkzWLys1Y2hnO
	 1THAdAurhgF6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7ACA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623419357.13704.12780380368100480081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b8d794c65f240d45b1ab0268311b7eb5370f38b254af44224167461ec6ac18
Date: Tue, 26 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756234193
