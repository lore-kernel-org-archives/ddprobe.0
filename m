Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108AF2FFFA5
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767653634; cv=none; b=S8FppacbFbNVc3KLuRhE6xBuwiujtryIWwEIYMIwNE5au7eohTu35cicTu59aLCgcw4jE7DTPsZ3sRGFyPcfZqc3G9KuxqUbdH/OiQZ5zUWS3YDMyneDq97K5g+5YP2kK2nNFj9Y7ICwfd6SHM+pwJvHKpdAoFngoc6MCNHKI/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767653634; c=relaxed/simple;
	bh=9epmQu1XPt35lMYIichcRnYVUg/d4XVybfIADSMRYU8=;
	h=To:Subject:From:Message-Id:Date; b=WeAnKX+zPA1vIvWbL/tvMngRClB7K278JKwT45vrATrUXUFhhq2Jv/Ro6lCoaXuXiQ3kUCvMn8tytZ/hqAigIqEiAgvPBebOg6pmiW/bSdtiX9AWNYBVWydyZzqvpIukocr21GQVLx3MvidyuXy7aaH1e4G5MWbKdU+ht7fNUAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBrP5EF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBrP5EF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF4AC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767653633;
	bh=9epmQu1XPt35lMYIichcRnYVUg/d4XVybfIADSMRYU8=;
	h=To:Subject:From:Date:From;
	b=dBrP5EF+bo5M5JTFHjRHkegF09STaF+7ZnZUh7qjzmRWR3FkdAoNJVuQcROpJVqPF
	 Z+1o8E6r+hDcLn5gYQeO+kKOexE4gfhooNS5sY5aP7ktu9IeQFUXRDcpdtHyCixAHs
	 SwFEiDkJ1QgCi/5yZ6amsMooISI14clebqwoEP/r9Bkt6R4K/n6RBvTBCSl4rV0ZPw
	 lRM5fwk5fX7dYuWBsDNy4eW3Z+csmfodRpy3w5Lm5c2hUaxUL2Wo5+rj7oqMYCSQ5i
	 28WGBQigmlTBSqrwM+HzVNqgBS+YR/SdMWKpbwxFY6WooBPKztJKViEbDzxo0Fbnmb
	 RswzAH80j/EnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E601CD0423
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765363357.32397.17342639326277728092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8b82d9ff6151bfe188bfa1cb234d086b63c359f43101c5c1f6859ea713b388
Date: Mon, 05 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767653633
