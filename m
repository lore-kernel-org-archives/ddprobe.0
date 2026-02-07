Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FF02BCFC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770446034; cv=none; b=uywzhg6q83KVWfI10ttABSvozW0vN+/oOcYtXzLCh5/CB8Ya4oFICPNuT0Pkt/Upy5CT3JBe9JWLuSKF+Eg6ddyOR1PkLRkyl8AUDt22ms+XG7BpNyuUilraYpdEguuqJJhXsWFhsUz0sT/I+MgIo5mcGbJMjqdJvPzexbXptZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770446034; c=relaxed/simple;
	bh=BXNN3FqJHslvL9yRGIhNBOVaz2LVjgwKujl9NcAw1I8=;
	h=To:Subject:From:Message-Id:Date; b=peKmfLaTf4XQURn8FtwA2rRCIn+lEuaN09mEufhLVDtAcGtnHc3bIe8XwpjFZ9ZM6iyoslasE7adEZjLZzNnGBz6WuFfIEg+O4EmDSq6Ng3xTvBJVgNwomr4wUMfkGGe8tSgEvKJaRAHKW99fN3qAMVNhxcuA13OuXKJNgglgaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ct9vFcY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ct9vFcY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42D0C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770446033;
	bh=BXNN3FqJHslvL9yRGIhNBOVaz2LVjgwKujl9NcAw1I8=;
	h=To:Subject:From:Date:From;
	b=ct9vFcY2B3bp3H6+t+NzovwH08rVjL+uUxfXBBtw8SMM/30oZ6FedH3qlVAN09XJd
	 YBPBZZ0s22UZAMMza0Tr/wKhF6+FYIvu13FA3jw6PmodqZYOAnrbaw4jKxygoVDXjR
	 wmfxj+r7fbjJuxNvyyDb0Yj/By/285yTtCgOT+IFO+qsPA7KITX3UBU/45iwmWMO9q
	 5crmKxiN1nsJt69qAITHWqn1jvT9GKHTlYWMyoLhMW8uB8rTqSkQWe/E+V4Tzjxd47
	 SHke8lzsYKbeZ4DzOerq/DD+FWI7391YCn7T/dsz65tRhlGej04rZ88S17SNQnxbcN
	 flJX8ZHTKAzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCE6EE6B77
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044603359.5456.7891006946792482261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5faaba2d856b596f8df70e1ba6537af93bb3dc271d537affa6e48ef5576057d2
Date: Sat, 07 Feb 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770446033
