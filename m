Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DD12D3733
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771491894; cv=none; b=pRa3E8ZL2EGd3zjYxzhySW/1GE+aNtdBA+aLaah6I3oxndj6aCjzld1FwnKllCFdealHYicmESILBBgTeNdAW8vjQ+EeEY+Cb+m5g4qgfVvVfSX0eEhca42T+1MfwIcrfJyE30+0rbAPQOepxPzT7zMyOOOlb1eIIPXTwDqQaoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771491894; c=relaxed/simple;
	bh=BJuLIk/0+09da5J/w9HiHduFsA4z82jncgPqI+56lew=;
	h=To:Subject:From:Message-Id:Date; b=gcfuH7yYPniNgVrVMJPLhAaAFUBmWrq49f3TT/0yKKasUhe+DZd/XKabo8jSsYZ872DUafTIBIKc1pqk0txhKcW6N/WYyRNROeJNEyOLGZLCCAGBgMPXsmFA/ZlyA0Ax+v3RiyUZrjqle1ZJvcelBkWHP5zrpMpRU7jCGepyX7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFEe1GaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFEe1GaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A558DC19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771491893;
	bh=BJuLIk/0+09da5J/w9HiHduFsA4z82jncgPqI+56lew=;
	h=To:Subject:From:Date:From;
	b=pFEe1GaCycMW8RFjBvJueZZRMgHpkKYv1wBYQEIca2rvzmhPouksSl08R8ir+wfLT
	 PF0UR3ZVA9iYmAUKx/0EpDrSbxCpeRCnHDocmKWFGrmXqSammH6M41FgzV8yHpUc9R
	 aUrX6eFP1VLJ7iPsbsybsdMfclJOabiWyHnEqhvFPhnyx25Op/HVdUxdmobZKoYttK
	 3tgprvKz9Wf0Sm5gDN/MK4fJ1KV36Y7a4yJF7Lp+CcUoCmvi0prRB+9UPLbjlsfSzK
	 cApPqNucufgHpsxnAFmiax6FCpM4IRhUrh22Ckg4TS6n4PnFShTCyhrlIGDrbSKVI4
	 mmqJjcN9zAydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F2DE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149189358.2840.10948876011216296015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47aa9f60ed484e4541fd0a0d5b807b3bd9668bae2b8acca8ff782723ac4f65b8
Date: Thu, 19 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771491893
