Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5152C12F5A3
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718793563; cv=none; b=Xb835bbDF+Y4FJBTwWnSbCT8Vu22pZtvYqLLDgv4+S1f8lteez0k/UO2I+sBLxqY9Xdf9pPW+eZ/S4E63sQgYk/OSAYc302xher+hw85z21SW66x24u8AQo0prUmxpMDT7V/eDXoFaEAy0k0wjnpKxgxZ4fcp8zb80pPEItYy8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718793563; c=relaxed/simple;
	bh=/FtboW41M3d3z5HQEJKZisxLbCvAFsNu12vFbH2H2uU=;
	h=To:Subject:From:Message-Id:Date; b=Rjwz3TAACkjdces9lQoUpVsk1GdKMskRmvc34mzWNaTVQAIm/ke25T6g8L+2UwLl9kLoenzyFYEkFUeWJOMSWLJpwkdcQChKCOl6faLfpLkGdCT22wnFreusC3sPfpsU78w/fbmGVcXtcoubKe6E3P9XOgK3vSi+Iwc+KaIfvEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFF+AGAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFF+AGAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10A4C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718793562;
	bh=/FtboW41M3d3z5HQEJKZisxLbCvAFsNu12vFbH2H2uU=;
	h=To:Subject:From:Date:From;
	b=tFF+AGAWilfcqo4n/+5mkgeTJ5/DWxAgu/l+xwNbuO5qCuu7wxdIYGhjegkl6bOob
	 qtRuhRYsTgH+g4e6fC/5XQ9dxrAD/UC12rOd0FbcV1sPYgL35VfJAsNsTHMF5w8cMZ
	 l0wiO0y7uLIV9Qs2e5v+C4wqzya6RnVGVO6Cbh1fmEIz8SOaiFqYUoRZI5tylPVYo4
	 XU6l+OzYcCNxsWqM8eTUuV5X7hV4G+8ol7gMcIEehxzs1MFzPEOPXTZWdeI6VqMyF7
	 o8+/T7Jub9Fyp4ttS2RE3ctBjIqr/JcRloykh8Oz5zYAhttiIN/RCy03vxnuWgFRFY
	 Ezq12ZAGwgvuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93C8C2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879356281.3887.753944332910540562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a641920077071aeb93028565ae48b7b4ef1ee4b11d4a3b75e6c303a523dc73f9
Date: Wed, 19 Jun 2024 10:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718793562
