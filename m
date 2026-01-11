Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A2421D00A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768127634; cv=none; b=lT1eaHLqT3jilSz6MOmz75HjV+IJxv1NCPAIHKCq0uaE/aQx/dKybXKckj6h5bPD1pLXmUpLzIDUwhs2sXQlD+emG5GQhdZ8cXyQpLNuCtPBndgZNrrsT2cx0ai2QGUgpVk1K6bv93MBE4m7Kt7FwvMxpRsylcKPLJLQJhoAeCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768127634; c=relaxed/simple;
	bh=gXUTtUuG/1pYDX2utpKm36ZQ7qdGNql8YA3BGybOpfE=;
	h=To:Subject:From:Message-Id:Date; b=OpO4XQIw2md/31Utml5zs66yXIql5QYI6NvizDUm1faXmRT9HlhBvuyFd+Bp9xao9kSfjwxZMrY40gfR469kPJj2lXGfeeNy0uury8jznyM4BFLqz5CqbAxvJxK0KtSsIbWsysX/Y4BM6nV/JpV90pQGS/4p068ZOPhudO0KUj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Giq85N8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Giq85N8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A186CC19422
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768127633;
	bh=gXUTtUuG/1pYDX2utpKm36ZQ7qdGNql8YA3BGybOpfE=;
	h=To:Subject:From:Date:From;
	b=Giq85N8ZptZGU6eXspt6fsRWZ0dvQiaMJhC/REC53r5marPL8WdhKJCzIjnOz5pxU
	 IJVJq3VHKgZRHDkfVaFKqUsixTaCvOFMBcxrrT0RZ+o20JvNNP2EBDekrfmIExCc2/
	 Vb4nxi9vkJdFS0F3urfUDlVEIS2Vua8kzncWRzEB1ygmKgCzcJcXKIpoUxNWzBEJya
	 FrzQabPhrac4QAw5pJmSrAVZ2KJpP1UPZrMzpy3kJzkv7OSjRv8qn9irNwZOptCnTu
	 jgRbF7LiHdupMtlUfpCS53A90GeTgYWFTE0lrjt1EDzbu72PhMyZcXzPMwZrX+QepJ
	 LTwdHtvphWGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F3D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812763357.27412.14822162241020458461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454010666b3cd02381c7ce00b2a47bf6a696e640356e59a12b8682f2857cfe1b
Date: Sun, 11 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768127633
