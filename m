Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C1B17F7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 00:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721091323; cv=none; b=ZNV1xLFqF6FXWdsd3WnJMUQ3YFX67aVx2s+CY6hb0h3BBYPLyVdkVtWqKQmbDTDwyOaPAmlAQiJ9YhzDk9EzeGtb+DDsPxkfJPp6HjlbSM9idKVVdWeoSOc4y1hDiKfhxgk/HUMub0O8jdCAQI3UGs/4wPbvBDrMY0FSwgvRQrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721091323; c=relaxed/simple;
	bh=+O0EI7MWPR3ZPBk6Sz2wPUMrQGMEEE759H6n23X9X9w=;
	h=To:Subject:From:Message-Id:Date; b=nQxO0xD0D+KGz8O/PdDR36Hj+xyinZPj1rM8hR7Oy+bnXtUOB6owbWjxE//1s1cIA7MxA/KA2gShw2nmZ2ieW0EoZKpcK1zwBwIku0eNvWI8v9XEHtTsrCvz+rftw8b6AwyVfk6HMqlhDb16GIb5Jhts7s8Lt2tJNrtZMiU3TnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7A7c6dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7A7c6dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDD2C32782
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 00:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721091322;
	bh=+O0EI7MWPR3ZPBk6Sz2wPUMrQGMEEE759H6n23X9X9w=;
	h=To:Subject:From:Date:From;
	b=I7A7c6dhDdng/fwCYX4PF9sHN2zGLXisWnJsOG0IJMwRlfSTdFyom9X1RwFvAS7C7
	 i+cLn524r0VEp/Ic9tCfDWQtmAG4HtJKHoZ+uICetRPj47pJmnN7EwhoMieair/5TL
	 837OkRKEK2A5eiayBAQEqXJQxqt8cHYO/T50+s0dYH2WZAN3QTGapzjic83fRpq7FD
	 k7bSrQiPxdY7FCU2F0v5nkcBNmSVrhrhs1nTwj2QUqIZn4RLtFt1kb+xEHXQjUaCAN
	 8N2Gkx4v4GCcMTpScf2XJKEstWPOFRpiIDcbEYMn9j88jDYjEe9a03KVyMMCBVRDnd
	 M2IbOtetxLNew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDECC3DA4B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 00:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172109132277.24042.4706212996833816032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62529f9e5407efd09c853757b7718dc1e3bc869011b03e72b6e20e58764f9091
Date: Tue, 16 Jul 2024 00:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721091322
