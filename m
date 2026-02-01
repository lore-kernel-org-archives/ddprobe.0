Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6B826B756
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769964234; cv=none; b=ubqA4ss/+nroveuS1CjrqoqaFfnBypI7Kn3usPKgr/cahnFvjq4xGLcqo/vZNgp8VwuhfAyeCOpW00nczorH9igYib5dAT3WeDY0LxO/fb4gudL+0kppqTVzYUzvRGmzQliu6Q/VN19HTaDCJ0Id0QHQe2X+v0WK1iWb08gV1b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769964234; c=relaxed/simple;
	bh=xVgSdSZEoCq1gtG14Ig1qFscKq43aKBsfozZkQta2vE=;
	h=To:Subject:From:Message-Id:Date; b=fVMK+koZUtnsVjhnnf2L0D7WJa+fLhyfiCeLnOz16PCgDzZ0O3GDSGJBq+YuohfuaiB/NMz6ISnvNWMwLXBIHZmWQdhZSLzToxKJovfwDSsPwoTtKoeNR9dp5DMd3/2XfhKDMRjMde8k0kqylL7sKUTReOKV6tEIIzxmg0p77lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8fGFN3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8fGFN3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB043C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769964233;
	bh=xVgSdSZEoCq1gtG14Ig1qFscKq43aKBsfozZkQta2vE=;
	h=To:Subject:From:Date:From;
	b=W8fGFN3LgrzAsXaVtW5FAhLPbk3Ma2S1DvfatFUJ6dh3sQxJW6HqJncsax3ulzqiR
	 uQhdbxcyyrSjfgjjZn9YBvszBdelGvtKscRBVs4jVH4qCRDUwCvSZc6fN3XQMaONfl
	 RkRjCX/nE3qeQnstJ8kcWIyfpfEh6XWqzykw31wqZMrhUxLkfXbWFKXc5l0PxK4JW+
	 gCAiZnng+XvRUprDqGaQqkncTOxE57Vwgpz1CVisz5T+2YziMTbo2AvOntEdD5626p
	 cpyfiXl+7PclDtEozLT9gbP7MgcG8kCctk823wHAEYm+5y91B7ftzYW7YUsy857MyJ
	 cKc17qi36LMcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC3EE65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996423359.29520.1623018237432038177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24be39ca58412f443f0c92ab97f3cc54311e256696255114e9d607304acded39
Date: Sun, 01 Feb 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769964233
