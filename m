Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245A53F4124
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778725234; cv=none; b=mZbBj8hPmRSrcfrYB+4PaJMfCAjP7k4VzDQCuLZIpI0WaxIIJbLSd0S6J+HNRNyllmAj+wjMF/tFzMJuxXx6LIxj1JJ/48JvWfM6bezO7zg3MsPJvMW0rOUEuzZC7LqagtnZDdl1HvCN2sW9Odbszs7iK6fGfexTAtVwj5ELb+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778725234; c=relaxed/simple;
	bh=8BAl7MU1TPr4NLMdlTuxGYpnrvL7v3jv+nbw4LPNY2g=;
	h=To:Subject:From:Message-Id:Date; b=OKjhidslnAVf2vWUu7k07Ft7o1o5iBINcHgmOCsY3J47yNfXjiv9ntEE0n2zm4XAoksSBQzKrRKl5qjDtes+jtqr5IKe6NVdgb+M9GvZVgjpFwGCpXv/dMDuv5nGe+7+rlpLuNbriC7JVZC02crHpVajd7nPchdydWPI89qL4QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyjHBOJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyjHBOJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE0BC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778725233;
	bh=8BAl7MU1TPr4NLMdlTuxGYpnrvL7v3jv+nbw4LPNY2g=;
	h=To:Subject:From:Date:From;
	b=QyjHBOJ+V71wduufY3/9ezl9978OqT6hdxJT4JYEi0hYU3LDglR0P892Ska7OgFnE
	 R7ApAnT7X8+CLnWZbGgWVHSiilMTgAGp16hEWjg3ghEkt7Uei5jnsxYy749iCHD8ad
	 e8iPwpojYPOa++r4zr6leYb20MLpMAORoNuyY7m2Mv0kQEhzgvdvl1bMcnt7rWCCbt
	 zLSoc5yn6dziJvMHC46cHxXUkuHrTXQXCm28e3/oIM8vV9r+15qI9KgUGZWaLLZaTi
	 iY2+s5xzQJFAC+Y5gb11tlbcEPMdWPJUxVTM0FHC+uMkDISStFadijmZjW2Hz/5N86
	 IdgatP1xzhLug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF0CCD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872523369.6376.17738830692140985298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491ca1fbe63eddf0bcc6f65bea5a95a43992584fada608e4f3e32a1c45bf2c47
Date: Thu, 14 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778725233
