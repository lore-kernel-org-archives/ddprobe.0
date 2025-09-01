Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AC2239E79
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756709394; cv=none; b=tOcgslrnFWCuELbDb17mU9U59FnwjvkxpbN2Q43rkwyZOxXuY5g0t5s0WZtoGa9dJ1aeMCYIFbAtb7cNvPB2hvJwYa0OIVt+biGKKZy8WSKbx4gVm3fsUfrkWMZ9T+0z2UFZy1v5N6coHisjlBw781I8m+eWeqVF47k5pDFkJFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756709394; c=relaxed/simple;
	bh=RJMfYkwjtaO6uie+0Vp+hTE5eBh7zmBYGwIpsUXTCMg=;
	h=To:Subject:From:Message-Id:Date; b=oGbLFFcUrFIGx+eIbfOB9d3Ti0d+aD1wFJthjHW4Sscj3JblMHP0zTwkbvhKnQBkFCtnIEsgXY7wNS0XKVJAWtzf3H7h7ihwwuPDy8/meDt2FuBJs6HXxT2e7Y3vqT7vqtkpIZiemqNKrH29/22l03uTv1tjhN/jT4JMBkYqOV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnodUDiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnodUDiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A3C4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756709393;
	bh=RJMfYkwjtaO6uie+0Vp+hTE5eBh7zmBYGwIpsUXTCMg=;
	h=To:Subject:From:Date:From;
	b=pnodUDiSr9EpfpgGIf4fuawooCmE6IOehFkPcedSZDckg2PqBdIA6SHxjH5aeNAP4
	 brg/JZciM5WVyZYDIwzz6SUOjezGxsWd87pn1RuG67eCe9ZWonDV0bV8vQEnQZpGI0
	 kbovuH+/LyKkJ2R9dpIzFW7SjlS0qcWqUXjtrd9qy4kIYchWiKtHuVl3kHCys/Ivln
	 62wp3I2u5MUfdB/HZ6hRds5IvEKtYGtoH1/NFq3we7fKrtv9s3K3SkYkI3sC41VSaW
	 US+t7p7VF7CP+hMANnZUyZsL+lKOqmOTEX/41UaMlGOr0VPSAls0WYM3syilSrr5h+
	 5sYxFpLCHAtnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DECA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670939357.13003.4515478243841801119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91bd304145cba3f3590a14cac23675707d3d6ec515f0e35ed7cd597ec727419
Date: Mon, 01 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756709393
