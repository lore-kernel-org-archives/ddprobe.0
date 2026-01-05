Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD2C1D5178
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767656634; cv=none; b=UcIOdB7cXDUaw1l3ayenLdMqstHjMei0h697S+vm8eJzuEnOAjTV2q58yLkr7LEYLPl5omq9Pgb71zMAicLYqHoTiPCW+ekfKkAdgp9tix+jXIt1yhiL/vS15WTQK5WIZWI3JI2LTexvzPviWnFTh+CyJSgNxz5QVy+oV0bobys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767656634; c=relaxed/simple;
	bh=LWM1wUUZbvr/26JCycQwl1XxUXNPGin0mV+RBfxE50c=;
	h=To:Subject:From:Message-Id:Date; b=pWhZXL3hB0buP67oHLudQaRrit3P4DzXTLhpQgJeOdU3ULDPS1s6ts/367v3xOVqqNZm7CY0Uw1KpYxvvLobDBXkciOoBtsXBtzjHec4rCGXeaynpxdlC/24fW+3jFEOJtu976CtVHtomKJ9FfRRiKcnHeV6/46HP0tIIqy8hnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhcjGw8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhcjGw8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EB5C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767656633;
	bh=LWM1wUUZbvr/26JCycQwl1XxUXNPGin0mV+RBfxE50c=;
	h=To:Subject:From:Date:From;
	b=YhcjGw8gffDyVpzpQShUQc4LRdL/7umQCDQSf5SEiQzruLiCSLii8OXLOt2MUfDXk
	 /aF0eRqaWGxaAGNv8mFSxVB6ofx5ZpuGxiVhsHR9lUh9KXLcDit5kgrNUZaYxX1/jk
	 TMdbqf7dcW+fqkGxhFK1BM2TP8fKvU409MHX6AQnX3PLiHNyWNnNc36kcswpWtwLyH
	 CP3e66Jufyif5aqXjEOuKnE2z+PhOosmrPUbFj4lKhSejHgGQAW/0sDbd1ZRJqabY8
	 tBfDD1x8pn/zDG7Au/7owCJP44kwHsnP+DWHUt+5GDtYoBZEIje/9dF70WfbEIa0Z0
	 cIeUWjWouulag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92239CD0426
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765663358.8370.12842431664317034699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926e58edc971fa0c287ef9114e6228b502088cd6d665bab585da7fce3af11d81
Date: Mon, 05 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767656633
