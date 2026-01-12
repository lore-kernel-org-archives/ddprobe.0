Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9F0280324
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768250634; cv=none; b=CUxQzj9Yvpt8LIkmknhV9lmm6fMs2ofar/weJdL/K38zha+CaY0be0BrdnuuqwDvZeoZnLwCbejtslXxift8gxnoGvY61OSbKyxrbpl+izDsJlf19q64NWZwd6F7F3sOUvQ4RN7Qf6+KAJjaM+j4h5vXRKSkJEbIM2s/1lhWGjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768250634; c=relaxed/simple;
	bh=DeuoY+ULkwYKTHQLwXebMYlqU0mgG8UtGNSYtUIVnEY=;
	h=To:Subject:From:Message-Id:Date; b=AIWKyd9TSOdhuixRVPOI2BROaT1VCOsiCL6Qu5Qr0fckgx8h1BjfRQ9ij2ISNwUpi7O/WfCtaFoqV7J9eips+tnLVW2F5PGtm6yIyqwY5ZFv4Y/TmwcJ1N2lnxBG0NcwSH2CaaZKPMrUCcTlpyigOYnrqGeWBaTnDm6N4SLtLvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CH7Bk4/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CH7Bk4/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F86C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768250633;
	bh=DeuoY+ULkwYKTHQLwXebMYlqU0mgG8UtGNSYtUIVnEY=;
	h=To:Subject:From:Date:From;
	b=CH7Bk4/R/nsrhDRxoyQ6DRXNuZUzsNoPxsZRsDo3KFThe7wvPDGnxORcU/galVuvi
	 sNf7PCZOXucSlgzB0TdgSByIQA4KjeRDqqnQt6bZobebW/pkGFFoy+8gudyYmvYSti
	 yZA1MwsUgkkpbyQN/Yx6pF1vyjpiy6WSLueOjkzc/UI+LvSLyuUX1E7sXuNTf05gb2
	 Bp2qFUofwlVUihpafifAmuINhr+BRlneix7y0BbBle7vupFV4uF09s0lX0lqCrzTUL
	 masn6hvG/GMr6Ev9HBdqhRPr0fho2TDoQibSW9EzRvyIDva5mzBzm/VKB8ELkRELV0
	 QGZ9Rqqo8o6Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E9ACF45C8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825063358.26619.17523492955397897382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18933b4ae154896627418c29d49ea218b3d9dccd2d2508a14f9b7622c431793
Date: Mon, 12 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768250633
