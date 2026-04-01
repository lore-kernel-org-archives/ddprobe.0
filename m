Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE52433F58F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775070934; cv=none; b=M4l/aGc7b4hU6vrFrb35woBrJCz2jHK9LT9QNV1UpcIUr8UpfkNDslt2PuxphHMKrpX8OUfOnoGgH2Ss3jMgt+lPnO6XiZCC5wtqtQ9C9WdE3+BPZUJnHuUco1uWtqv2q7H5UwBhpACqrjHLEbrV4NEQnTyVIPlMtYy4lK7Zcsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775070934; c=relaxed/simple;
	bh=rbLvOlGMCyd+WeunBmtA4FYogMQM8lVvB7uVvhzRF4o=;
	h=To:Subject:From:Message-Id:Date; b=J/mAsbd1S9sOaMjwy4eNmjcOXqWNtXvhd9Ve/HFtf8DhQudpcKWbG9wUgmvxXHHa9HxWviC+UFRwphAu+lOb523IVf+qATHSX8ELkPoEBbEqcs9Ms0gIaKYW/mZHDnZ6G7vcIzGiGtXgVFyYe79ONCVBUjrBy+Aqz8SylWEQncA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHN41hYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHN41hYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA5FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775070933;
	bh=rbLvOlGMCyd+WeunBmtA4FYogMQM8lVvB7uVvhzRF4o=;
	h=To:Subject:From:Date:From;
	b=EHN41hYQAhS+WLiC+/spk1qs2ZptZHf4oGxJmW0hOS1iX4Ln88FL8kSjboOFubkSJ
	 1nby7/zd8BczU2I/zPp+/PUwSZ+hskDqnQQEU5TjXPiIiuabvlMnPUM6OtuSLpCYRK
	 HSq7boia5lyswzx+Et3fFeTNvjhm2HEuwudheSQu7d8LXWMaXvajRL9lbmKpz+0dd9
	 C35p1PC5Y4SQWlcTRLgmK60NlvvH4MxfepQu8gzXFPxvKfcR/wYjLecm6Rp97EKXzL
	 DxVEbtdl9+AwEYFwyOiBYQFYzyZ5CzPtJTi90EjKDGHC/btispzgf7AZdvN/qerxfa
	 uHQpdxRBuCzEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDA2107639C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507093369.30608.952689755495962605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c44c2ea4afff9f6fefb6791778467afda08bb1aeb541cb278a8786cab0b7f0b
Date: Wed, 01 Apr 2026 19:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775070933
