Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8BC37F746
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777462654; cv=none; b=ZqOZWLI1Ao0RHvn5BONmrydHIhbmY7wGBf0FEzuivEAZHgtODdRaKX+uzuorGokcxoDdWYwMiAf4DFZRosfNZ9HsPyJ1lSm8XCo0T0vrOSjMEk8KbIHQ9ZQkIj0BlUziug2vQaX8lR/W0h4YywG9H7S4i4LK5DbFXq/M+3n9VNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777462654; c=relaxed/simple;
	bh=1M5yoPPrYP4bvVkb/sIgcRPloQV1lWhZMBVMVhVS6NE=;
	h=To:Subject:From:Message-Id:Date; b=SUcutMYYP/8zogIT2NVkInBf4oLpuXPvp7yBk+RT3RIvsaghpJQlIXv8taTW/9S5oIHrzOBKWI6kpS2tTlRFIX77+FDzOyQR5+kWJBG1LoDvVOCzAJw40eLjlLaX57p5t1M4uUqRG1raO5msbHajliF0gbxOU8W9xn79/B13KI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ce5XkjAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ce5XkjAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89F6C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777462653;
	bh=1M5yoPPrYP4bvVkb/sIgcRPloQV1lWhZMBVMVhVS6NE=;
	h=To:Subject:From:Date:From;
	b=ce5XkjAoEhXWgRiGtL0Di5VabNXJ5tVRv/0YIoJDsgkh1NdQXIcurzv8ZwqAJBXNG
	 UUXCmn8Nn2iDwjA6eu3YK8gnZ1i8Ujt4ukTFw5LgMS7xPYF/kOqmaZPLZifz/Y9U7g
	 QspxfAqZ4KZ/kKqgIv2jrEsQqkwzkklIIlLA+b7t1t1FzMwRaT5WEM++skP/gJiO0V
	 qSVygKpaObsiekN8HSJjsSN5fwVg5G6OD1m+gaPvZEehk1UlwhEmKd9CZEYw9D/+03
	 vT5MfK/XmY8hhSQRgp1kInIx9ZujH/8Mutqd9fzOs6wIMajCyWBjam6ryFsFV35Svi
	 BCQwFaJ3WnA8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D14FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746265368.29124.939406987323903220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2e127cab8ccb669613b775fde515436219e7ed7a766d975311a7872dfd58bf
Date: Wed, 29 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777462653
