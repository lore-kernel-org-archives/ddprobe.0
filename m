Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5803D1C14
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714337543; cv=none; b=n8HgNcIiGmqzBjX9QX9OqZJlwaw7C3XMQJpFV0NZoIbQyICMl//sCB8o5S9mrcDQIuqKTOZ0tWVh3DqJHuxK+hZGuifsr9ZsbxyR5HgJ8EUzd9twlVSGSeUPp5LK6QhQe4LaCOpx9UklEZqaEQGc/q9rOl5GCL/CVMVRdpYHQYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714337543; c=relaxed/simple;
	bh=rKAh0FdtCDczNqR8QUUgrkQXsWg5EDaeJXZf9wv30IA=;
	h=To:Subject:From:Message-Id:Date; b=MESNJC9W2VDfOFzeWC8+4UMOZWqRQ3SDKgx9dV9e+ybZCImt0vhOLSPMdsCzxZYXuii4Z2VWXX50x903p5YjpTp1KwISivOzSKUTgRZcZDUbzRcufWb4UB8PTNDRtjlTdf6vAVQii8ZxzUKjKuu3k5nVJShDm725QJRCnRe4e3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbQ4j7F5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbQ4j7F5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34D8C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714337542;
	bh=rKAh0FdtCDczNqR8QUUgrkQXsWg5EDaeJXZf9wv30IA=;
	h=To:Subject:From:Date:From;
	b=ZbQ4j7F5O75+FfG5nxSzXZNr8WfXu5ddxdJZ0H/x4bJ45oSXyPjUZmPKkxiJ19z2n
	 rUMhxENF5NUaLV3s8jyo+9T8Qt+/zF1GSRtfqMeNotY0xGie8y2pyyNzcTeYgfZvRG
	 g/IfYo4Y33pjs88PBR4dXY+TdY6jWrhMedo24QhlhqdiLgdNXz2vkkcgDfTmLKM5Dn
	 bfwSISvZe38ED/EEnFiFQQA8aHLmPNGhKF/0dDkiO1FTWdozrSklYB9fpKnbIkO3wq
	 2p6zke/gGAgFP4wtLLwIGCb2KNfHTCg2FEC+dLxA48fDs+R+ng7l7b7qpv01fPjoDi
	 EdIRpZqWnY4Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B88C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433754277.17980.9189780455986258091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01a8a4ffd1041b92d17f686583011c27a5fb6da6f84c54f00678e810e75680e
Date: Sun, 28 Apr 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714337542
