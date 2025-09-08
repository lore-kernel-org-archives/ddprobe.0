Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F52313E11
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757355594; cv=none; b=eSgP4R1VVmaCd10lSBv7j7XS4vXgWzfZEvu1RBl+FUZWTz5lizTL0TDCs/CULNIQ8fZzk89p+p2o91bc/VvzL7nPvvkhN4AwbCFFNQ07Nq6WrCXKfGZ8qeQ/6h8VYXLU4oAesysHNVHID4EGtbEBK4QkFvLmONuOqzfWa3xQsp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757355594; c=relaxed/simple;
	bh=rMRM8C3pxgPQym2z+uqIkdZojLYU7CccdnxQyI5kwwc=;
	h=To:Subject:From:Message-Id:Date; b=KDQelDPHLqtT0opY8CQJ7hfhlF/nfsIyzEpvDDJk7YTCblPMGHEDBsZlWb6BU8pZYB+N0ya6iQB1cdDsqrUKPJyn8MEN1RNo9fsQMcL21sMKun0BPEF67fIPNSMpTcNw9gev4NnCmD8WNR8BG6F/rZ/QpeEEkcVK1T+AuxFOza8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkJradUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkJradUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F635C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757355593;
	bh=rMRM8C3pxgPQym2z+uqIkdZojLYU7CccdnxQyI5kwwc=;
	h=To:Subject:From:Date:From;
	b=TkJradUO389+dTUB61m3+NuhsSNwu5UTS5hVOekC6hFebj1v/tQQ3OQb33N03hLwc
	 5t/+WguPxlajkw3EUr7x1qKQOFn6F7iMgL+embp94XnQ124wc/hOJVWlvZWiL5qBYU
	 eImo9bqQBuhrGd81StqDaapHrhfKjWwEGnoFSstVpYBx/EKsp9voLbbqDb6Xyc35zT
	 Zh6r2hJwGcHrxAYqG38yVsdNR7L4bR5HnWsJUyRmpUgzHe0HKJBr45tVi76ZgWKkva
	 GzFVTAY1SAd0/SK19be+GxT9DuBzP/eWDOtTyyk0QNC+simpVosHyxXc5YramqPJOX
	 btO7nxGgu12nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E84CCAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735559357.7250.2645701265442734162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ecea205b57f6c039d7fd687802a5cda83a9fc28e50d604a56560fb3201a9b9
Date: Mon, 08 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757355593
