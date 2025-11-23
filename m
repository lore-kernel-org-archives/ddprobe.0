Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE4AB665
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763872314; cv=none; b=QeJSZLAenPmXg28+Vf+u231waPx+ODYDRxgHq1HdgSQhsIbfbip4WkrjCEGF0pS2Ky4tMotXNWqz/G4G1rgHa79jNadEkwT8px9eKznkIszF9s/dFnGV14uDnLDuBWQ1MmQcJGrN9GAc0MEbluWDYoxyzHdQ1lqDY7/xN1GLjIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763872314; c=relaxed/simple;
	bh=aVARblNjk2fqT24tOpFlUyUgSRh1A6eUwSOlBOvFlXE=;
	h=To:Subject:From:Message-Id:Date; b=t9fXRCSoqAO5MtqwjMBULQMTq/7MGLolW3WeYgnOYdinwKsNUnr9ug7VT0Q1Ko4Ll2iNIyr0x6wY1rOrl0NEkNyC6M9LCEoF5AP/JGlDV4uKt2LcDaGjtXd3jvekQMoFK2zJDdxgnji4oJt8QeRWbl9nLXIRMdZq7jc2YvQDEHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcMmujkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcMmujkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDEFC116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763872313;
	bh=aVARblNjk2fqT24tOpFlUyUgSRh1A6eUwSOlBOvFlXE=;
	h=To:Subject:From:Date:From;
	b=RcMmujkpMo2/mmbcy15ylbXRQRIsfJvij4mqwb2zQZn8+khXjd3h5SOIDcipQqLEs
	 1YBxYOZGZcjLguy5AQDngcnFIjG5xLruMGsAoJ+fv8+ZQ8yNBPh4BrB8ur/OlyAvtR
	 Q7qme6m1HFYcBNQnpiAIf8R97Z20uZv4hMsjvrq8ydIWMKyik+zCa8G+xM44IOjS+I
	 KEqHJ6Vvz32uGzsiA8P9zCZN1DIzD2VbQuy2V0XmqwXLGKAAm84aU7pMeFosj2SrH5
	 BIyxmdG16vCc1nCk5gNgoWxLFH6jVzOMenpctlRhjz7hhSXatJKz7PiRVE8tV2o4L5
	 thbf6OEH6j68A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC81CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387231358.29261.10127702771236795384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a09eb40a1e8571d746adae386b088df8f968f7d00d49f0091450f90d60d6d21
Date: Sun, 23 Nov 2025 04:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763872313
