Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45203BE49
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741829334; cv=none; b=D5RucMqZBprK1OVrAP23GGndeWVfJMK9uPlnO36pcWez2cqUQcBUJ++1QmZWFXjDnx7Tbe+AJaSwc9DjghiF8zNtrPR/6UobG3etlLSBVR+xzNLYkUiEVEHF+B6Vm+RMJytVv6I8AV8IXge8Nd8kZTfB03lE3yzi5P9HhFugSug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741829334; c=relaxed/simple;
	bh=D+N11to9O8uAGQmBwrfcaa4P26U9x7Y9DMxyc2oCT0Q=;
	h=To:Subject:From:Message-Id:Date; b=RuR3/BRjp5SZV3I6wNCP/7gar6q+T0KIamxvk0XvruhpLSQI75O/EfadQf5HiIytVjA3iUzCm/TT1GTRa8+3qs795ZuebN7l1hPjiE762YzpMdO2EhDFc1ImYJpeVOKwe4NRI+mdZW5muLu33fN7NjcKQ13NWPrQIGLiJkYKOto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxqhUoDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxqhUoDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7D3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741829333;
	bh=D+N11to9O8uAGQmBwrfcaa4P26U9x7Y9DMxyc2oCT0Q=;
	h=To:Subject:From:Date:From;
	b=pxqhUoDWizbDjxZfcjef2IwO2MYdGQJ+V0Drjj0nHWyDGyLFbnYtqFcH5JJG17E/2
	 XAqY0jj6G/62sKG3aQAEiz5UG6m1ncxForOTyPdJBLyS0voIFrCKqGMcs3s3zb1a0D
	 YgXemXSv4R4bEKzP3D8HZQYd8S8ShjZWPY9F00EU2ZEjNNwCx0WtC5eas2LlBu7AK1
	 XMkHuHw7mxS4/NaG74Y+nnP3xSGOnd4ghonOZeWjEO2VXKgf0H5Yh7og1trLwKYjHf
	 4Q6V3OLpXhOFNTj7x4RPp+DxBAdwm0SN42txB1s7/XcQKMdqmpbycaDjTlVfehHUF0
	 CR/Su5SVM3qPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B76C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182933364.12184.17474182383290523848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49431b5a8e5c44dd0fbeac349dbf954c41e4ae46a3343c62e309654daf1d5f73
Date: Thu, 13 Mar 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741829333
