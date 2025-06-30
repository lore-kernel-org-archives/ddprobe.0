Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228B6202F8F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751276994; cv=none; b=fi0LWQ6X9ypM1az13gc0dKJzbH3fuIoXJS7b4mjfINTJDVas16geSJHecHl0FLwlqnUFa5UB3XB0AA9qS0zqPqrKjAXLn7ao74tLMbdC5KsNlK0ac/4CURshHrSYdv3dfQ4zt3hcYXFADLDHff4woEGyz1LQ/z3a8F2gam0p0O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751276994; c=relaxed/simple;
	bh=NfqbyAlwGJ8M/Y2rYBpPtnYYD29DsC78LX6dIJP1754=;
	h=To:Subject:From:Message-Id:Date; b=UY15Ks4hmlpzjV+T6rLTlPkGQe+VgwZJHVF0z04XjNCH9SOcd0F4Tx4rT7il7VtMNEswQ4vVtQtBqfurlfMlPQSGtONuJykC7t46JrzCWFIiXmkl8exKivLQmYEd6AuCOUEh8zJ+RV/3XLSYSsZbWUBCCZezGkp2ubKWvnqsGX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL36A5JM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL36A5JM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DECC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751276993;
	bh=NfqbyAlwGJ8M/Y2rYBpPtnYYD29DsC78LX6dIJP1754=;
	h=To:Subject:From:Date:From;
	b=vL36A5JMWQ/JKKycuO4Ur6APTa6FgOwK8Py7Fg8lNQ2jmysZqMC7sLTXdMdfi3jyh
	 aHDxibDVhnljI8iXrp1ZRe5LOH2unfvewfMq/4i8UMJvekQ3Nzo9saVBHWVXiVMg2c
	 h7STpyW0l70iMyge5BxKl1LRVoylMJkl+mGPVDdlvUhFHu9o67lSDHRjqA+EXJMW++
	 u62/aYyh6RIXxMiNjjv0JzyK2liRcNO2mybqQjJu/fjLhRijtmvoPh23ZrGnbjAP/L
	 CK+i+DL4aAsssyySFxzg5mU8JUvJ8m0xgrqmrCaHV3jNPsGebqRR0W6NZkN9quudmh
	 0p2Csm9kiEnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9108DC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127699358.4687.15355729918892098495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9622a0e7a342820b1fbadf93f99ea7b339254248fa8fe526eb92a01338d6e29a
Date: Mon, 30 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751276993
