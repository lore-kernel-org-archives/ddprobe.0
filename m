Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230721E47A5
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749484194; cv=none; b=T88fBzxYcrHjdZQm+WnGxzklhSf7Xgpp0HHfaP3NvCRZ1PgD6Iww4GieDaN0khchOS/O+9ft6Tbpsi1YGoJEvZNFSUHl37QniZHJGiU5/z+VkcmscN5Wxw/tJata7zylbNnBMX4IXe3wPZrznEEFA4ccxJX6VuKjSRRpy858Cf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749484194; c=relaxed/simple;
	bh=YD/oFG2X8cSQwJLJL+kxYWIPLPzZoXJBLM4NxlBKkCQ=;
	h=To:Subject:From:Message-Id:Date; b=IeBlRAn9OPZH1Fv0VGT6shajhrmb6lqtcFNLAktdok+E93xIS7jcJBgtAE3JnzF8sgU4eQtW/M2uh0wG06BImXkCvN3uOH9Tm8awGhOHwCs0OZxlGXm/Og28GCB4TNxrf+4CBwrLbG10GAioBSzDHwrkCThlGqA2T1fW1mAuTdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XANNLjV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XANNLjV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64BAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749484193;
	bh=YD/oFG2X8cSQwJLJL+kxYWIPLPzZoXJBLM4NxlBKkCQ=;
	h=To:Subject:From:Date:From;
	b=XANNLjV9sVlpfNhsG4t1Rr2+W/QPhOYbwUWbcMv3zjo6G01h7EV+8QVZumEsEyzV5
	 9mqlHD2FT70OUx9PFrVKA4Cl9IU8DD1V/rhPlH/GJYxVbYFtyIpBBzdtGD5KC9CTFm
	 Zyrcy9pxOgoEOEymvpVDmf6hqahXOTztGmuJp+u68qr0kDGYUX3k8/1+I3R1OwzYDb
	 2ebhT2ZH3qXa7PutpdgDwxq7INmIkzrfpG8EdEX8Q1sWUOr8GXByBVBsaZRjmf4k06
	 UiF4g2uvoo9YY2TEvNg54HCt7nzp5KpfE5tELCYKGodl8Hv9037SGAbpFH9VcV676f
	 TmmO2Ex3ukXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90165C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948419358.19391.4109589891362108353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0487b1ffd11b1c62a97b38e2cf3c526fa7fd0e333ad41e4595ad2a31dde5ed
Date: Mon, 09 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749484193
