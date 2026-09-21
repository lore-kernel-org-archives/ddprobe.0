Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D24D489FCF
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790000434; cv=none; b=YHolEkORx/1vEJNEn/d3o+kSCrWscZBTsvwn4+BZo74r8VwdeMDVofGJ95wTpxrgoCh6GwaIbwyXVrvIphfiJUaV1lQQAC40RWOdqaHcjo5Jtrk97nJnB3UwsKs6krp6PAZN4FPfZCp7IG3VOdroaBIXT7bbE47hJnlhX7QWOJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790000434; c=relaxed/simple;
	bh=jHLTIhzswTRCxabaH6zajBpK72OSp4mJTipqLvufCIA=;
	h=To:Subject:From:Message-Id:Date; b=MD3cYddbgrcCclk/nITGvXusUor89rEHseWKs2CAJ6QSVpIigrgcgPbEw2WJVbGWL8wTA43oPonUaV2Ft1EIFoSdl3mhd3PRt5WHqIZNBMNuuVZ4erB4nqvy0sZzgcnKb0yIjJPKRsjwOwy/CFOrU/ge+WfJLOi7Br/rjlClNJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLEgjJLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLEgjJLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EF3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790000433;
	bh=jHLTIhzswTRCxabaH6zajBpK72OSp4mJTipqLvufCIA=;
	h=To:Subject:From:Date:From;
	b=pLEgjJLJ0E5x3BtQcNphNo8gXg4LAQ/4+v/t2sJUUKBFTqRrZND5JxfN01oRVucFR
	 a99dq0Nak0bomj8DkKwBMMZkjAWQ5UXiVx7PLB8YrZQuMorays1KI0Ry8RGM6qvzIN
	 Rnfp0jkG2XoKo+xg5CVxrNx+ciVhWn5MeDjYJ+/dtGo2J0a5ok2OtbLTYEdpWqvbA3
	 KBsIV8Oj3Ze1t2YT6BzflurbxTXrc7j5PTDKZvgzKZBGQnUWGLYVDfndyv7B4QnnFb
	 /YGn7//DBjM2UiBNQKSLensg4UtbgSGNHUgvMTbYdVO0O6cytdlVTcIP1qRDHEDezU
	 x/nVo09RXt3rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD272C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000043369.12341.13593426666617071912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849f573764b107999049eb47200676ab7bdf27920918c6d1a9822cce26b9b5e8
Date: Mon, 21 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790000433
