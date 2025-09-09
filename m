Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C2A23BD1B
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757383794; cv=none; b=e9VI4AlecmoAGFXNn5AtfbQ2i6U/6VqnkoWb30ghxEN0uarJXHCwRlfTppbHHU8M6trhqcVbbup9yupq0qhsF3K4w3hdK0y2ejjxYrWfr+NNJ3WF0yKQKMjzg1o7CqAEQOjD0fwKk8L2o49LdTGS4Uu3LJLwsZWxaL3K7jnk4UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757383794; c=relaxed/simple;
	bh=Jpl5YBUXUQXtx5Ju8a4uCcNhEeAwrcfOxz7CRG+iunI=;
	h=To:Subject:From:Message-Id:Date; b=hh/4Zse5kjoEiCcvV2kuGJgJIWtlfTk6omBMdfvqZZcIdrdg3vbyZvb5VJ9exiwRpYZD9xf9HX8ewaz/XcHGH8zjDY0W6rIlDb9CPNr4zEh9b0roLAPvBzWy+SpDpG0COTwVfSbVclkdG7/pPdgLC73AYoMctUEcxFghd+Nediw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Px0JjBop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Px0JjBop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A012AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757383793;
	bh=Jpl5YBUXUQXtx5Ju8a4uCcNhEeAwrcfOxz7CRG+iunI=;
	h=To:Subject:From:Date:From;
	b=Px0JjBopmU9j9XoCBKWkh1BtxFTa6NuzdX9DDsAVVCldU76Pi4SREfZCqHTmRhB6S
	 XqA1qPDHyReDVxBZh/2bLRnplo0iVLTNbEG71CxHNWtcpusdU6npMWhP4SLWLhvLdt
	 8gBzZQRxbLCg+DcQIlTHXG3dKZ45lXx9PAiXydRoQkCElfYeOYhVtCN/QiCeQp2Kab
	 7Uh1Vtkkh16OBhfte7IcJtmfrOTfJgL+ThyyCHD7j68RYb5DBtTGbZ2wFIM30XBLPc
	 X3ygAmnzw2W92SGS74T1C4P6K31wyFK7Q/fjp0ifdNYEzVR3uh+og/NwhIznpM8ntG
	 QkYzK1p0U++Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED48CA1016
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738379357.3547.2941994784390300696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c81613cc3374215c476897cace19fed638a3ada20ce2b11179f8e7891e658b0
Date: Tue, 09 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757383793
