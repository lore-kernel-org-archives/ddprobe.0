Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30851184545
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726964154; cv=none; b=jm3i1AMor7jpWW6SsuP8riyc5vjt1m3i30uuSUANAgEj4/pOQsxL0Z4ew45E92WaMloYrzMoxeZ4e62aPCtC9Z2SOTojRsJqKgljs8piBRKpywFP3vGkkFHbKPZFFNOF1qiUEKuSmhp1Q8FMNRJDxVlLDbSyrfyWqJO8bcEDWkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726964154; c=relaxed/simple;
	bh=kz8VZrWsSKP3Y5Q0QmL3r7FSzMz+yL0sp6PKMkWl/AQ=;
	h=To:Subject:From:Message-Id:Date; b=h20YHy74iTAMwXlaCghfXrIHME+pq4u5jLG2pEKY5/Fq0Er9fFxEo5oJRcf/ibDKeIKuG0U8QHbFoZdWjMKI6QxzDyWVmW20sv/NRIHRzTxf/TzamR03okgHyLb5UcqZU2d3HnoocLtO5aCgtB3gP9WOSWCv6wNkZ3vA6HYUJz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooWTjtRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooWTjtRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A827EC4CEC2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726964153;
	bh=kz8VZrWsSKP3Y5Q0QmL3r7FSzMz+yL0sp6PKMkWl/AQ=;
	h=To:Subject:From:Date:From;
	b=ooWTjtRQU8zwqgUddh92iptIn3VFoOjNZ6N8eCM7DsQuccatnvqiSr9DVOQul9J5s
	 oQzCdACqdpxfQlKGfI5HkFyZQOCCppMaa/fv9z9QIOrb948fmFoh0Q5gHw/MKBQ4b+
	 iaR/oYXz+H+RbwSPv9LyAgw176KA34BVUn3k7QdOPSBJhEjWRNJyAwB/BvOLC/Smrw
	 zVX/Jg8mmXX/pMLBZK/6DrmRgdy1cQJpipfaBWF3bmkdSiChZ9ENUEW/zrQpBDRHoj
	 7FN0Pbgw72l9gA+dpdh7ZM3uvICDkUDI8NRkdHFcgFBvaIsJn8gkxX7CxyJP7lyx0c
	 XyponOVToxHvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F25CF9C5B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172696415358.17961.2549956482922444017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a1428151d6b52ed0f835da5d7daae863d30d19171cbfa286efee4dc29c653d
Date: Sun, 22 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726964153
