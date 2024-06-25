Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6A5143890
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719292403; cv=none; b=Xt+bG0UXKlRYx7l9Cm6guhkvX2wZIb0WZMMn/B3YxGOOzDn7FJxvHpXNm8xK8XcZREYqQ3VsOb4FWnvEpvY9PjUhyXUncIMecKO97zcYjX+CbHfayjLhMS7v6i+aEwokOwuV+18z60sj5qooWT07SuadDw3JN6qfP8XWirJLUO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719292403; c=relaxed/simple;
	bh=K/TswpK2l1+tMSqJukdCm3M2Zaq2JURr3mHRIjrIuDY=;
	h=To:Subject:From:Message-Id:Date; b=XS2nYIEgyA93LMFqhGz1C0zZPJNndeqHzTRKcBp5U6J1XYmiVlhcP24KULq6I7AqTW1aORTPggBt2dOJIewKlVmSBkOlPsS+Zuxp3sGm2sVDEMh+r4bqv6DXxC3ttUF3SckbyElZ6ixZFe1fMDyz49LFeqQgX3We2byIdkXQhZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UC+ebsTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UC+ebsTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D779DC32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719292402;
	bh=K/TswpK2l1+tMSqJukdCm3M2Zaq2JURr3mHRIjrIuDY=;
	h=To:Subject:From:Date:From;
	b=UC+ebsTyp+/11orHCZVEsoHQ1G9GI7/C05ZRYk6xYAM/GB5pHr6rTo/Yd14iUJK69
	 iHl4KhgXFnVPXR++1E6TiVkJRQDE+BlUh4/gI4kLd9IqXWa0cApUm4eoX2vGoQgBWM
	 k/1TY8j9LuU9y6AuCTX4dOstOQvh8+74BGT38R0Yh1fHnKkMiLe9pztvDBePeNc/uI
	 D3a5FaNwo3PpN+7Jw6MIzswgq8we8YN+rZoVx5cYQUq86o5sJjPAHDIVkQ9n0PsUzE
	 czfdDL4zM7j/9uwusXAk0rN+5WaM9tVHE9iMRVIdpghOlRLHeA4qyrKr+DUyTQOZbx
	 KFQ2mBSJijhdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52C4C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929240278.28438.4217599338698951708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e83ffe412dfec02e017f94297e486feaffc52c840b548976f5aa36faf23e59
Date: Tue, 25 Jun 2024 05:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719292402
