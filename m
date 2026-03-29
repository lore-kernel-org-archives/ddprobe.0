Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F75220F49
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774814094; cv=none; b=QNLlbbcx/EWjsKxkQ07FYOW3LWiABS9P88nKc1GpG8jOaFI7TCpHHg+valmWOi4Y/owZfhIRx+6yOiaIB7kjTfNdvnY8AlbUlWmv+hyyqn6t6DvXfDs9cMJOYremLKMSlGSxTLhTCqu1+tXwX2c0sn/Ica2+LYTbKxfamhOITsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774814094; c=relaxed/simple;
	bh=4VOfRtPNmHq9pdHc34V1o6SRo3QHh04ga9HARmxAbEI=;
	h=To:Subject:From:Message-Id:Date; b=KDPnMz4hqsXqlisxzy1BMTLqXsV2JhHTVj8HS4HxUUnhik7cpwbvO+0b0NeeiZCNd5veqibJWJnBtapzVbaouQLg1Q5gJNGTFFAajV72O0JKJZkBmHKt7A+rK7IHqoDxsopAfB71rJPwWg+LSvfYPtaYPyOs+iaptbwwg2ZxvSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKVyIokP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKVyIokP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA217C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774814093;
	bh=4VOfRtPNmHq9pdHc34V1o6SRo3QHh04ga9HARmxAbEI=;
	h=To:Subject:From:Date:From;
	b=MKVyIokPU5GDsRvZojMmyC2B6aKI2jwYMDRb4e+5NMgGXBGMlpxwAXeP2zqo0ZpnX
	 cIRB+zJvYTePedE+01tKXMCkQahTD9fr9y5gCsagp8U9GoDT+b72If+aQ0OPc9C5UA
	 sCuetjUtYlFM6QMLqbUPFY58cIc5dv9r9O7GwMw0NZkSVjhiZa7UQUtFIwaFz/zGJG
	 synSIqaxQjytdD9FSw44oP2Mb6Qdh6yc4uKOPWGiAdc2krOWeqA5CHZBeidLGVBt9L
	 lClLk/Ad8yR0D1/gESvgSSdRrnOExsreOAkUH9Cnw71QVX9/Zb0ebDbrTzmeUsmP3f
	 czhP75821Pt9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96746FC97E8
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481409359.25839.4568743099140026288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f718f8beb71c82733f3f21ce04818015379e4688e33f6e55c982cca49668ce
Date: Sun, 29 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774814093
