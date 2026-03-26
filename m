Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A16212550
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774553094; cv=none; b=tk36bh8FC8lqQmFyFUS2CKwLISu9WOMWbWmUYMN7EM6dpKSMPefnmaeqj3fLGp6GBgqvEZuovqY++nunwok4VBJGxFPqYzzDCnS8L/GiISIAhEfP/mbWS0PhPH8BAW4uxkYbORGBB+rNkknsC9621TDIXqHnoXCLo+XX0npp7SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774553094; c=relaxed/simple;
	bh=f8zECTeVxcKa1votfTlOPlTTtuyQV0QyauE+MEsIW90=;
	h=To:Subject:From:Message-Id:Date; b=h6IMHM7AttMMPtxcLZEuudyB1iJyhe3zpqdfS9l5rIh4HDAUvJuyoHCYVq0nwXNayMPbxrjyaXZ0mUhBk3CN5PNJtDVpDHnxYvcZdVhD+TVlaH/VOtYyICnMVkq+ohGdDUNudiKQK8gPClqK/zfs+l50tWWw1h7WP1/XpPxlQkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p94nyQxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p94nyQxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36AEC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774553093;
	bh=f8zECTeVxcKa1votfTlOPlTTtuyQV0QyauE+MEsIW90=;
	h=To:Subject:From:Date:From;
	b=p94nyQxIheOXgOYRv1W6n2Y3n59scSSkNAEUNP6Ia5AwNjJlAanO1JuSBDJoyRBmF
	 eP7m64vwosz5RNkbkYotA8dzx+swnXIcnIKIvFqVrwjyXJ2FE5teShxjlJPJ8cXmMm
	 Di21AbCGrZGu50m+1x8aa3LyxWWsv8bspCmeLmALzVkRzVCheJz5URC/Hha4TRL/IG
	 ehf7mRFs9iimu26JNUps/hvw6EDKT5GKtV+qVe2w7HFMOYogcu2meEZpdygjg+7S+6
	 G80CvVo6xaJhHI7YOvZvzJ7KrPd6ULNJYbOZZGIjW4gedqAfZoy6zqZFQ1PPzeyM9x
	 roCc6oHt3QemQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916DB10AB807
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455309358.30472.11331784342738276587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed283059359f2f405c067f8270205cb1b017df4f7aa28efffa2216bb947ca8c
Date: Thu, 26 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774553093
