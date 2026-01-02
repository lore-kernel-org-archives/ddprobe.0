Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F32288514
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767397434; cv=none; b=LzgF7WRxpcNBBYuwFtJDA9i7qk1eELbDHtWSu3JqNXkDXdJ4vVEx8wdH2KmCWUAVGzhlh0vREfECdM9cgg7ZBT5VxWWnn04l5fmoOy9snVrw7+m87wehierMXdJz3hj5TjZu0Yc8s8Lrr+xcxwIqLCBtpBlOrm0JdRVFEFlhpkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767397434; c=relaxed/simple;
	bh=b7iAgDB8nP3NXBvf2UPzYpFLixlOFFnTjaPKTa8Unmg=;
	h=To:Subject:From:Message-Id:Date; b=t4pu8dTPn8rlNCQJChGQpVueZ3n7eupTmIkzj34/gPyYpYsWXH59ysr4VBPjO4X7Ikp62/OQzV8TnvYH/3IYasdETWLWMPKYvAn53px6k0F3g4VIfAF5w/+GCl7njvHCSmktFXPqcFfdJtBJw0OjaR70RLJSV4rQUyv63sEnaOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imOYAlz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imOYAlz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A527CC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767397433;
	bh=b7iAgDB8nP3NXBvf2UPzYpFLixlOFFnTjaPKTa8Unmg=;
	h=To:Subject:From:Date:From;
	b=imOYAlz88Rg9ZBqlrXmU8/p6+LSu3UKcv8eQt5lu++Qg2ilYEwZOa+t0+RKFahq6v
	 zE6bji704Yx6baR5f6dUVY/UV+KpvtUPvXcWGy7IxIhVI/pPBrRirqimEOXS8lW+8R
	 IgnAYFeB9ylyqUFNXgiM24e8v+ZvdKctCi77sxC4mQ6Kg+ZFbYy45FRWxbZHMpr/Jx
	 xEYPMe/5EHWVJX0gXEKfp7p8Tp/r1LB5Y6L6KvNnHu6WPC9aYcqs/+WojdkzVuMhNd
	 TaMl3jb1wyjD2rOgSGb4FjlwFmea6xstgi9Elv/M43UyXuY4TCU5pv/qN6dNJqDpuZ
	 LEJhIiMjSu9ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EDFFA3727
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739743357.4025.8604474267069501084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0fad43d99e1f6fd84cbc4d98b63440769c8ec91e4f4e704d626283aba24d550
Date: Fri, 02 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767397433
