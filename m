Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD1C21B9D1
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746229194; cv=none; b=FXOLOJrJclszbyu+9csDccVJ0Ll5wLWssc/x11EODy6xnKO8EhWAkNYgdZv2Y9cB8L2ng/h174Z2hNo7kKniaJpEtgWdwUVFluUUxytPHa5IVgq6R7Rb+dFisBHriIQIZLGJ+YiGTW3rXdeUvluT+HAi8XsROO8TJBnAhlqqpoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746229194; c=relaxed/simple;
	bh=tc6wuM8VoA7ZyFwOiPkyzhMmv8fqz1LVaK0x3aAcztA=;
	h=To:Subject:From:Message-Id:Date; b=rVyjHAiXevsAMkJ/QOcjJXFy5Da2VXgemkkoY4PQCzIu3SesHbxN+Dv0yoAuBSy3fyB+kMCzD64qJYW1RHtgYLHr+hzRXw15lHySjyQ+0ki/iDcT6d6sULyO0QEoLcoFA7pjFV53rTeFhRo+EQ/2kDniPr4LIyymBqhXm21L8tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EL76YtVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL76YtVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A291BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746229193;
	bh=tc6wuM8VoA7ZyFwOiPkyzhMmv8fqz1LVaK0x3aAcztA=;
	h=To:Subject:From:Date:From;
	b=EL76YtVsEVTViRn+HUKKyMA2stflzg9dLcaCjtZUHcG9v6qPlxU95x8aJ5xsFt/2P
	 bwC642FfxCwDoDGWWqFEw6I34hz8FWZJHbVShD4ziJj27+lLSfgKYw3nirWGIhHHZt
	 +rAQuthPhI87VqmXA0SHTFl9+tKNn/5VnQo7+yvOiQab3ZTTTx/T+rVaKKPSQ58OpA
	 q29q9t9hvPKgix8b2lpf2kRf9DBtDwNAO/krEKIs0mkdV98QsGismcaiZR1JL+/eoI
	 DVjEa94DFKp8lnvJgsNwXoCptLd1HhCJFO1E1R+T4n26GFTLqNMj3XgmzfRzrS0nd0
	 7IClKVqLfpPSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119BC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622919357.25021.80077505868720886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3affd72adb04cfe5b0f8b29376d4beb23b4c4cce28dd78acc6217213c883237
Date: Fri, 02 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746229193
