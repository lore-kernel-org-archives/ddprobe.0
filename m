Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B142CA4B
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745139594; cv=none; b=iLOXDmV8KtuBnA1xCe8I16Mi3DMEFueissxONjCHXE4kDp6AappPw4a28mgyiBwOvMXZRAp6801ZHixDTAV+xUCGbToZRDF0a0j7x4q3gkj04mgFuDX23niHdB8AAk9Nf1HguX6O5IMRNXUQEB5GMhNUQ3Cl/y9vPGzCktJdYd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745139594; c=relaxed/simple;
	bh=E0YSbmsJlH4PhXvlE7yoYe4LN3UXAuAGZqvF8uL8h+4=;
	h=To:Subject:From:Message-Id:Date; b=cUgmQu7DWriQnJkibraHs3xmNDaWzz1vu1lso6qWfEaDU0npNWDYdfJvpoUP5g9ztFZwMF9xPj9nOEnkRb0xyBhXSA2yUZ1Q4NijpF+mD293LMSfVvwIcGhxevJJfcx73qM2cQcpEwMd9lkUPTjsTKf6hKNjwgV5VoqY1madV2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0d/qye7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0d/qye7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFAC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745139593;
	bh=E0YSbmsJlH4PhXvlE7yoYe4LN3UXAuAGZqvF8uL8h+4=;
	h=To:Subject:From:Date:From;
	b=o0d/qye7WRISGn9S7ZDlYCoPugkNkfu0jOfwA1MtljShAYxxRW3bcjkmRxO11D8OJ
	 1cbgMknU+yuM/q+ya/6Pj+AXxr4EnyLxgJ6WBFlMHjvLMVNJMdY2XgKjUNWlWCttAe
	 RI6Lg1Bos2ClvtHYS6P1verfzGSRJ/7O940y9VCHSI+SOuiRlxK87sqbERVSLzfJQx
	 vHCFaw6JiIZMB55qQkiilOjUghWFUfa/E/duk1A3fqyNAD0/CpQzRX5Dn4hOpl8HRe
	 MvJ/+PwVmiVXrJgXw6xEs0EK8k8pU13JOrJxRKakeUW3GncgcwKonPXFHZH2Pc3x05
	 nQQEBmXmeXtyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92905C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513959359.20985.3086144599915667445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bdd6ab3d539eecdeb0283015d6a5395f220c6c4d07b49fec07d0d517537ae4e
Date: Sun, 20 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745139593
