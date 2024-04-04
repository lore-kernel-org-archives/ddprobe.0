Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93591384A2
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712263096; cv=none; b=gWvkZ13n2vaNTpF0xhpiZynJ17ZLuo6sEPHSSBV8LxjrEr95wH03l5JVMqlkz/LRIowG3s1h5xBOQn/fl9yeb2hNTCQ1iLfq9Qih5cuUET0fOsQrjKPYyexxDoqifYnvQxDBMMhVGZpAanghQ8aTcwlL7/22ckEFdUxBiSCWqPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712263096; c=relaxed/simple;
	bh=VzwhoHcdtfxKBDplkSN3alJK0FcwZyCB6dlFgi6n2RI=;
	h=To:Subject:From:Message-Id:Date; b=Ew2TY5TeLQ8CK+K+di9OZOQ6iA8i0Xp2ee2AW1Q8R1ie0YkAmcoKuus0itKaMvsWjEfLtfWl1S63x48lf0s25fiho9siZ+VcQlHuvbL8gSsB/j8GTVRWfb5jCL/AdLYw8NtPAmsDfnvsjwAtdRVHQqlvOb4He5F+WsYIcLAEEsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2BsvRb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2BsvRb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 712E6C433F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712263096;
	bh=VzwhoHcdtfxKBDplkSN3alJK0FcwZyCB6dlFgi6n2RI=;
	h=To:Subject:From:Date:From;
	b=g2BsvRb51LLY5Irr3zTcdot0WkxZQJSyQP6f2FzezdNdR+O+GBtjTQfzguljC+Rb+
	 iHmfMpVOjhN2K1CU+vTmxi+WtCG5VnXx+gHjLfoR83Hsdy7kaOOlkig9ly3SWMBaa7
	 97jzF5ogl2Tl3vkaOPF0EicIi4Hwi6t44Sx4OanEGsPzwQIuujGcdGu6L9vvkG3j+k
	 rlUmzzYttCZ144br0IaqVXhEtpruxw6YbCUBkckZSeOya7xnM35+vOBSlJOJEVoliq
	 lG1dQl9Finr7Dp55Kp0olP00cLZPIz6aPpMhHjE5JH5LZ9+s2b+Oa4mr5G3JQVzHy+
	 aYBUh9MQyYJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623E3CD1292
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171226309639.3623.16740468614392513692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9641116d9791999a0f464760f7a74192077cf4753c692414e2c6901c439fbacb
Date: Thu, 04 Apr 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712263096
