Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3326F2248A5
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364394; cv=none; b=INe2wUqYqtIQ2VO/hPCjx9/w7W8JDew3UA7iNKOL14lBoGv6qyzRnhcmCIoYmZZRJP90LQZX0d9SXBBRfHxcC3/pznhvtkrWF4AHGecCg9QQvQfNlxl4/Pc5NgpPce9WU3uhW45vG+djz8Mns2c2YPPQHEBACBxDj+rM8oAAJNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364394; c=relaxed/simple;
	bh=9dYCuJ3JuFN5KjMcsYrSHvMzv2QDn1x4UqTZpG9BKvM=;
	h=To:Subject:From:Message-Id:Date; b=PPSkItqMvL6P8bYxPCao6+nNvmjJX5OigGc/sygAzj1q6ZxPLMyjvYxzldJkiEUZmioDlzPn8RXM2CRrJau5X77ueaKXUGmUKk+ZgNYOdbPpQa3k6FBnfByyXtEWOWAo9oV3NipbScBzkoEbSuINjPNFg2sntfwNIQ1Eom/jT90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUBMTIPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUBMTIPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37DFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747364393;
	bh=9dYCuJ3JuFN5KjMcsYrSHvMzv2QDn1x4UqTZpG9BKvM=;
	h=To:Subject:From:Date:From;
	b=AUBMTIPnU0UoOfDU9xHtYtWKFddLYFe8DYsKMqtrOy9PQn4SOw837RQWCyDJBCPrA
	 DZ8ax8ErGVvD891nnzCWRZvEX/fmk+YjquTlXASy5D2s2bwI5RiqkqpOEA1fHJQCvy
	 SHib+d88nvy7YE+hIbVXNTt2MUgm/qjg7MJbO5RnxFGCxEBw+FYuGjBY/T9+as/Izv
	 KQn0BYU0hwypGtJdyf+iLCW6SksM0DskeX73j5W6PX/u4hZxmbCWtHa4kyMw88CW4z
	 WnH0UGKgVbZjfO6QY8ikmVzokMG/BtDWvfW50OMwRyDkur4Inoh0QszqEft05+qA70
	 4JtVcaSNc68Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD70C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736439358.22261.8044377458692525716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fa3da3162433f62138b00f6e5c73a03d10d2d210d7d58a0a0d91b29bf6c9b1
Date: Fri, 16 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747364393
