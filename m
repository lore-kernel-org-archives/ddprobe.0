Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3470B17A2F8
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751729394; cv=none; b=lRd4UKFiPJcCNc4NgnmsGGyQUxKYVY9wZ1rpVqhS4FQELXqQxmDv9LRIEgwB3S0tqSW0WwgpiB4NjhZOEKisNLkEb5lrIJSXUV7ZtWVjUJulQLkha7Ugugcl/vAqaiX5m87LP42BW1ibbXISPrMkGnyCSxP5TtznCNpYDqZBNf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751729394; c=relaxed/simple;
	bh=Hpy8dFECXpwPw74G6STxMzUH9I0QeaXNtRMVOhWj9uI=;
	h=To:Subject:From:Message-Id:Date; b=qN7GpuLjNuAsMZMFfRYfjBgg6u1nqUDyflAMHZa9BhSufbSKnmmZ9lq71T/M4Rjogh8QxL5SHj+8LZK2DYomY0vY8cboyUAzWqBdOI/vvTlrODlvp32Hy+roPeOLVxUJXES7UYQpB8VgJxd2apUlFaRlPAPlFNSRp7wXgeZ48yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjJJ0NXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjJJ0NXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73A8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751729393;
	bh=Hpy8dFECXpwPw74G6STxMzUH9I0QeaXNtRMVOhWj9uI=;
	h=To:Subject:From:Date:From;
	b=hjJJ0NXZ/JX3lX4f6L9GumQRo3CE3+XpTnhWsC+Wj4PaMchDl26qQoEb7PGSTUei+
	 biIK7g1Fyjoti9iexmjiyhlmCQ7n56ce1P5XJIS9HGM3oDMwlF80p2BYp0fVBCLZA0
	 30GI+p8/tcHC7pUoTr2fbCnPqqsN9NOUC4CpD+fFz38KU7DhD5xBAbWDxHVzYfhFoB
	 zl6WwlXjHzA596HMlr7hq6mvDYZBJueXwMvLl4C+nEWRFoUcGrBSSTTRlKeWdfdf9I
	 fpp6eo5LsJovg9GbNbQibR1G84ohKhqMXiAOSMUDWC/TCMord6oa8y1s+00ZtxJov3
	 K6VN4lxn0BniQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E6BC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172939357.11228.16396314351690518745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f847e7eb1efaf56135149749fefbe6e93ea6714b19660e4c5cfd1df854130e8
Date: Sat, 05 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751729393
