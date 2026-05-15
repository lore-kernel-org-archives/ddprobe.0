Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2330A32BF41
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778837434; cv=none; b=QnmZZ8r3Bmq9YWmK80hUHXbGn9DGAknlrp/Ac1h0YUm7wHzcNMJB7OPWQzW9Pi3mKLx79HQFeovQAq2mXmyM7BgEykx3QVIP6jMtCoy5qMBOsLIyLt/8RHzsBNclvPognCxr08Xu4ZUu9ubBkos7eSeMIo3mNlIXwP1QZGvkPe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778837434; c=relaxed/simple;
	bh=CJ/Jg0rCBcp1dhgF61Sn+5eQekz71mN08SoMEv3b0H0=;
	h=To:Subject:From:Message-Id:Date; b=hEHi/2hvHWV8BUy/dKmTZh6Nwr65IWgaSdHyL8B4m8o+UIGNYrleSQrdN6oPT8InLqE5fvjzPQw9TQaJWcO72X/L4uiTh+1i817Ooqm/fMzWobYADvbyN8+dr9quUDQUYlolOCUBuhYIIjJ8riYDkg1xRI7QdDJfSJvIaHk7sYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuaLMVO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuaLMVO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE33C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778837433;
	bh=CJ/Jg0rCBcp1dhgF61Sn+5eQekz71mN08SoMEv3b0H0=;
	h=To:Subject:From:Date:From;
	b=QuaLMVO0zVjZ8i7kBNc9bNZQhbhhoPxfD3LpJ7k5LniEgmHEabcvYIsA0KULTRCpL
	 WPU4NHFsIeo4nz7e2ZOUWbi+AjPDjbaVA+PtneZ4oMdxYOClBiIlGHwFb2wOSeErT/
	 jSuGyh2FZx0YU2e6PO/+gQ4tkbtYXRTvqeZ+mPGnTEKc+u7z267WsT+S8yz94H8dV7
	 k2AXltbR4AnSkOsCqSGOLFc8qGDOLO7qi6Q76uOqNzkSRM5Ugnsyw7uSNrycm8CvGa
	 x/gHKXUxvCd51cnRNz5M6edddfP7Nzz3NGSvMzo3eqA/gyYIymYkKrFx9SAOz51PSb
	 cY9a+GYn7rC6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEF1CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883743370.4121.1283502828152443622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c265477aba41f44d97ede56650b6c0e2abea49d6c6a58f9e978dfba94f5171d
Date: Fri, 15 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778837433
