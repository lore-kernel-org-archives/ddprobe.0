Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A2E130A54
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753971594; cv=none; b=VdCfAPOnoYcbXOuUpjLfj2gx116ele2vGQWlKWcjZjrKQEUd2nVRIqqAGr7OVap96pMBGQQ2FD5ZUohPfqYvzqTYJMZUhCAI1Z7MGg0bOQ+7mmOw5Ok8Pio4G5Pd+XWIKYhRv6FqviTCX143RDIXFCEW2NgSvnneDw3gD9rwRak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753971594; c=relaxed/simple;
	bh=YkxmQV+u9yWSr+9Qpz7a2Gb5PkqPEMV6w/vpgHYl8tU=;
	h=To:Subject:From:Message-Id:Date; b=PEpzCJhOLpqaCOp9oxPUc9jvQSoIpXC2eysLPOa99gAHcQt/eIuSlTp5QVyGe7YrG4F92Yomz/aNTA0XmvvYxsvJ24BiLQFQnddWvz0jyOxAuNprlTdH+S+LV25T0H7UvOfPBxKTuDq30QUx/PNz9wEQnxX6VRyxP3JYMfACN2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/00e2La; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/00e2La"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05D2C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753971593;
	bh=YkxmQV+u9yWSr+9Qpz7a2Gb5PkqPEMV6w/vpgHYl8tU=;
	h=To:Subject:From:Date:From;
	b=k/00e2LagaG/nL2fSDvt+dOa4zO6TzGWTus/JnBXgyGbF90WLAg1ssX6HhKpFdbDc
	 H0tU3QfHMA/e8FeyAC4IUAmd8YcoVxb4oEZR0GXc4nO00rMXoB7LQqNg6KB3J3BkBf
	 iKyWr6Ont6VaFqksj7dzQuBDKCNTf+5BSB4ipTkzKhE+e6BvScw5XcAAJer52OY47y
	 hdIB+CJOlrdH598XogWPiTq/jJ5aipJdrw9lUKj+UEgEKEGfqdS5BwgM3CtL2qlDeN
	 bWF0p3ZlQsTzuHV69d29CkQaiidtX+1vQcpvWGJ2t0d2xzLdMXww2q51VmIOHZctZP
	 X6DSl/0tt/kzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA4C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397159357.4351.14381100093499403834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7781cd0a4529081fed3d69191f14bd3a04d222ed7c70e682b1482bbaeeb25ac9
Date: Thu, 31 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753971593
