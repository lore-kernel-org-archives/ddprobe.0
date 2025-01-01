Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE154C70
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735708554; cv=none; b=bvYAKfBjy/WmycUAvNtOSC4p9Z5nSgNZtN9XYbUtIMz6svubZEhpDak4rYkf0YOvL1ou/7qPeoyfr9oNkdY1PvG6gtI6ooV2qivQhQB1R/Ul0E4HJV9XYfNlmYVjNLfwqCvae2+EGM3pGjBjWvCAqipi6Ctlhnp9/0LBWbZyw5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735708554; c=relaxed/simple;
	bh=bQcMzi2OoIqKmhiKgatj6yoHFPWz7hcjMBslFdpjKFI=;
	h=To:Subject:From:Message-Id:Date; b=psrKiIZ4JKVMcC2EhNOoPWlVprGzDP+tlzBuyzOY+NefJM8mk5fKzNHmKij/QOVNWqH02qbMO5+8x7SFs0QfJSt44gYgdM/JURCEfwPXCo7my0V9oSE0MKwLvLvh3s2VGgCptlZvZ9cMMBy8ENNH2ChAmI7dvB3LC3icWmijY2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PS28pMxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PS28pMxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAE7C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735708553;
	bh=bQcMzi2OoIqKmhiKgatj6yoHFPWz7hcjMBslFdpjKFI=;
	h=To:Subject:From:Date:From;
	b=PS28pMxdSV2D3LTPf0zxdCnRY5UAI74QwcaE9d2qMViwdtHx+SuodqAZuk/dieJ/C
	 5fqHapnznxl0Q+7+zZxq8q8j1IBvVQhgzQNZOqGhVYZHUtgKEZPxrmUocmPVx02mz/
	 S1DnrguksQyl3glH6ZrnAfHJ4EELwagd95JASpL4E6ZjcBiTbqtNHLCuEA9xsXIz9f
	 kZJaIYICWSJ/IOLB/uE3/TDvEyF9dfdqk6KMsypRnxDzmN9MmOuUC5Y7/+Ha0oFvJp
	 yQ+puSRMVRG1U5N3M+SAtfgieDOAI6voNJSwV6wY+Qjgsri9byuzThdsYUhmgzLuEp
	 JVKfiiYEuZ9AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9960BE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570855360.14632.3121049611930259253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f586824435e0adb0f6e004972dad93cd95deeb2d7135894a4919316e44ac9b49
Date: Wed, 01 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735708553
