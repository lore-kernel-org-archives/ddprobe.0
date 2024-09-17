Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313774D108
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726595754; cv=none; b=cDUQwh98+EXcmp1X396EZkwlZ9MtOM7FzrtfFrvAy8QWqEc1AI4swbooKxui0uORVWW6hFW8iUF2t+4LFjxuKjScqKpbh/EEaq/qfTPhz6l1a21h+fI+6bLDnqiBXg6jNtnjF4WbKb8f1rvZv1SuiojZeEbWxXq+l9ESpo1TVc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726595754; c=relaxed/simple;
	bh=Zj+vsx15zJhZ0s9rCCI9z/hBrpnl81IqAEd0tnPKmpY=;
	h=To:Subject:From:Message-Id:Date; b=BzgsVFZdHl1gI9fi9tNsD2Poayj43ER7sEOA5d24Bk6kv0YzlJxy2gmBJekqrZY3WkL9Ejm5jtvn7YCWvbPHgRTXl/RkBmzPMpkl3Pjxl9bSg4eRliQxScs95C5yn7QyN0xW1zKqZuJkvGKz5/my0EMDMIfNyV4eZtFrajjyXjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlOM81iC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlOM81iC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D6EC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726595753;
	bh=Zj+vsx15zJhZ0s9rCCI9z/hBrpnl81IqAEd0tnPKmpY=;
	h=To:Subject:From:Date:From;
	b=ZlOM81iCgiUBm/xUBZjd8FFtCBntdQ8IWKPpfV6NirNeEuRRORYZI/9dyUqU0qUMH
	 vslsoVJ0mo+cNprQBLhNXq7F80EwkLhaVmTc0UMpFXQ4OmuJlmgMHTApTzweSXQWat
	 Gr8irk1JYQr079nl7618DXb4x36dyX1G/Cbh3ljBledxuy5f7QBlQTP9YbO4PZc7iI
	 fEXCAjMoXKMRkDMZbKplg2FwiMrej5+834omMjlYkX1yrR+1LpK+frIJWHRNsJGVWy
	 xr2vj/W3lviAnfC6SdZutg9yMOdu5JDTMRI8hJyKR1hxJb82eviL+puiuEurKxaoUK
	 vN3F5uhQ61Kaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A55CAC593
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659575359.13518.17928954393499827344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a6e363e514ead0e2544bc033e8addcbe677e1c03f3b2fc518cf284911421b0
Date: Tue, 17 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726595753
