Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0555236F8E8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778704835; cv=none; b=LEs/iAl74ZZCHycGwlwgjMNc3Phim1ddODaXry2U++tgPgCIhnrpRO2XciyEztk6GqAdJnk4gVvLECnnNBVU/w4eZzp3Offqm6b8OqbxDo1I55dUgEG49bxchoy4PrUHJd9hZrB4gz1CSuP/swejn8j/SXZTLpWE7rhXXDyqb30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778704835; c=relaxed/simple;
	bh=MAMUqsTM5gEoOx+vbHyeQS0hcBnAD9OF36KZXW7Xmxw=;
	h=To:Subject:From:Message-Id:Date; b=Gpafz/knhUyp4i2KsgiuHT/9Etb8eLqXeJQzpCYG/vwzD7pfItMYyj6CPAl7rD9cB0YYr+oKn6pkuL2uZK68xTCXdzeZAtVTMnjynqwlnPa4KYK9/4iph6hlFgh72/pQ/K2evmXzGTf2dqCifqKQaUKuKoyRjVF99GXZzrzfYow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gr93rvSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gr93rvSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAB1C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778704834;
	bh=MAMUqsTM5gEoOx+vbHyeQS0hcBnAD9OF36KZXW7Xmxw=;
	h=To:Subject:From:Date:From;
	b=Gr93rvSzTH0slmcWXzHlo81p42opFHiWwrR6cpn6WpaouX+gZp6sY2aGKVcg4nUfF
	 YiYohk3tH1wjZ1nhIVt2EuntBSSlrcNJeGPEy25YKVBElLfOHx5n4fkfkFpfOoF5cd
	 Ktte/sWWuDGybHLPwbmJd9gXba2o56HCLSMTX3jObaFHAYzGZr3+ivnCwVe7frcZl9
	 0ny+jqSQXSrrkfQ+lyDZ9rQZruUncWmz3CutUd8QIxDtNiPxwglMvbXuZWlgtr2xwW
	 fpbq1BURemYBWVHIRXDMOedwox/mbXOFmEyhlq9nxr81lt+uin0F/lesDpDcTVZmV7
	 snWPU02RvtfYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9ABCD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870483369.25463.3015861622423150954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe85c853d5a67d5e119b6756b3deebb396dc47aec66f2971c218f5f9f61bb1f2
Date: Wed, 13 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778704833
