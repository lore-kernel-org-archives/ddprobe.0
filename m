Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E3E1366
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719809063; cv=none; b=U+JKHe9VSDpnLArDJdhDrVXRrrnDfY/DLmOfWroXE9hBEWHGMW4KFRNtBcQgDiy2cWwDyB73XqzWOTfbzHfiik9frsIGxDYqtqsgZpy1hpWgUqrFN7YvsqzJHf5yCAJqrj+qxIMwjpXsCJ9yf3imVbz+2gDETodv1SJtqHDMVVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719809063; c=relaxed/simple;
	bh=HUdrVQvn3RkqP4C6vWaKbvOyveDjrkYhJPqvoLwfmsc=;
	h=To:Subject:From:Message-Id:Date; b=el6Ach6G4bS9D504BymLEBH/U5CWBLaYI7rcG32wOUi3EEBoDpPqDZGqoxNOC3WYxZey9gOL1blTnwYBu6V5cmzd9nwvJHPAgoApmOYfobKldEBiSgBs7cPu/x8sFI/NwbIg8eRtdNXhRcf93DThv2IeXwo1NC4QIqQF3y6I16k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZXClvC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZXClvC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9041C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719809062;
	bh=HUdrVQvn3RkqP4C6vWaKbvOyveDjrkYhJPqvoLwfmsc=;
	h=To:Subject:From:Date:From;
	b=LZXClvC1sNQpBsfXcv1OHj5p+04SFffSYgZZmhVBpi1itp3YapfU2eO3+T4zgwoNb
	 bC6q4mvGQaS2pO49bnoITTXFoRzKfzrFeovjv/HigZqBEcgPLM7M4c+2+E1Gjq30nB
	 5fwAeklxSfvaOXy7Rbvu3TvincmhR1lpgNZaaRFNczmvi6CDV0VSWt5etiE0YDGzLg
	 lTxopbD8YiqoUKLOOLwSu+wYJqFSGpahJmGp83u1pjA2GDqAT7CJrQRUeoOqG6F4s7
	 Bqis7P0lR4smHcP1fOqDpoiCQr6V/jWm6x8RhebaAmf0tMqJWPyREhwg76f91OoHPx
	 fTMpwwO06W67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D02C3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980906278.26979.2188039310853897354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cadf3b8e0f9dd2687055c9cace5a3b2b4c4715e1787f692bc03770559f63431
Date: Mon, 01 Jul 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719809062
