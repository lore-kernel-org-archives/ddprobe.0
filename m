Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4368F13B5A0
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742621994; cv=none; b=eFxOn8feIfcW5EjkNYt7GK5fRibMumhCVrBLfgaD0/QPKsCzNTfKjEmpLmNWAMCtORpAjNX7rQVGrVdyOSwEzZ0LKtX9b7mZ7iyjB9oR9F4GvKghv/WEO6iTbtxbvLNzxjJZOmxs2/7PfuFO0RExN3KiIJHfFeJt4rFLfIxJBZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742621994; c=relaxed/simple;
	bh=T+jVuPd3AXiifc+92oBzq07DH7FvXDtZqluYwHwlLJo=;
	h=To:Subject:From:Message-Id:Date; b=g6+yZ9zDic6Cds4DZF0yP9Eaio0RBaW4JN/01ejjIjfZGbFOW39y5oW8AIqYjFZ2l89y4hGIVa5xVTPOyDR7Zm4T7tGS86qhcVWfxyXdcsWFEKr3XqdFYTmcWQThQkL9FBZgTCfQ7WOadUvtagNW/udM6bMZjWiFc8DyFnnZyw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhLvAnJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhLvAnJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C64C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742621993;
	bh=T+jVuPd3AXiifc+92oBzq07DH7FvXDtZqluYwHwlLJo=;
	h=To:Subject:From:Date:From;
	b=XhLvAnJP5UUmXiyGosHGZdoQy48uAGUcL2fmgq9Ge5oeEnx5r6Hm2ji13RLp21dUg
	 mCP6YjTACnnvteyWBWmbh9p72IFpUOI1Ndsks+CC0NMUlIoeWcpG0fq0+vI1LKOOyR
	 kjwk56lzquECL9/f11sXyOKf+UEZI8rRJ81pB5YhSWCd9/SthwkXTPKjPFoPDIvnP8
	 /vw4HhHeVKe1JAaRjpw2fOKhMAERCMmsSsB4DJkYpbKXGLXRQJEE3wPnR88sC5jlBa
	 rCnqPEp4WO0oXzyD7UtnB5Fp15YAp38lLdR+6CNH9LGzyhfLG/6lL3iopAL1Y/WpfV
	 rhE7WpIDk/dtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965DCC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262199360.32003.2965347920984589942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5319d5db3e9a806a4c7d3582ecf776c3e610e03604d64c728f2d37c122206e7
Date: Sat, 22 Mar 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742621993
