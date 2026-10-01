Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D5B3A4F31
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790895034; cv=none; b=WqqSWi5jB8+3h7erNdpM/3f83MlrsTChWKyAO+GRU9SFJA3mxLkim51qxXPXqRwVyIw0A4nN+niyW6NYPNb2R8Rs016FTHs3LwPW/dkHqNbb76dUShLZrNGdV2wuWj352vC+jHfWTIjpog8W+/4MimayINjvokuUVxlcyYOYAmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790895034; c=relaxed/simple;
	bh=DEN/O4KPfeo0iPkuhgA4p1h17fNAFs977VxLa13+XRY=;
	h=To:Subject:From:Message-Id:Date; b=LxEJP+6vKIIug8Lb7y64QgGu5aVhWr0Z6dzi77F7XWs3lMg4CU1yY6racpRtdtjtlIfhDjqZ8SIYjTbR22VIqJ4E8nIQ+23nH6ScKCKOTg8H/xQm6IGPldeWvZAVjUqLnw/zAnJTyTJJ+ppQaBEIZlza4ZWVk/Ku1MOYzJfY/bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiGCX+1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiGCX+1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D197DC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790895033;
	bh=DEN/O4KPfeo0iPkuhgA4p1h17fNAFs977VxLa13+XRY=;
	h=To:Subject:From:Date:From;
	b=SiGCX+1hDSDR8vFTXdXuzIZpIJcHHROT9Bn8ek48vuaKgOtLgcHfwAZLCv1jlS4G4
	 ASYz9xxoo2AjfzNcG8B/Dx4LFAfBXLD6cAEhPKq1fVw+K7f2jTIEHRUMk1ta3+FZoK
	 VuBU0R3UVxbWZa1tbaiBQusoQyOCsLmjTWPAg9hBWpIaMnfcqY0MvyhrvjleIsBNTY
	 PZOYdi9wPt7sYt6uiSNW8A5liXZE+g2n6bT0GfPBdkhnmXvRmk88iHtoGYrZwhE4C5
	 f0KI+0XrPECqUMo0uo74wgqPTRXV0bgEhuThk2GdQSiMtHZtCSMhJYXbSagN2ib5Yt
	 XZoY168SdCvzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCD7CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089503369.5799.13178342441000702366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82c4fad4383d321c9e592ee956893d942f0577b2cfccd8d87d822bfeaf05674
Date: Thu, 01 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790895033
