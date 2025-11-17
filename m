Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780532459E5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763406714; cv=none; b=Vh6mEIUjZ4aqls3kT7wPIztaMxgs1385XH1/xGtikEE47tYva5tPn1aQ1PcpBlQqZHiRVmPkIDTolevFZNZHBSXa73z0F0B8mkZ1NE8o7SJ0J0LyvA8TXjzlqwG9c16FdtxJHkXFjLoyk/01rd5S/1Yk71gM4rcMkDQaxU1ZVt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763406714; c=relaxed/simple;
	bh=oV0sBrKXRhCXYTrv8OS+Ik8VX5+QXL3Qs3TB1eRJUsw=;
	h=To:Subject:From:Message-Id:Date; b=ZaioCKw7QP8w7p0kk2i7z+AIrgRp1GMFdXdDYomsl5NNnMA6YRHTwS5M1xL2ukE/ii8nJ7zFnUlm+3Ee7T9jXfQ8jeZC+zJKOZX9uE6jlNZ5edEoPwqHGzu9hidtfZrhG3gvJjI8Fh7j495cGkO/YsGdWP1Swjg8QVPjgKsDzYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+ingQuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+ingQuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4931C19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763406713;
	bh=oV0sBrKXRhCXYTrv8OS+Ik8VX5+QXL3Qs3TB1eRJUsw=;
	h=To:Subject:From:Date:From;
	b=M+ingQuSZf14NtJmdhhY3hqnxZKdFE4Wy6dzPgTzQJVOqbTvP5yeflf3eMIm+UB/v
	 SEJUuniUkMLLwKxihGqBcQfHYXEdNvs6RpMu7uZANBYc1hjz4OCsAekpD4rK8fHbo1
	 V3CCkQBXZyEDpqK2EYHl8IuVXyRHfYhhLbLvpg0G+Dh/6CIoLWV78I2DP7mAvUtz3E
	 UbPfaQqAPwyqOrFWVw3mguahhaYCBfyPi5IcomPQ0b2g/K7kNMi7RTxPAOsqlph9Pq
	 4fGY3Kx/Hjr3lKbWqv00qnS4HHG0m+RSAMrSuPsKwD0oBhfnf7f6CkSziVBZxIz66x
	 eMBSOVIy88x+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9260ACEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340671359.7690.498399815789219524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c879e50ee26ebca730cd80831b02c007ca5068467d35aa5c5a5d8fe2d33f1bd
Date: Mon, 17 Nov 2025 19:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763406713
