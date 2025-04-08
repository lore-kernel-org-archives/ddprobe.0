Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4915C1DE3CE
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744122594; cv=none; b=QgQyKk392dgVYvlqhfUkSzocYyU77WlsWLvxgw2knDqU2DYd8QL9Kqc13sVpEPARc/qq8cDejd2rK3njjaj7JN4bxI24iWDTNXhXNmzu5oDOjVCIHiOsHoJ+7QBriJsjB/CN7IJs3GwiuOdjYcz3/jqNqWRP4/tAD2xlVHYdzS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744122594; c=relaxed/simple;
	bh=fwWVd5Ct2MfToKCMlibUiPZeDYPOW9EAsu38jfIfxzY=;
	h=To:Subject:From:Message-Id:Date; b=hAG+ON3MPmzJRLqWUdDNUqRcLfXD/oMV9z601eZH3AqWZqY+EDKzW0b5X6+zA3gmdh834l6bklO+EZ3rJSOeCTYPYx4EILrnBJ+YBR9HG5Thg0jSjpKCoxM7eq8PN/7Xxry6Ui4Ywp7Gwfmjvtz+qizSh8Sd8Twc9uZSJ0H9lE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riHy7S4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riHy7S4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7243C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744122593;
	bh=fwWVd5Ct2MfToKCMlibUiPZeDYPOW9EAsu38jfIfxzY=;
	h=To:Subject:From:Date:From;
	b=riHy7S4j8HXDKw4EIx3KVU5ClUCygdiRQghh6QNki9K+kRV1hHkJ262Kkz0VAQJwA
	 vgm7VkA0mvPLzS4mEK4YReD5R27hkflXb5FJDBCblf1U9pxTAJ28dvt4le8HK1gpA8
	 I1Ei0W1bHCQ11BLR931kGSTLIIcXuevZjieBwb39Q9cThzWQB9d5t8O+LprYfMtb18
	 crElKlE9DaHsfYEk0OQBKbWRq+yVUZj1ASS829NfvhKqE8B6QGao0odIQwbviAmlVv
	 EaP0XPDZ6+KGsDTt5mjT5lIretbORJnZPr+ovi6stkMgSA/jkyHFNItoDrNklXdLxI
	 JgQKz3qzCcx9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67E2C369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412259364.22733.3105900514760290330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6df1c7c89d50380f1d7b821dfe75d71c106f7c3e830bc37b0fa8a645370dc68
Date: Tue, 08 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744122593
