Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446A42AF03
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742864994; cv=none; b=amPcYLhXzPFz8VXShUrFcamjmtwD4UQh/5FBTGiZJlEex/bIGh3tBxF8G445Smz3cjobWmsKMy1PtKaMgCtzQd43dDe5RVuqlBG3wqhUmwJInTjiZFSzeop17EENftauwHagPJoNg+3FVo4duh6U/XK/fS25S86Ms3Lq9QrlEac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742864994; c=relaxed/simple;
	bh=tCeW+TcTW9jwK/1RUkxJqHK2Il1n5dDyDDF/wTSiQkY=;
	h=To:Subject:From:Message-Id:Date; b=Kdi71WdB0ToCrlM5xnVdBFkhuvz+nMBqntoj2DagEjzmSRtLo1Te3q1QG5HStpzNgQSaowNZ0ZVw74yHKE2yr79uWvfB8S853Xy8KT/55Ra46wkwUGz+iHH/6he4RU1mN2RNSB9oH80F7xnJaY3AX6049MZr3vzgplhmzLqv6Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kerLA95X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kerLA95X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FD5C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742864993;
	bh=tCeW+TcTW9jwK/1RUkxJqHK2Il1n5dDyDDF/wTSiQkY=;
	h=To:Subject:From:Date:From;
	b=kerLA95XBCsSsflIEZMdqNF11Jm/KO/+a7WegfAYnmgglu02McPY5HQST3Vk8jpBv
	 l6OVaIeDQURx77TObP52MLwjnHjosIc0GxH3iN/4lMeqjtW4kvLKLTEDX8SwesUOo3
	 aVfId/Szj3Oxqt/7nkIANU4EGTEKxltVsrO93VXjosa8ULDOLrVsJXAs4ImXIQakBf
	 LGwPXVchTYYFwhYpL0i9MeSGtkoXaQEJZ9hsLUKe0cLC0xMQvUW9sIGEXfA/igodGe
	 IM0w2naN7AQ9s8qEKyq89mDBRH0qjbI/i0jFLZBf5MBJVic4+O3Sd6s5PCvtRTWflj
	 WjFdvEZqKVtFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950FEC36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286499360.7344.17035555257130650585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fcb1e6cc63f50658ee002e67afded00b105f5b240cc675dcb937ff474e8fba
Date: Tue, 25 Mar 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742864993
