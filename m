Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA9F2E336F
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761909594; cv=none; b=Yfql7f6GsNZrm2XAy2+rqbpTRX0S0/MjBKvRmLlRtk2yEe47bk6jkk6R8SJkoQ2BqH+ffycMhg+l4GSkNGh89SZC3KquEVayQvKD1dzjOmuQrTcyZbTIYR55cWrKKFpULUHW1pGGUhV5UahnyDzqea/lN0dLOkuDB41wNdznSMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761909594; c=relaxed/simple;
	bh=vLYZO4AetjYCRq4DXpQiBFCsESrbGmxsAZ0ztXz2rno=;
	h=To:Subject:From:Message-Id:Date; b=jp3iyJlcKs5nwUceeWHP1bEPs+S8fQyZj4EE6+5waebbtq+WruR4t0/6RVjI04OOOf4Eme0PBOsToc1nhkskoaIkJsH8AgFH7TzMT5fyFZw6y+b8MiEiwMSKCqaLgiuL5fiAnBvrHSaePLBMvERaRttNxhk1Kg+8Vw5zmrZJAjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjCxfrPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjCxfrPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B167C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761909593;
	bh=vLYZO4AetjYCRq4DXpQiBFCsESrbGmxsAZ0ztXz2rno=;
	h=To:Subject:From:Date:From;
	b=DjCxfrPgxHpfJniDxuccoJJSWXm80keUH+buCgwzFxsgz36t4ixDZFrUSvlAztVBJ
	 17AL2YfG52KD5ByNL4yR9JvPTwmqRqXA/WfA9KzDpIZCOtEin2kf6vwwA/w1LYJ9/V
	 4mxpCv2pVO5jDFkw82JGTRjMZAZJ/XNnpogHjYSHRZSFFDvNmcm448yHIU/RwX9pZg
	 L24brHQvNjz/AIlNkvM9gCsYka5EU9xOz52Y3partcDBXkcXlioXeb5znjlb3qe0BI
	 k/dFh57Uhfyp1O1ANowfdQvcDjz8NYxUNbrN1RWyx3bQGalTfANOWqH2Jb0VW2FgJJ
	 xY1tEMSBiIuBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F709CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190959358.23603.18338153752123224541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b411765765fd1ef994fdebe55af6fbe068afc1c3f7f821bdb1fb9cbacc953f
Date: Fri, 31 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761909593
