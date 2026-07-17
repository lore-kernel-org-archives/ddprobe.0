Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E74397352
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784270315; cv=none; b=C6kJgRId0UJAi1DJLqd8qIcIX1h21Leeytf+wU6oSOgzocjW3NncpYssFyHn5HcYtn6mvEOQJKaXqHVBw1YzYjRLGB5LHdMWNIwSQCcfHJMYD9XipyY3x6O1MWn6XvEQRlXHHzR79sH7A8rycEY69WzmaiOUvt2ya//DFFEmyaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784270315; c=relaxed/simple;
	bh=yoCNa4UkKl9qvObY+HIUbVBQj0bIJ29n2VbRGVAk24Y=;
	h=To:Subject:From:Message-Id:Date; b=KhUh9n4dvAfL0CaBSMAMDg+eg/K4xvhaNr6+i2b/aASgJsR8i1t7DqCeG5rG78I0nXuMa8gxMqAPCZejelObiq18bLBcDlWXwjBYwii8AQp1+AaJynehkEU/XqBTjC38HARdlqXEb7CjRYUdYq/GHZyvoK7EBZ7hPOsY6bsMY7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxfzsxXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxfzsxXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D071AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784270313;
	bh=yoCNa4UkKl9qvObY+HIUbVBQj0bIJ29n2VbRGVAk24Y=;
	h=To:Subject:From:Date:From;
	b=UxfzsxXtRHshjzWwINFJDgC7U5wN3K+tydEgsfPUeJprPhsCCtXBJWyq3Aro9NvHl
	 HdS7dHdF81A9vAM/Ih/kUihHzC98ZN7Z1jVLQspWK6SBTZroL4Cb/O9HgetjHx8vO9
	 lOQiYaYma9P/H0SY7+MKmndPD75WnJFY5fw4wy58c3aS5ETKW7XJsws8ZBKipzTzmE
	 Jxq3LGpsqeBXwfI4N7HzrYWdZHK7BCIgkobTaD2YURnxHRVOK+yGmQFgQ7cXCdHjrZ
	 B39s8JoUy+4f8A68Nz0zse53efvku1K3pBMPaEVx+OJc96nkTEmJamXH6Khp+yQdXx
	 +8jcNZk76ETrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FABC44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427031368.25545.16928469090294453693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f859b19255658fb4860951fe507a64414f8a1c5ea4a340e7edd0041381ee039
Date: Fri, 17 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784270313
