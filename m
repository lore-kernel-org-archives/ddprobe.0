Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C4B139CFA
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747991394; cv=none; b=GwwROTAngBVuGGzhedbC27BdeGy5FpuuNw0yEUietQxYWBum3Q7vg161vmjo8KI6ycmCoDW5+6r1xXvA2AsbIq0FVWifjLgC8N950rVUn8uq9aGy3coS7UsaiFqD9BA1IREjSqqAzWYSJRXp6abIIkoB5RdwGvAI5mPvxSjeTR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747991394; c=relaxed/simple;
	bh=fd8PP1q1GM0oruZRWCh+beuxC41A3Q5UT2C+cEwTZ0I=;
	h=To:Subject:From:Message-Id:Date; b=HnlYKwEEuxELRcZRMd50PhsDkn+3hlbP3e0ankFzjeVKi+P6WKKlCf9dqa2nSpEEp2dFctGyDn+UwiJZsXVNhr2U+oFIPZdbgCVznACAHPMYnoBYelVToo0iVNEJS6C9ECkyZ65mMtEJtQeJUALWFVaUgPqwl70faCLZ/2kVvEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwRnpANG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwRnpANG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73E6C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747991393;
	bh=fd8PP1q1GM0oruZRWCh+beuxC41A3Q5UT2C+cEwTZ0I=;
	h=To:Subject:From:Date:From;
	b=WwRnpANGtznUoMT9rIADF0nwpEiI/INXID22wr/F7zVfUB8itdCBZiMlhHkfE5vbO
	 I/sPYx2jjxa5FvKhEeKuWGGp3+FBVluL9OnXEad3ezeBECsxq5/M3wWvby9Yyt0rRI
	 Bxk5J61Td9sfgaODUNzZTF5nu8ScmRCgrvccLBdg2/cyY+Bl4QphE7LrT0nL/hIMI3
	 YnByPHvvnr6SZ/aQcfIwKklEx0Yj+A8M+msAvLZpqb5i2uvJ8rUjIIaX+rnUpuy2aK
	 X/w6PljR0e8Mmp59Or8lnocTlvJzDa7Lfj2DJdNOTwtgNjL27NED4tcudhRgiWpNbR
	 2W/O25vH5u++w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153DC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799139358.9541.6085640913919082882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13179b3512af99ef21b017762d5995fa0ceb57ec01243cabaf4260690c25c45c
Date: Fri, 23 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747991393
