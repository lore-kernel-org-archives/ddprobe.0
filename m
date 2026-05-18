Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D04394496
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779136834; cv=none; b=XY6vTXPLfEKI56sTYaOmkDs//lK9sG9tw+1773nMDVEZwvjjI1n3BSOoZ7vH10wTTYqdh1zjv5BPzzXTxY8EeQI2ty64qNsKqG3bakuUKyhF/H9SKHouf2Irmd+SQD1rowpAzg1siXgaz38jBblWmYWB6WlzUpNU1nsntyw2AtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779136834; c=relaxed/simple;
	bh=CXcTvM+QE6s/k6hm3v69rOC6GnyuiUfR9Sp29j8rz0s=;
	h=To:Subject:From:Message-Id:Date; b=ceQCXg5pXtvghePlJvEnNUauY/dJgW6XC1bw1kOQJHu29o9own7liyP21A3BhH3yVq6ig4BadGLe7IDfQD9QErPOJsTI7YG3I0jCoxheGuNaS67u8wti9yR1ZwyDynHjjA4gkzHRUG2ofdXjt6WuGU2IszbRmasQLf+6+eY/Vsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgmLEE3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgmLEE3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA799C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779136833;
	bh=CXcTvM+QE6s/k6hm3v69rOC6GnyuiUfR9Sp29j8rz0s=;
	h=To:Subject:From:Date:From;
	b=JgmLEE3yNPslcNxnotWpOGcHj6DOUrFvP6LRz/VxXR+WElG+JN/wCK0kkEbwO5eHE
	 MVCzju3zTeTr8lHfo70Af8m3WSWjIAQQPRqeB+5HveRDTM1mMhWzmlIz1xCu7TV/ec
	 C9FWrk4WyJWUQd6I4i8pfIGwQlpLlrnkcvtX0dr+gefIggTPOKZ+ZMUnCtCGmU/gSP
	 fq+Bjd/DzEbWZ7J9vyB/dHWf6OANFm+N9Edd8uU9QDt6ZObnFHFNxiDpzBCw2y6oD4
	 h8hKwlLGQjhFnfMis8lyV5qDyGDBPOpN+P6ODNvFHKdAne/TNzvUzU9X+eyNoTaQoV
	 ZPx1m+f4WfXjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA826CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913683368.8708.411610732086222499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e074a097b78405a08a16a6e2a0903f4f4b20e83e54c1721ce8797350efae3d
Date: Mon, 18 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779136833
