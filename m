Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019022AD3D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771570494; cv=none; b=B3jsVyj1lFT5HAPkrl2QD1Sl9TW/S40BnIGWHaUBgdoS/Di5NbjsWCtpZj0tLBc6gPpreShwl5aR2Btcrbxg7j1j9JkuXaImOLv0vK4knifhrX8tfAhMi6nxCG6Sk1goipCc/kOFwwx1EfIR2KMxvRZH5zBxY5YsPzYmFkClcIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771570494; c=relaxed/simple;
	bh=vj9WJnP4TdRRbs1onung24p0bky+REJ0OtvMgDc8Y/o=;
	h=To:Subject:From:Message-Id:Date; b=sOcTga1SkLLE5xfB8ZrTzzy2PMjkBKzKggK5j2ZUnvo0/tE9salM7MXQbksKpAo666y812g92A5GXThaQ1BO6uTzV+Dm2xThfHA3ljAaWZYYSmzJY5p3jG/CbiQK3G9ySq61cWRS4CpR751OlhLl117M2s5jM01X7vty+YpIDpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFMeYcC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFMeYcC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF99C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771570493;
	bh=vj9WJnP4TdRRbs1onung24p0bky+REJ0OtvMgDc8Y/o=;
	h=To:Subject:From:Date:From;
	b=uFMeYcC4sQz0PXwtU2aaz7wBQFkp8X//EU97xQ8xMJGhgwJoNCz4dB8p2tHvCdU8U
	 p75ipLQjga/X58qjmQjqyuMQfI+kqUGI2xtOXoov7H69F94Uvm2EcXJ3LCl95wHV8Z
	 8/5nEQDCbgsTrM0DSmB8gGNXtUpdrRQCo886AvXSX/dXE5KPMmEb/+VnDiphvlCzIj
	 57KaF25pIE3JcP6LxxnOTV9Co5t1eAMPzbkW5DQM02f5u7l33Cl3RerXLti9GIk0u+
	 BO/1jcgfX8JiiVRNs4psijozeBvJ6A/vpsjq7SoVlvD5l+a3ma7NOXOi0PrPMQ05rS
	 W3Rf/sshXXbug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB82C54F9B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157049362.7406.6972543927090576506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582177000d261e782267489fc1186e76f98c66f9e3154d6d896c1527ffef8d25
Date: Fri, 20 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771570493
