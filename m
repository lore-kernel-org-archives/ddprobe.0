Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34408185B5F
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729363554; cv=none; b=r1EzJeTyfeEZdDOO3qv0t1gF4/sfWobuhi8YN3s78KRWv1oINsHsDm47nkwujbbBthwewSp5IQGNsFozKZgpSGtMAPQu1bgKXjtTkDY6o2qmn2sQNo9byBdZAG5YbR8spea+0o193tYhkP1WSCN5/xn63bkZzm0p+OMvYcgKZf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729363554; c=relaxed/simple;
	bh=VGkeObQlBm6cIhoR4v1MCsBVJMyukVrxuy1WjRNi0pI=;
	h=To:Subject:From:Message-Id:Date; b=STcX5Mz3Byv78jidUTAxb4VLI/HVFkrsMhn0/vYoRPU8B1EPGIFGZuHbUaCqyMcG8kRG/0XjygCzQF9lsKpsEGtL5YrU/pisfoXGwzXRvquFtPDy+LsMAcW9Tp6AGTmW9M0M4pTPscqCsesfrkAw86LXSrMfBV7455KRNI4L+3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWNVxHmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWNVxHmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC320C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729363553;
	bh=VGkeObQlBm6cIhoR4v1MCsBVJMyukVrxuy1WjRNi0pI=;
	h=To:Subject:From:Date:From;
	b=OWNVxHmWdPsB04PG1G8NCNoCLV+Xg6HzVksJNuukh6uILXMStGsd0kFyjHQMs1sDH
	 K48sKnY4zHV3YLw+OcMI+fQbnAmWLmqW0cQz+7ZmtnEfKZyLce39Sd/iF6GgxUQboR
	 mD4sEwD5G3txEso/8g3JqT3/RrZ9/ul2LdMIMtWOSHyNkdAJXBFK8wWH965JLmczQu
	 glVx8qKmGQxLMjb8MHX2Eg71ofmZHDfGyJdAfYc/qvCTrf1cOuciSBh9oYp5w/kSSk
	 TRkGpcpoj6BofXT04D7IvfGVt4t0eQstauKGYzUKdDnaoEWRc1o7VSAIXpyQFxWV+o
	 Y1ULSohVLwiTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9752AD3C926
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172936355360.31264.883265548354660902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c278e20292cf161133c40dd293d0496e9a8e7686a4a9baa8a096d2ca5acb36c
Date: Sat, 19 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729363553
