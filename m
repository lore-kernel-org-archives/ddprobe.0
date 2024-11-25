Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2166618DF93
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732577754; cv=none; b=S88OFz1gxr35MB53x4Jnrjg0PM/ZGOZdFqEYoUunM2eSfTlFztVpIajPSyA91Jzw3OafOr2kN99pijDXLFtJ1zOrWxfraqG94Z3n8RMreF+BwukUGD3fT22BCeotjUSw/DtugpIv0Jy9Bzb0vGv+5uIbqxMLd8XOXb7jHF+WTSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732577754; c=relaxed/simple;
	bh=TOYWSDd+H9nnUaBld0XLTDCG1vCtar3HDHR1dtHlasI=;
	h=To:Subject:From:Message-Id:Date; b=RLbvhylpJey7oG+zMGgWtikygnti88ArlPc8UlypulAkCdnA561XYFXB4Ud5id++5RzQsXtxYq7GzmzZGNzEd5iYaskCTLfW/KmOkZlx/chatZB+F6+sVc8lsaFQtqNgY2zSpLlDMVc9nj7rn/lSk+e6Xoh8jD2cbF/NMj3Vpwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY1Ei6PW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY1Ei6PW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B125AC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732577753;
	bh=TOYWSDd+H9nnUaBld0XLTDCG1vCtar3HDHR1dtHlasI=;
	h=To:Subject:From:Date:From;
	b=OY1Ei6PWq+XZZ2MoPIk+YTPSyurxm4Lrig4TIrAphgOqRDYV33xVn+nheFQ8x0fgC
	 l4Spui3hXV6LUpgL23xRRA1B/M3SUBx44oAl7UK0CKVdVb6/3GXKQciOVLGGW4N5ax
	 SmzhEYKZ2kkPNepecetnDFYWbO01kir7nqOkG/S7LJ1W18F5TWe8k5GBcV+mnEGpxt
	 b/l/T1aXUq+fPjT8sKJJP3H8hSQwCYjk0gnFzKO6KpziBqUyGkRrABVXcdlNqBKBBv
	 Gd5q8Y2V3q5apZXkhDaCt5+peCp99pykALlyMk5LJIlLD9mae3Wk+cAsSYS6YxLVLJ
	 DYjsxfz8tUL6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F83ED59D64
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173257775359.28345.10379037885061268886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9736e6c8f8773fdd27da7827af8721b89b58aae3a90024fc09757d29a2a9105d
Date: Mon, 25 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732577753
