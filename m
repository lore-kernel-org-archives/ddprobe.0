Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3544502A
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766451234; cv=none; b=sr/cqEpnTgZrLYA6IGXpmWw6d81jK4QdRviLrE8k60aYyqmuKw/MKlKTUF9vcYW2bH8NX4V4H19BASepDnvZ4opFt0o4TwX4A3BxRyockHuemXEwQNnPCF8bz9+/Y9sLiTCG63It2efNaTsWYobPQbL3aCCacRVIYSXINt8XSDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766451234; c=relaxed/simple;
	bh=mvgnOx6dyuzwnjRrZkURYMbYnbeiHLlsFxVy84AOHM4=;
	h=To:Subject:From:Message-Id:Date; b=UaRFBl+lbgtQbzYUG2LzoZLl9ZaYCJ2OSUbzKo//pxcVKpCWkocVPXo3DqlvapDEGYEZuZj5NDZF3r69ktGlwKiWvUil8Z7qLrdt3l2Si7nqxloML0gbmnd7wZ3GssVfPQ4/wwrmM2XIMb+V7JgJhL/9Jvc2awlMnsDhC5SPRRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+YYChpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+YYChpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEE4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766451233;
	bh=mvgnOx6dyuzwnjRrZkURYMbYnbeiHLlsFxVy84AOHM4=;
	h=To:Subject:From:Date:From;
	b=S+YYChpqz4Y2w7tEm68unf0BAjMkXcfn1DGeL95cf1aEJ5f1a4ip7SUzOJxmZh4t7
	 DobScIkia1nDPOEJ9JcgSBbX5/4uad/dZQ+daqcw4jUPLTOzRtp+3F96it8QlhPC8O
	 4W5C1LJKvkHZio3IJhoRbCamzot+58a/4TNfNDEN85tU7rpbRqf06rIKj7T1ecaw22
	 zZs6AWZxksT+od3H/aiZmBSQZWqcmLOpPxAPlHP9HGmTBaz+w0uigpSa6ZhVc5Xzcz
	 YAGV8yFvAFjuEo5DeEADjrEe+t6xjn9KiwdAryVD02uzzJgwsE7oNiCvSNZrLWr+EN
	 +4nEoU995ejOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E3E6B25E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645123357.17270.1919311585889060809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9222b40dd875ecb4d7dfa08912213e847ee3bcb23fbc063228549f1a4c28cfda
Date: Tue, 23 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766451233
