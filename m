Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F1134F254
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768280034; cv=none; b=YY/dpaYdh338Wd1QF8I8JLyee3OeYE1bgj9qJM+edbuHQCEXXXp2LZZUqCkkNSy37cy50Bpiay61k1X/C3+sKzNILSHjqYZ6J87N5FGnZ+qu1yviQ2cqnoc1HjvTNIfC4oA6dbwQxqYrO5W1DDn0kE+pPWMHtj9IikTOUT6CXgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768280034; c=relaxed/simple;
	bh=LEaa23aPHgucE9gAGUMucYl6177Nd0ij/0OYACErIOY=;
	h=To:Subject:From:Message-Id:Date; b=O1mGUZWfREFx8ou7DwZDIrkwiZMBYA2ZerIvdXT8NT/wPep1ZAezWqLovFTI3WJ/ZF5SxKtDfMwPzxv5Y3J+MCOz8rkF9dcP9iz42U9JAKSAnJnNxPvwKPb+QteTXK80Txus+ceVk/tFrlegHS+Ks7JnLlySkKHbhSPZ3lH+q+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRqcGFl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRqcGFl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14CEC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768280033;
	bh=LEaa23aPHgucE9gAGUMucYl6177Nd0ij/0OYACErIOY=;
	h=To:Subject:From:Date:From;
	b=qRqcGFl+VhKFI4gumbVnElvXjjJC/1LKVWlJhI7SwGCs6bnuy9tYmtORmO18IH9oZ
	 OFRrgMITITvzKewEJKK5aJECvbx8o2IrfR4DfFSapKrufYGUfSHZRNrJQkz8eLnkk+
	 abPQAQ5DcGVRETKUTWPvIOcaZ1+mMUi9+aj+sNl7yAgQVfifyXMzuPziprcht2Ke7b
	 FhZ4HiKje6RxG22T9TwYWjG3QODDAM6UsF0dB60hLDRj4S17wLK13FGSf0ZcNiL/0h
	 Y4jaZP5QvLv/rs8NxzWF2QiNp4DH/wCRCgx8Y6C2j82gkvul1s2BnNtNyq6+yC7pSu
	 lJDeIBUo9M3/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA33D29DC9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828003357.2775.8483909138331732553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa390e49defd0c12d4975b79a8ac2e4f7238c7674445c8ff4ce5ce4b98242853
Date: Tue, 13 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768280033
