Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4537339DBF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786297834; cv=none; b=FddqlgwicSBk4SmW1dpcpork5UzIewdtqcr+/5PFRFiIWt9oyjegWcVAdeytm8vTahBq5lHW7/ZHlyEd5OQRtfObmqMFiAK/UwpX7CcH/qVIVHOzhLFzbVr+jO2Y+stVsoZKyxJ2yMtdtjySj0AyTSvmjQ49EjO+eJfK+DjlAiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786297834; c=relaxed/simple;
	bh=rg6GwBZ4RGhT0YoWMRe1fHNfGOuGKgWboqXWMcuXI9o=;
	h=To:Subject:From:Message-Id:Date; b=Zj1BJhrbAExvTzDZZygwuiIs8kKBeAXXdahKdl93v4sah+GEgzkXorycBEFZ7tReMRqoMKxU15Khl0RZusbFbmpSzmuS+3AxIgbfbSed3YK24f7AFN+I9IQoZz9Tbf+m/2r6FCMHaKs1NVwyFlXkA21sHbEqzxScjWLd5jX4VlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbkG47VV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbkG47VV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD90C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786297833;
	bh=rg6GwBZ4RGhT0YoWMRe1fHNfGOuGKgWboqXWMcuXI9o=;
	h=To:Subject:From:Date:From;
	b=bbkG47VVr9dqAC9q3Di/OyLdqjftlsChyJIpYct1kKcA/7YwjU03bjMAyPHsBEQJW
	 kooxQmr6Xgi6lrDCYHsClFD9zVEhBIKUw/9z2b0Oy2A8nM9Zc49AbUthgDboyZRgA+
	 uBmCHaYroOmszz/+5p5r0BLfzIQ8JZzS1ffgE9xYEClbgVUWc+XGChux6FYIvfltWb
	 iw3rcrLJzvCXyMFesyCl/QZEWrzPR6WLpSp7BlxyzMxV0s181E1O4V+EvlN76IesDB
	 oUkhy5bo8kjPfW461VjkzkQHza1IoMyDSqbTL4xiF/e+G4MTKPPb+GknmJKfukPgi3
	 dAuZ1W7SA6z6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEC5C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629783369.17362.5319173838410701494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694d54f5a09a82467758cce4749cc055ee8e2189e00e73d254b4547a539b2cdd
Date: Sun, 09 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786297833
