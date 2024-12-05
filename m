Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E17423919B
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733358954; cv=none; b=HGhe/YCvCVYiVaQriGiXFIei7A0kTm05BJrgmUHmdJz6G25t5Ou4pDbp9IokFybJhGfmd18+ok0THmhbR3migtM1szxukmNxsc0EOWl3SAzIj4JIamamSZ/3FrHYNKok1hpJ5pKy80Nj5VdZ4VbDO8w/CG+LsZA1VjhlkRJmZCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733358954; c=relaxed/simple;
	bh=MmqoqkJk0yOvlQ6csety4Powh/lj8GkfIIAlXymQMCI=;
	h=To:Subject:From:Message-Id:Date; b=nrF4f007TRqYqqJInuhp2SRd4RxHWurQjt73XtYqZhGs89ThKTd1K7o+FLgKWnO2MH1zsPo5U0lJ5LzuP/eWUiTg+DxHZALIs1aZY4bFfbSrg2tvwYaq5U4AJx+obEXlDPpRK4TemqC7jtVbnGMe2VDv7+X1b6xmycDSx662bpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0He+Fs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0He+Fs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A732BC4CECD
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733358953;
	bh=MmqoqkJk0yOvlQ6csety4Powh/lj8GkfIIAlXymQMCI=;
	h=To:Subject:From:Date:From;
	b=F0He+Fs4YNuVp2I3N0PhfyKicxJpvEwL3PR9OtuT9BC1ojiQZ1fD9SwEwNa46CG7G
	 AtWsGyuWINP9NsKvgVRo7rdeTQPxkALDmgx1wF+UqurpCRp5mX45TlNSrvfYfJZ/+Y
	 pin2JPIWQptCm7MY5q7WGit33ohQCnhO6AiCHLMTdXW6dQU7KZiiyZvn7bFZAh9wCP
	 ft6wfp67c468eec3H3a/urEOVgWAxuEU1u72kmPB6wDe1MrEQOcSP/aM4OrZ3biQH8
	 m79fv+dXeE8z2Z54+evB9ganGTLhPwP8JPuZ3qHvKKO5XL2zm0CmFCiB6excS0tNna
	 ZY9RsqUIRmf/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B66E7716D
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173335895358.20307.15001904940795859117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686b710287a0cfbdb8e920118584af4fe6650e65aaef9902012a079f401e0f08
Date: Thu, 05 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733358953
