Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D22E4C6E
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759370994; cv=none; b=cfYkV73KIi7oWmAoVUOYO/S7Z+hAnRQXyombYuEwhFr8L9hmpaAqoe+Q663szDZjipGcUd4hbfZclozDosa3QkTHPDVQO+1846MncLb6iFu1T3f5lRrWNRvYAdl2AHn4OJr2fFjkAYxOX7fsBnQpwecJBfDLHApSFxFMNnx+HHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759370994; c=relaxed/simple;
	bh=jfk91v4X8m9B2PsUYlPdyAwh8BrWTuPJwahBRe64iKM=;
	h=To:Subject:From:Message-Id:Date; b=bYnTOx1Ap/7TfwBO/f9la42y9mRPkrVFwg/5CFMWJemiK+QX97Hh0jymqX69emDoSVIUxeX67QAVoI85NNaMrtE5iyILXAsEPBsbbC+1/EO65xdz2ue0fRqtWUERBBwqTi/CcQlQ/6ac0PVwkOrc2oyC9KPjquf8ZihZLgehQBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TK2rkeNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TK2rkeNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2307C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759370993;
	bh=jfk91v4X8m9B2PsUYlPdyAwh8BrWTuPJwahBRe64iKM=;
	h=To:Subject:From:Date:From;
	b=TK2rkeNZVuaXX+xNHRY/rTCBo2IKJ1f/HlkpuuZ6OnzbPmStHnqO+iPQ0iu5KvxMz
	 B4FMMymEl4W2H/8iVoZgR6rv1Ho/7b78GkgxXd9EZz6qK8/kUc0GUOdKoC7s0X/8oD
	 tSUeczfNiYkidkOXteZ++0dodjASLWMVCdZqRUmG9WAMRcv5vsqrSeYMXZUEqRw0q8
	 9gPRWcDfxgESh2GM7EHkJ8/zVQxZzK+iLR5Oz1HXoLFL/2MRZmlfTDyuYkXWKvMRK8
	 35rnBHnVZAASiVHk41O6p9q/TMKpsZ1ijyrgJ9pAq7LGpY/5Fau0ZRn678ybIdIM34
	 gZ+tIPMicwHrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFACAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937099358.8336.473655356013066361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba221fabfa34cd51b300b246749ce1ef2a7c05d51745bc17fc897b0154ae453
Date: Thu, 02 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759370993
