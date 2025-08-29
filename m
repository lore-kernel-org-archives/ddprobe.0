Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3313E221557
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756447794; cv=none; b=VH6nB2Zr6LCk9TzBMTMkJssDkzTi0XEmzzm3gr4oaFMUvlHRBc0HukOjnHCYnxHO4BZ3sO5gHaGACJT7Rad5dIs2ZbYi26uMfN4+qyJsjSq9b/Ru6655Q2tS7fLdabKxb6+AZLv6/xGWT+25IDLfiExEhaY5gGBr+gJFu8NzQYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756447794; c=relaxed/simple;
	bh=MbOij9FLaPwTVTlbsXelRLbHQgN8oIUn9zXpjUWgONs=;
	h=To:Subject:From:Message-Id:Date; b=hKAxw29GctqYPuBMXf5GEEZri0Ar+YZIYNZd5KHisQMTQBpPmjPTdRk0YiIB8ALSUjTRIbylTNdoxlKhywPy/z/qF4Tz+Ic76wTR+TNjieUet8mRrkIwcp0Qw2b8r5HtJ9rdaz6W1/vPAK5G3LMuhfIl4YZIWUZZeb6WPvg9yFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVaNniwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVaNniwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A090EC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756447793;
	bh=MbOij9FLaPwTVTlbsXelRLbHQgN8oIUn9zXpjUWgONs=;
	h=To:Subject:From:Date:From;
	b=oVaNniwx3ffV3TsMMDn+Azdk5XpsC2Btvnmz3c/PsALlzqfIbGK4gQSsg9DeBDi/g
	 +CfWLZ0chJ4oQtfk+iEafMX3ZU6k67ymY9tULx8kFZ0TtgE4D2iIfRe2QBo5JqnyoE
	 4NpogB7mRCPQU94Z2M0t4Kx6VCmLOmAIQnBCcXSI5RPWxd3fYvQkH6O7fY1XOa5JPl
	 aveLs93nVY+nzTiAWBU3Pb0PwL164o/Vfp0T/LxBlXk2TEtNejizlIKlI1TvDHSyQd
	 hP+qJix5/HBXJwWwAmAejUg3Q/1ZlgoeZzAdA4ESGCV+DYDIITSL6OuP1Wt7xlaPyI
	 7M01QTDmTOJ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E12CCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644779357.11284.1004067070099147808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fcdfb2c400658e3767aa7f9441753e9da44fa2ac8706debf5a101486885799
Date: Fri, 29 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756447793
