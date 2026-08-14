Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B167446D2AA
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786713034; cv=none; b=h03gRji5NEf6ZMWSqeWfTt8Hp+UGvrm4fIn+wA+YXxh8TDvu2SuUgVONuuYVkKkxCyfLl/pdsxejJ3BThHCyD57AjNZfHrijB45TCiUcuHHmq3+1glPn0wJdnH+0ysgKBIOd6y7CgkgpqWJnZod6IMUG1gjjdkntephF4plj3ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786713034; c=relaxed/simple;
	bh=dc8vnTIbzHmPYTCYg8GpwjQEOj23pCBlUpyIcsiRpZQ=;
	h=To:Subject:From:Message-Id:Date; b=Lat1K+wJ4kADdFnlc55JSBHNxARyFhojPGZ7lkU5RPDa2T1Rmd/eRA2qsFLSY+yUd1yNRrIyA6Gi0UValyUTHqSNi4bContLa0PJe5N+u05AkXRFf0GtG6gp6m1rT2wxYl0AWd1o9CNm+Hh1m5CUiRhoSaWEvZVnjoPJz/3Ea6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u91c1JLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u91c1JLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4238C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786713033;
	bh=dc8vnTIbzHmPYTCYg8GpwjQEOj23pCBlUpyIcsiRpZQ=;
	h=To:Subject:From:Date:From;
	b=u91c1JLM22vqcnfycYT2ZBCo9+gItuFv9tQ8g6fpnEE/ESQJFqI9kUBasuY9b/bDW
	 9vtZeOklJlBtomREPfeyYUOnIVT39C0OeHfe/tkm87M3lck7aU23/VzC2UaRpwZx8R
	 jNo86AGpudF/K3t9/Je2bAGX6EhThWbCC1kcF7qYBgx5428n6OOQ9OUNKO1CinK41R
	 zUVJFV2UFC5wlnl92vbDAT0debP5u6y31T5pjVH0mDXpnLbH5LOkLgjn9WFsz6fKrR
	 4uO5OC7EsA3xrIKdpRipzBcY/cNwaJ7hdlIK3eOSOJKvbDD9rhg8L0iHz8nSe9OGox
	 JKPMVXG5YBuCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA5FC5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671303368.15866.3522769175684671851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54113e7397b313b7b6fc3c9428461c9604f16e1ee251e879267051f363897c4
Date: Fri, 14 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786713033
