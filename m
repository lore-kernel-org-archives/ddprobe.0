Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567A480603
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730952954; cv=none; b=uztZ5qbc1pkfSNfkATpnrmazIcbCa5P53I5qAIqOGAXtVCuwHMlle5GzX7yMKwVs3fymTXXaj62NcvXwqLL8+Jm2Q8MlEpD4BpIbLuznu+8NoMK6N+1XXHqwckBQyHUW50kMnsn5I/oR1V8rMsD+vSJbbk/zKPy+SJ60Espzlv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730952954; c=relaxed/simple;
	bh=/DYun2suP4H7ztrUNI+aGI/vaDIWxJnncTQ0V2cnjYQ=;
	h=To:Subject:From:Message-Id:Date; b=jNib7rnyUacFGAgx+eWiftK88UXx9fA3ugqFGItp6vLYP+CkOyfA9YDvoUAiVauIsmdwWsV1moLGJznXuX3kqaPE7IcQj4N43NV5MV0vhiIiNDA8THJgjDuFOw1SimYQAiJS/wwl7snsbrJirl+WihhGBWighTYqREEcGMU3tq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwheGnkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwheGnkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB2EC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730952953;
	bh=/DYun2suP4H7ztrUNI+aGI/vaDIWxJnncTQ0V2cnjYQ=;
	h=To:Subject:From:Date:From;
	b=OwheGnkCmw1TyKKrb6Iu+s6nYUGkDCFjqICb0g7+4ZGgLG5+IViTV9xwhjR5g2/n0
	 itruobPj3UVasSxml8ZVpmqz2FKo5rsnzD+uPZg7Ql07GkLF3YYde3K9Qpux0rifnb
	 OxR3/fjZEINixKMsK7FyMFOfz2r7PZAzi208GPLz5c/Uuh1w3zN+JGxrPWWoekoqKw
	 VjBGmQ8+GVnf7fBcnX3cv9pa1y4I01H/KIaZRILdNSA5N0MlkbDdqMDEe4BZeoGSz2
	 StHhZPWMFBAkQoINYO6x5gOQCXESrm1vX3fp3LSf1QLtDzIpEH5qQM18Q5igSLl1qR
	 /9w71vchjyzRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C617D5AE5A
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173095295363.24638.9513387444069483919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51705ef085595bcd4f4b1805e4b556e7cd4cd6f61c1ba1b69c2d55d35345a76
Date: Thu, 07 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730952953
