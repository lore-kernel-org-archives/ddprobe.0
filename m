Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F75B33506C
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769017434; cv=none; b=cSUOotKYw9yy9vkrhZrVy7N6PFjDgvoz9r9C9PKLw+n/oMzUnE/HKNuiRodDm88IP3r7G8wNk2gNyJFk5s3bgdaGeQDZ7WPlUQ1mB7Rtnlvx+Tp8Xzr0yoRjXNGzTmKkFQzwJcwAU20hBqcMxog6zTVeJxegRdjrsGxttqdZ674=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769017434; c=relaxed/simple;
	bh=HslnafnRmIonfVxc0hQiTPPJMQDc1QokKtLmxjlkvVk=;
	h=To:Subject:From:Message-Id:Date; b=a3fK6dePgNqjQzQYOHcizIpNwjo+NJaXCUCIffwciKca79Vm82bclbHb1yWVK6RMmIA2yDprWA26Etv7qBbIZr76ulyib+x/arxizgf+sMfmCtKKk4+X1ZjLYtQ2BT+hQI4bUn0ZTUb6L92LCGp7R7loxQ65KIEtn4J1xvwxQlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rR9/vD9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rR9/vD9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA4BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769017433;
	bh=HslnafnRmIonfVxc0hQiTPPJMQDc1QokKtLmxjlkvVk=;
	h=To:Subject:From:Date:From;
	b=rR9/vD9h2yLPmBOMuS78CRRPX3ezKef7ig76rDSbH5/enm/jjXIiun1TkpZVSbMU6
	 De1aH794EQGaeD+wvkLS+berv7jx0Hjfzf9THHisogxmo+FtPZgmHW1srsPv5Mamkw
	 N1H/ZHGy2hIvkMycPSkYuKChng1CkfcM5euaa1tAZKKVmhTjMFwd6j4kDzwKvIUjiX
	 7uA1zzhdIeT4Jj+9AG0sSmjK07ED6Bn6DrgDHzD/5+brhXj8VgLwS0ojp/nw1HaLQy
	 ndvwqMRnfDbw9aUMpc3Qk3T6Ho81lN+bT7fZbpcH2vtRHa/H7117N4vLgNINkUkMwE
	 dg6a91BW9ngig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF41C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901743358.6690.10956193122431663634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff24ceeaae6c730a212ee85c185d910178b2119355605536979441d8e32ba908
Date: Wed, 21 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769017433
