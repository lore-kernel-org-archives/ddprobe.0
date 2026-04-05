Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34355146D5A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775351134; cv=none; b=DkgdIDt6s6T+7g1+mhHKFnQpF4nyV7GtinQ5JON2QB07lrL87Hx0FYA+FssjyRac0vWp7T5RfnLKhvi3xkgunc8r1UjG1XJDBkdW8Ps6vV1bR9FLKPRJVu5AiNGCmwSniJouQUZmKRkfmIkY17CiO6qbF7xTesBfE9E5FKBXIq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775351134; c=relaxed/simple;
	bh=Bh0jb8oYTXwUEbvUlbZ3/JShosngO2VmjxdDZEyHlM0=;
	h=To:Subject:From:Message-Id:Date; b=bkC+0h7qORYjC3b/IFFEHPzlq4r2BUnCH+x9O7t90Ai8zTY7TyhdHwBi+5pCdSxNhQ2EAAOpkh1fqBx1pWSMprSoKUNkaeR5oye4ICmqoay4BlsG1+XzDxFHU5uWbSVtx6gWzykDWN2cxQKp9OUR+LDwFrNDQBRNb4+aOnhUjRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3MFIdAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3MFIdAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A7FC19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775351133;
	bh=Bh0jb8oYTXwUEbvUlbZ3/JShosngO2VmjxdDZEyHlM0=;
	h=To:Subject:From:Date:From;
	b=O3MFIdADUnkRnDEykYSKalZKaKggUquuVDdjyFUEF+wwwyCSFBo64b1plOmgNxd4Z
	 eRvCagA+ji+BV50ko7OLWXs5fO+WuouonOnkowsd482BEztISsLPCVMo2SUqUKBRSc
	 PFpj3ot9h91xC2hmpRwyKwdcR91uQiT4iNzlsIwnU8L1Mn/Kgtjv+7AjEVGygKRQwP
	 CajdkZCsfCxfoIl66ZzjB+Wd6kJX8ANphH3FziQDNmJnnKPiSBkA+MKJcaevrvrFAA
	 AmCIDo9zWYR7oKFjNL5I0KylqUlTRXdEE5KKyU0Zv/xa15UtQeLJVfFDyVEYiLNgVs
	 J5NHRVLJz2eWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA63E63FE6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535113369.4732.6770200159709435231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0aea63fe6af586c47fb0779f8baf8d82f2cca0386107703f6eaf8d8d5d24f03
Date: Sun, 05 Apr 2026 01:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775351133
