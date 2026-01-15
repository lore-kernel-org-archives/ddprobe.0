Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CED5327C05
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768487034; cv=none; b=QsdQWaVn3peVqZYTbZyPmRGjAViYi2ZY/61u26RETIkHqkwjszrWq4Bk5pKi2S2hxHOArLHwKuYm/cN+22QgpoV4Jn732FcdQhvef7aasElWlWXutl9iZW6N11K+a2EuigZZK7CaFcZz2exZf1PDDUIoQ7/rfCeOmBH/7yjL0Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768487034; c=relaxed/simple;
	bh=ozP9UtknpqNCLi1e345k1aDdHR4JfnFSsGv4KwaT0Hk=;
	h=To:Subject:From:Message-Id:Date; b=eIMqXLVIj948VPxJ+11DOlHuSSqStVm4OwrbXHVu4aaEywtmP9nyy50PeLdBykV/ujnXWKY1lUujlUSKKF2SqmNBuFZixpQtS/pKbZdrSfTdzPLoeL06S281kMDlTGfdF17enVSFNkA7McFyMnWaO3szGhOJK8oz2e/1/6ZjoGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ryk+ceVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ryk+ceVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDF0C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768487033;
	bh=ozP9UtknpqNCLi1e345k1aDdHR4JfnFSsGv4KwaT0Hk=;
	h=To:Subject:From:Date:From;
	b=Ryk+ceVGhd6XeFsw6afDJ0LixR0isCBgLEJHogUGpBgFL1GeRiRoZTNrllRCEWFSN
	 6Ov00PMCJrViEDdOUM49AjWglyjhYjLnpP0pMqEQX8IZXta3qtTOZWbfiiGbVSsLVu
	 8wWHrVpjpWpEHM94vZKabTzwKy+obUgvMOL86sQThrAXKKAq/ZjQi9rnGdOTZ6DJW+
	 8WjwucS69+R65d4JNlzWQCFs3e6o6cmqNeJs8DHeCfJxDpOPU00ARnCWz2OzH4PMZx
	 6duZ96qEzkZwjdzOnO5fWoMymsZjn1cU9UrFCVxrZYWH05iY2crQXf+5ZxQ8TkmoZa
	 9r/AuuNS+P4sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B55D44C54
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848703358.6456.8912540087182359540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac4d91b0928dccdf46fd054b3cfd660ff1c2e15d29612d6afdb27bcdf4ba9fa
Date: Thu, 15 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768487033
