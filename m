Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B19538D6A2
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778758234; cv=none; b=XklRxt+E/Re+V7jZAe2ffI8hbcthHh8rmJCk0bpQojcczPJqxww9gQrTYkfK92bulvejHnwQ2/wVNNJwtz69WH6N+Lgn8aj3XUwWxe50qPuTBIz7nFD1ib1WZsXWTYanY+7ifs/XAFo+fNNjBbQkT3WwHyTaPPcaj1M7q+hx+M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778758234; c=relaxed/simple;
	bh=y2iTf+r0GbjwbbMVYFnx+MCVXue4GUq4MxdROI2coCs=;
	h=To:Subject:From:Message-Id:Date; b=KKZaTMRn1Dy20kxDXyuYsIIq6t1mCgETJlBfXxWpvxb7rdf11+P6GPvbCwzJ69tk4yjWKDg428neuKk5ZDbsh/zEuIiDwu3LuFZjeg4XbiqZj1SFEQ5JVLVtg5utND5rQDqtG/gMLye7VQuHZ9B8GAFh6jt9xb0qhyKc5b7G/yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWMLVwco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWMLVwco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5FAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778758233;
	bh=y2iTf+r0GbjwbbMVYFnx+MCVXue4GUq4MxdROI2coCs=;
	h=To:Subject:From:Date:From;
	b=XWMLVwcoEKJNMC2r+WpLQXW30BI0FATzRC3X0qTlglwbSKr/xjstz767jJlsI4SWh
	 UYuyCb5Q+DISXRWxZs+kPsQkuvoM6JePTn/sRq5ftRwF+YrWUFkGmRpakUT6hrx7Rz
	 Z5ciwMogbSao8QCp101p36ssXN0xg10EvkhkqznBQx6H4xwRxu9jGIxYgYdJfbdSXx
	 3zwDE5JsIS6ikhiaASokXALns30/kBvqHvJxlPUWPeoQiQry7A/+k4QsRNT3UU3NVn
	 CyIrNWQAwg03WVexD8BTDd0e7G4NDrBxgD5/2LNJId9y7Bdw7Ky6omuZD9RD4dX/zT
	 7lhpR94gpYMpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D30CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875823368.16934.16732987502905181291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49cdb9b1d400d5866261c588d331ea1900a40cfc206486f15d78d7b1159db31
Date: Thu, 14 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778758233
