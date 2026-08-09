Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533D232FA2E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786282234; cv=none; b=M2qRWvkW3uBYOGOJ1SCd/VpzW9pKOV0S5siU7Fb09l6aa5T736uPKzMQKrEj4pWRyjkxt0mQSkAatfShzZez7i7dra+Ba4LmiIqAeC4O4djwoIhG1QVSk4N3s6VncsUc+WJ0rj7pWw4S6QzyD7XHPH/NvAWGsXRWjvbjYFikvE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786282234; c=relaxed/simple;
	bh=h/1E/USIaaegx/q+cE4roxfuPfB030zhqTnsY9XFziI=;
	h=To:Subject:From:Message-Id:Date; b=fv4sgaNDw7NF7JFriaARMZwH8TG1wEN/6+O5BmmsuooibHOMaqJumdzA/RQ1KPlMgTQd2/EvNZ2uzq+bkIHIw6H9GicUzTjYLCkF2seTO7PPE2epPlBcSk9UZpPknCAO9F9YwcBEVaBC7gIpcICunZJd99PmzdFlRkSgETJ8/O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdPqCNm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdPqCNm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3970C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786282233;
	bh=h/1E/USIaaegx/q+cE4roxfuPfB030zhqTnsY9XFziI=;
	h=To:Subject:From:Date:From;
	b=kdPqCNm+OnEVLGXK8QYnvQy0ULQ28Fq3cHBjMJ/L5DV+NxPi7YRosgbmXWTqlKnyz
	 g4VrHLVeuoQ7vdXiV5UosuHxvcRONqbHwulHZjcV1YKTog2s63cA3PnbhnxuT3eN4x
	 VXJPtKQx/A1yXACZKRjU4DWvjkXb4Eb2bIeCVzKNoRfT6hKMy4dqmXrcOzgyj825AU
	 Fth3bgaq6cAnaW69gvY4akOU6dgGgI5VF59HwbjsYrNchOcMRXRPQim+N8NnT0b84A
	 x1bN0J1fyg5Gfb6j31JhktRpgBH07mcb+KT4dsI/9csDO3gpV8FOsm34LfPkTgUs4s
	 RBE6+UwcO3uzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08C3C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628223368.5870.9992904115186533413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fc8fa787b853487d410fadeca46e362b2e08ec7f1fde00643c55782c6182ec
Date: Sun, 09 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786282233
