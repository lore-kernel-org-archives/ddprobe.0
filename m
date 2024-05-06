Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BACFEBB
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715030543; cv=none; b=tozBEhIrhKCYGczDS4VVtNUGp7Hj4wilnlJMMj+rnafrvoRMOa+zhKTxXhIcUii3iW0VkxK0UU+gosCuzpLe7+4CwkzjndvLpU9Ezc7WtSIwazBLFTyJWXbKBAqDxwlWApqnV7KkGRIIU9UiHcxsfQHlMPZirtwvVfRq/lXUNko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715030543; c=relaxed/simple;
	bh=YNM15yOHfct/h0hM6QMU18fzk2gGmyueeF/CC7eeWhw=;
	h=To:Subject:From:Message-Id:Date; b=YteRAvid7FkNHnM40JHBKZ6oHsO0Pa41KUVp1dHahWM8g4Jbjm2d6wLKRjc5bEr3AjeTc0rF3H/P3C4Iy7FHfMXHPva5UwCWLiaNeeVRVWcFw7s58tBYFYrjk3fcyi24JcXQiTXJvsTgjANmar8wsv7I8rvT3Sdf88w/Sv2CGsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtFGQ3ip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtFGQ3ip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4CAC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715030542;
	bh=YNM15yOHfct/h0hM6QMU18fzk2gGmyueeF/CC7eeWhw=;
	h=To:Subject:From:Date:From;
	b=BtFGQ3ip4XCKnSxL1irESB3eTJTrjJ32ry8X0yPmscljFHcGB1X2pteoDTFkih23C
	 68gmGEmXLqAZ2WKkFbGv9KFFizpc1wN32Bh66EpyllG3fQAf7UJLaVyiWPz4HXmkck
	 eGmy9r3eGe43/xQ7whQAndlwP+HRbFXx2SPTvzZ8eQ4+ozvgyT43kFMnpDRamCY41t
	 6oNP1lYJQLkUg45LUxlI+RywY2P0tGh+MrrX8SqgiJHNduXZZRLFyRvjzUlv0LPtFl
	 iD7DgoejY/guxcpc6mqAbKjILO8Kqmclw5q+f2Ck0annxOAxT8V4qa54Sf6xX25/Yj
	 acpoP/WponjMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA71EC25B4F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171503054281.13759.564902599765682513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88a7ea5460a46e099a99863c6b5f78194c5e6aad22d59f19740847a089484d9
Date: Mon, 06 May 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715030542
