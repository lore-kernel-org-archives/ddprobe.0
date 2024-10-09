Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33123196455
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728485154; cv=none; b=XTX3ODSI91nv63Tod2nJX08SoYjrUJBiN4QzOfPIY9niMkE3eIyyJdcPcO4l5WFaVpAtJOF8fRcJGTZz2Kv4/OEfaR+WuHYKzkAXONOYhb9SKDDGiXa18VM4zQsj0pJhaxZEc1NcqcLXR4R3jRVXLi0P69N0gXz3LGVemPCN9Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728485154; c=relaxed/simple;
	bh=99gmdhwpEE2BgSpr0l0t0SyK8/3dn0qYoTIGOThKd8A=;
	h=To:Subject:From:Message-Id:Date; b=JCCbai6UYdqffZiT1KIlWoWul3lidDe5cH8XcgfAeOKlxjJYNSLvIc8FpxkQ/BX4e9jZcLtOyLsuI2sYDGi3+gVFIbyS1j/IcXZn+v0wAOAId7t5CdB/8+R4CVHM6xq9+FAWhuM6348y6CY8TSLOmAGIQCAGWdV9LJANtKh1mUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbR8ttos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbR8ttos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B46C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728485153;
	bh=99gmdhwpEE2BgSpr0l0t0SyK8/3dn0qYoTIGOThKd8A=;
	h=To:Subject:From:Date:From;
	b=dbR8ttosnsUQkmotjBbmhqrNBkDoraWQR7c4/uym0PYHw1NwFsCXWCjfID2V0Bwn2
	 Ioo9xmS0Tqb+mSCBGUbNRJey64OyWDoGNlE40XWhbLYyvk7BAmoJ0s64yxk+MyApLI
	 jaMQ4wIqIX7fIw9KcXOjgK0VNB5q7Vbeq3X+CMGMXB956L4XwFEcGtocqupQv/QDVN
	 C69cgLHu7t7IFWjDSLiIOr47R8IZr7JxPvyrqGeTysgJ2bIOQZXjV7hIeK2AdgwUL6
	 lo4gRX4e1/7Paws3Eh6ZZQhGSULQWsP2Cpt+GRdQMX+YdwMnlCwzV0ga5Y61YnvuTO
	 D58SZ3WD/9uSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6654CEDD9E
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172848515365.27001.15204807938770747866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937518e2daa3bd8331e15ca44a72c8180b6e47e39f400269f27e31fcc220d2fb
Date: Wed, 09 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728485153
