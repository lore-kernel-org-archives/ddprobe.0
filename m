Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534A422A7E9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741769934; cv=none; b=IeLrsm0cJ/ZFW6aXpP39x64FIzRVzNw8ap7KAbGxqZPq+lxro/1MEzYJ/La1UeWcl0HZdDulGh8ubzhiRa0Ug9yy41ahX6IOTBkEPY7PBTh6nxPAfiMyS2yyAXcmltbE9h9sqktNtmJwEazqYVjHdDCZJxurbl8cRjc8Q+tEif4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741769934; c=relaxed/simple;
	bh=iEXikP4PQCgCkd4NB5IMhLrs9+NyBLG13J8Y0/LU/18=;
	h=To:Subject:From:Message-Id:Date; b=rpo3lNEcgqOUdunZluqSuI/wngvoBf6QC0clKPzAlr7BfERap+yGVdEYNfs/JQOh+ZSc1rffv6kJyeKVCta79zMiaui84fhBEcV4yRWGbjQ1QAYEe3tlFKGNrjBH50E6z/yvV3fkqThcWzOPz413coFkq3bw/B7oSbiS56V0vKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioiNfKoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioiNfKoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8BEC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741769933;
	bh=iEXikP4PQCgCkd4NB5IMhLrs9+NyBLG13J8Y0/LU/18=;
	h=To:Subject:From:Date:From;
	b=ioiNfKoB8cxSbKU2SfCQt1jiZw7mS5SVbQpn8MYFkT7OiRkvsD7R7XrKgw5eBAJ/w
	 mPVMyf99LiYeQtkW+LfEU48k5322kc/pE0ULCAqNaJOmqFJVrVYPQooaeHuwLo01MN
	 pFrwjmlaBrIK2gzcNG1ephCbGagyYPeK3Kkpd62CV9z46iF/tEzOqLNq+j8dV634OD
	 vOo0nRmCGReNoO9UoFUYsZCG3yuSDn+N86btMiecwGpzYXcy+Xqnm2T504bDjjb2vr
	 tHAkyqFQNwUnEIfxwBCR6i8CGSNlyxaJ1I5u8V89kGXdMfriA2syRHgEJLu3WTQq0P
	 u6UvPEXZI55eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98283C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176993361.17252.9524771155452549714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e5deba4f7cf1e2ff579d7bb9e821c2f9bfee5986cdc85aec1692aa5d2bddef
Date: Wed, 12 Mar 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741769933
