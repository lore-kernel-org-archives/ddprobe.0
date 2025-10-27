Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E945155C88
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761523794; cv=none; b=Vy/4S6+BmWNQHvZRlsJ0GHgVDmTKI7Nm9vdfrntdTaSDERFYJHg9TY0IN8OD4RSBMAlf7f/Q1CRmUM3D3jupBRBNMkmgUlC9cS4QcimuduwVu46cY6hd2VqEbUjfmHAjUSPyLXRsRUKCl8XRdoNoIRc0/YwPOK5rdkc0Hd5NuWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761523794; c=relaxed/simple;
	bh=qBddme3FGVAHm59iRVXGjNVgwccT/lFNrvtsfeHzLao=;
	h=To:Subject:From:Message-Id:Date; b=V1aa/fw/gzyRTX9Mjt1rhY/klcDPPUjR+E/jAM5EMNyKgw8t+VyrGK53+qenDYH/joOK3rwcJ5+Ca4C2sJBqedUU2G0m/4tHS6tf+9lUoDQ0sYIbjw9NPnrg8QhDisgENmRAfMt+ycMYZ/xcr1Yk+ORYsu990Hd6gJz9mCEc9aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkDqFovV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkDqFovV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761523793;
	bh=qBddme3FGVAHm59iRVXGjNVgwccT/lFNrvtsfeHzLao=;
	h=To:Subject:From:Date:From;
	b=MkDqFovVY2g0IU/++ns02lVOT5Tij5iul5DPR0qJ/daKZNJwooaopNA3JgT39TIKC
	 iV81k8OvOr3Ooe4gX9XfAsdNOvER/Au5e825yHKP+4G0FCIES2RJ/mbB9fwTiokd0l
	 ydNtg9wGLTZLUPr0sfMap0zwDI38BjBZwygCLXIziRKn4lDqaeXj4EvTfC5Ugn0f31
	 YwyF9AxZeYbBzFbAX+1KwKaKQIBAzqBvEeR2PHud1s6YiyD37ZpmyK835TNu/MRQlY
	 l6/qJIDa8IN79L9I7rJkAoOjtDzb7Su9SKhNJJb5mBQE/6aCA7jYSVsGum0r46WLKd
	 d3Ktk0RLMv8Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC2CCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152379359.11146.13802794851265842737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2d31223214259e8cbe3c6286e01dd611cd3501ca5858d2d9b394125bf02619
Date: Mon, 27 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761523793
