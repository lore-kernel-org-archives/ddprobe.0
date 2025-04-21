Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F7E1EB182
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745267394; cv=none; b=ivgKH6xm8lSiPti0gi84GUwR9DixxIKrLaHpm4eSfIS67TFPGaRy8lQw33AXIqJO4uEKXYylXl2jBSRu8hxMB+3kOx5T0ZP9sIDX2dHFaNWaNa0XQIgmjY+rpZ1PRxfNntaZrZ4PJsctsnJT44vrmVdTD4W/5XEQy6OLk53muQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745267394; c=relaxed/simple;
	bh=uSXcVTA6DcPpysjkzPATnrhL0v1/xEikTQUJwemDvO4=;
	h=To:Subject:From:Message-Id:Date; b=q54phOLpwoKuZDa3JGdnlWDKT4TCLAmyVwFqRUemZmzUtadn+f76ruT897QSpfvwyi8Y6RpwhfvVv+WJdRgEdUM6ITHnCa+9KWTa5UxG/1/mcV5Y6CNt1nscohLg8mZqyU5ljTwF+TAiJRyENun3t/FF870Ti9c6R81b3Q2omBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkieoEVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkieoEVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16B4C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745267393;
	bh=uSXcVTA6DcPpysjkzPATnrhL0v1/xEikTQUJwemDvO4=;
	h=To:Subject:From:Date:From;
	b=JkieoEVfYWT5eQN/o6ZWaAEpivlKzFl+lv1dZ7SS+yPxvYv+nOxmJ+PKL0EfMfCTB
	 gZl+YxH9siFi3/+w74NWHrpmdTJPZp6rwm8l2Xu7A17GIMinCkuSdvXVspbg942WvE
	 h8LDXx//w2TzV71ZD9yohs8kFIdpOP/MgNHBKMEi/Jik5TCvddLDkyxHTklRc4fqyI
	 04lzDQbTmGXcPoi3o3ycSLgy/gqCMYBBjIjWYlS8rEVhLGAW0W7Bp8baJICx4tVEVx
	 GdX0h8TALbZkZ0JutMgkJHCcuoWP7QrJ5Uv37Dr4IcmhqWp/9gqDFoQMqLKggLhWh6
	 96DFszte8h3uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99465C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526739361.13091.4633348202686157623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c853a570cfb9e26cc31a99199969e39ebe28496a997c44fa43c525bab2ce0d
Date: Mon, 21 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745267393
