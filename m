Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD06B2A1D1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737083753; cv=none; b=TIHlucVr0mASwHN9CTAeiACPO6DQSUUqKTxVR3tXtoqoSHuUA3mIjshZuoRFk0hVGqUckra3fwB5PudRvCvAAYhjmeiDDpS119sAg7m+pynWNpwFPQNolRtX0mmFLqbzKmh213tIwleYYirx+QN4R9kLG3KHXRsASXylWgRpiQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737083753; c=relaxed/simple;
	bh=waWagJawkLFtQK2YaSEWx1sIv8p9XE+uowTBE4jORxM=;
	h=To:Subject:From:Message-Id:Date; b=GLCbsPY/kw84ZmDfnmqxzxOjh9g3LXNkWtgioJoCuYgx3d/hKE6U9I54eLN/luF90QTjGmucmeld+YdcS71PKhfLZUrfjP/uwtuen7iYsCjWyJpn5d5z67uVM0c+Xhvcg9dE9foHXHnG/YEnvooAElgyDZZVozHy07pyL35L34E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvXs9+BE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvXs9+BE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78F5C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737083753;
	bh=waWagJawkLFtQK2YaSEWx1sIv8p9XE+uowTBE4jORxM=;
	h=To:Subject:From:Date:From;
	b=nvXs9+BECBPqniBNN4DWDO8hv+XR/wyAuQBrDxqMdtBlBI16vuzZIq9TZEZglt6pC
	 MwG45pzOHSr5AmD9mOECy2POdJXPIDqr54jYsTA8pPjeBsiL6LbotRn8XLP3Gjydur
	 ToJoDbcFFwE1ZT23DE/Y24imyNiE5h6dmigKaxkYh5+ipB1E6/h/IpZ7Ml21bfusYB
	 XW7RrtPLQfYFkmFYTjTcuMUxnghhXe9hkKUZq/ldgP5FnNLp3re9K5qtERZNV4OQKA
	 /E53MuE37WpoqLhZtvqgYpXW+kNs3cVKKpqYZMqX2/q0WZx722uyfTw5+T/AUGhZwb
	 b1J27fbFf+Tow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92212C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708375359.4065.8889629253117697452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00c51114893ae05f793e036fa454255412a99b9e053a6b46c69fde2ffc2aff9
Date: Fri, 17 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737083753
