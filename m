Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265BE32D45B
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603834; cv=none; b=Z4+5gfHyny4SQVDtu89qe5dDOQsgbQSSFgGhWfH0KYkyjoCEb1UuVgCIMObrTX/Qh0qhMSs2Q440t9agEaAqWyQoq1iTgQ1+uv1qEnF1st2u/l3DvEr2WYMWjmPneuagvZHPtnUBfPPuBqcz8ijIbari+eKe8C6xT5L+Bs+F3OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603834; c=relaxed/simple;
	bh=FnCcy2/Nge/XVtg/+wU+YPacXqb0NIOGfjCKCTJIEE8=;
	h=To:Subject:From:Message-Id:Date; b=I+3sqrTWTRI4i09hFZdYmrD8nlOY2wv3ljfYqgW04q9875vW5jUE2gX0dVuhwDy010yrWN778H64npkO6p+6ziPnxL45rvVs0r6+4EvRNXMZE1lkrV8UZKXngPCAdDh/5wj/vnJXCdcVYWtj+O4KriFOPAkU8MCVgUlPMec7CRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gr6zOCMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gr6zOCMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D54EC2BD04
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767603833;
	bh=FnCcy2/Nge/XVtg/+wU+YPacXqb0NIOGfjCKCTJIEE8=;
	h=To:Subject:From:Date:From;
	b=gr6zOCMvrFzZmQI1/UAgLt4I/RsWmNpSzooac35KF5sS9yFm+ZBk0IE8HbBAvBxbV
	 PCKnMIbA2Zt/4j1E8nrCxOzgjQyl7LwvhtUDBPAOiB1DE9Fep2JBuv0q6mYHlqwXfN
	 bVTqQ8Bxyqrt9KeedwYAqi/IuyIk1Sla3oF5jQTRXIC0CPGC4J1whD1nlNJZS8R/VI
	 VD4zqax/wk/2V/lRD8yCa6XaGg+EqE/PUNxWFGPJM8o0m0WntTOkYuQRfj2R7pJF/k
	 dea313DD/m7xG/Wy7ap23m4MmxDqFCS7l4YQsoqSBozPNzKPlqwOlWiCwMDhEq7wxJ
	 sDEaqr2Ff0lhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F0C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760383358.28483.15683573101608528476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296c77919c04bee3b5161b4d4af9b70a41db7b8ad9e8ade6415060c618b3d3c4
Date: Mon, 05 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767603833
