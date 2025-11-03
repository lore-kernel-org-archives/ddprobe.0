Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BD12BD580
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762211994; cv=none; b=Px4Kmq0DK/7Q6ddHFifaM35TpjyQgH7pPtTCwQHgA+q4t+uuvJVLlPqUYOcSOQVGKb2gVHHs3BABBzLe32o83fmrKSHgiGQuGhvO4tyPp+ZS1Sr8/0sO8kG8b4dS85QVPC8cogDXp8Yde5RJBJpmA9ThqKRvFWQBXXdOvcoJR4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762211994; c=relaxed/simple;
	bh=JvIdp+vd1oLCwzY1NuQpbs6nU+WgTs7QiVkd6xSOAvo=;
	h=To:Subject:From:Message-Id:Date; b=iGLV4p2tgwODlhcyjR7nQSY4JlTx7wiLh8c+4wirrMo0AmjfneePFhKGpLRbLknXcBxhyllRbW1xNlnXi52XOt0T7RkdSiPlPqGBteEYflfLLm2146brGJ7IJ/Niq6KYjSzg6aAu2EjaXZHRY+OMPs6lvobhC/n7SNJqREaoXZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr7kr+v8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr7kr+v8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54A9C116B1
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762211993;
	bh=JvIdp+vd1oLCwzY1NuQpbs6nU+WgTs7QiVkd6xSOAvo=;
	h=To:Subject:From:Date:From;
	b=Xr7kr+v8g8Nuwp7gDRHAth5U7KGtrm0ltFIx0LsGL0jHtbAzL5qMQQ2y9IjTOpZIK
	 ETl9WOU99ljFzn3CKu/inAZZFolW01Phn7YveTQKm3eyPmog3i/cX+NhXan+zGvh9B
	 UUDf2ZghF3ZMWGBaWBAZnbx4/17I0Z4V4CJS71orJvgfYx8VEXL/vnSU2GHXGOInVA
	 9rftePh5gFE3vzjioNS8kDbYih5A/V3fYR32f2NH37xMP5y27QdVqWD6AU+ms2YPju
	 IviBQnCK2MkljhqUcpDnaf9tz24+hu3Hx8mEqpHW+FjTAwL8h+GotxhlZvRRbXLyGT
	 cg+nIOEIfbsbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8E2CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221199368.17018.14859229676101513333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b411fa5124c82b4678f58fa43da487a1d10b12dab414d90a24196084e2639948
Date: Mon, 03 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762211993
