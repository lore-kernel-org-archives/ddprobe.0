Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2157622301
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756607994; cv=none; b=p/4XcPGNOXhtiOGacHRd/I2WpciNu8fsVcJV9z5mFYAIfClqIhMANPEI5LOFHeh85IlKezrDE1oB+/TkxgjL+EccNslMApdfml4qS0Mo/z3lTJCZHZvDnuk15rs0xh51Pb9gUe7W3JAVtIuCWZ1k9x+Jqdl0Wz4IpuOtbugyn/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756607994; c=relaxed/simple;
	bh=SZSjFirTyHff4L+/U4xaZxNZd8Jo1dttWSbTTJZiSq4=;
	h=To:Subject:From:Message-Id:Date; b=s3A3xZIfEsOwbevFIbOK1Nr1X5fIrIzAYAJedk+ObcMx5zwn5QUKgbqiVIWiw+GmAJsTnTZ0xIFEJ8SRif6zbjyzv5QO/H34iQyPM8wyN2kNbKo7T2im2dHk3+mumeNxYZgtlqLI5LdsB9ypd9uhTsHmCGWY84CFDKUreVixHxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F38oK6Nj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F38oK6Nj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47D0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756607993;
	bh=SZSjFirTyHff4L+/U4xaZxNZd8Jo1dttWSbTTJZiSq4=;
	h=To:Subject:From:Date:From;
	b=F38oK6NjrV4zj+3xf/UlFTOd02j5elP99KOdjTUOKVJU92BUOBquOalykPJHTQpT7
	 5QhciqdF5d/lxhM2ljMQuIhGE1nrG+YeeaT62zkA7OdRPW/R48q1mrlhwxH3v4I5Ws
	 +UHoge1r6tZ3df1X5qBRLT9Z5kXRZPYeQxlgCxfzLdyKZhWm+Hd/fOPwR0tmjR5n8c
	 fDmvYj2gjIZtzNKUr+PhVemoFHbWJVR5amoizwMTAV99vwndQqEQTev+LEpXL2OrC/
	 9WsVyykbt4RiCFQ6NimZ3sgBUdZ9Nf/Xr7xejx7E+1skOQOV56ECT1lxgVrynVkfay
	 EgUD5MuBKHR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AEECA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660799357.7619.17011145604563209870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aab98c81b669dcba584030f3951a6fca3869a3f3d093f0d0471001e3ff49321
Date: Sun, 31 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756607993
