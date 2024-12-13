Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3121E1372
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734073554; cv=none; b=KyAJFnlO5D5zfrF0NQBu4nRuTncnQnX7/xciHIdPj9GAozvr0OG2DWPtLZPGzcMUFXWguJkxicVkLWauQmNbnxN/8FSw9HqMJCGSit7AR2okhXZgxLwCKFpou70MDF3F7NoLCHQRIORtq/MO4yqbALrNvnOi9xbGr4XpdhujaH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734073554; c=relaxed/simple;
	bh=GJQuH+BbQYrXF/ql98tdWPoVfi5SYwbQIbiVowIuruE=;
	h=To:Subject:From:Message-Id:Date; b=NP5CggoQz/5zW6sLB932CoINwWpNKEVehON6ax3rLA0ACY4FipbqCK7YnHcN2oNFWa6aujTbAXJeppBlzqy0jz3Wnrl73cEquILeuNyL5fczhEHlBcfvhV9+3cnuH3uzyRi+egxlfQ6HxB2AoCeZ6QWTzk+ePSo5WoRDOcFPg7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dS2l/+ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dS2l/+ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8B4C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734073553;
	bh=GJQuH+BbQYrXF/ql98tdWPoVfi5SYwbQIbiVowIuruE=;
	h=To:Subject:From:Date:From;
	b=dS2l/+ihCe7lgnPoWkuODSNO5RBG3Ci+OttPKTuCHrqBwTRPLGQA5AFSYEuWGbdX+
	 J1MdlCC+CtONmkBWjII6Kpb98DfrFe5ql82lP3S+u+RtrcDFFz5WGSQ/rrDh4nUf8I
	 Q3+8R1QZkNVOm3RMXzlj6O5UUd/9PNYWCzpN2cJ57frvJQeFDOajEIHZPYSD2klXUq
	 tj0Vb+vm38waleyEZebTnZlLqLxP2Cozbe5cCT86ItjVMGZaV44+fdoRdPi/zQuRjF
	 EzMxccGgIWjVp5Ajlgw8WY1mdXKFSmCxxr0+zVirD12E4fbqhsaZ66JKqYeJcnw6hn
	 4qvo5ddAAC85g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EF0E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173407355361.16390.12390184114408703193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d1b71876a4df6d3e1fd66342eb8d93c6cdeabaf9c3cfe0fb7c76f9734c50d0
Date: Fri, 13 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734073553
