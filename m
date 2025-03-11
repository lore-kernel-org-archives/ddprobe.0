Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C9A21D59F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741735134; cv=none; b=U+0d42dND+0bfz/7TA2a/oK2IFcddI7jFQYevr3JUgxDh/brqg0XIsRTKPL0HKqERVLKirxjpBEfgHGzINWLQjQERByLTZdwnoYL/81zZ6ywh1zM6k4JMAhPR9i6Ob7Ovh+NePbzmD2IqyhL95b+/wnPZxZ9930STYq3kGOLHes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741735134; c=relaxed/simple;
	bh=wkr+xX5CH3DBj+rP9+2ZPkmr4fCH/1pVHZXgsS86F24=;
	h=To:Subject:From:Message-Id:Date; b=B/OQeyK4mP5Y/dqesxZhDTNjKMGbJbdfncGPfvC9XQWejMjlhjfCa5BPOEwd7vjvEYAMAZDFNGxbZOMn0m4e3/dz9N2LPiUWp6/8GpzcADns3ABcfrbSC3v+FfY5CC9KuCb2elH03GFFie5R5gyIN3exVfMcLZ72w/+rZ4xboyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PH2eL9e7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PH2eL9e7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03A0C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741735133;
	bh=wkr+xX5CH3DBj+rP9+2ZPkmr4fCH/1pVHZXgsS86F24=;
	h=To:Subject:From:Date:From;
	b=PH2eL9e78JghSektVVX+VxO6weK9zqra9YsKv8Nx/qFQf1R/aY2VVEsMp1N27gQH4
	 bZmWdhajPEankTMPQbmpEkNaLzM7Xs74Ak6vBwlDDliQaWjvqpO5VkaIEM1iRWj/3Z
	 rw+dn+fJyeNie0PwWVnDPOid1iAqcE/ioMuLMqykzXPLiR7XsBFYHKEXk7GnX0nX9K
	 /u49f7/ikidlitBY3gPl/ZKNSnNqiZS9+eZQY/6NAm/NLO5Fu12Lxzs+pe+EzVIm4r
	 8Jvaqf6cg5UmdV4ew1lCIrNAJ4hoHhix3HqnlWM8H6QK3RHa10qXA90yLDB80eOK/m
	 cMVNy0vUtaTlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99214C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174173513361.20541.11187112812892149645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a352a3b4e975553f7cbd9e490fd627d717e5cd9b0a52d5ae1e1b996048b00e7e
Date: Tue, 11 Mar 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741735133
