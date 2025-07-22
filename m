Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC232AE72
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753151394; cv=none; b=HiLxSEI+n9zhIlNFMe83wh5a56oMMyDnYax2M21QQSQX10v+7lzWOL9TZvZ+7eEgrDZH98Xs2M1vgIvanePmVKxwj8YnRVxa8fJaWU+DbI8LUhlOIOthN7enUA3PbMCta3gaz6jSTPbwkOktBlXfRVu9M6vS+/N165o2JPwLrM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753151394; c=relaxed/simple;
	bh=hyRwnD5OXAWqq68pjJI3YPwkXSrVku6PidujHv71a8U=;
	h=To:Subject:From:Message-Id:Date; b=gQPhOLtUxRHAEQrqtGtBaoPudQ3rOwVBVh6XIXeuwloc5XapZSI5qzRZZ3tw5ug7RcQ7Fmc0tC7/iFp4T1vY2uVqe2L5+RaxqWI+O/SIUAYOHM8AnFFB9j8ZlKSkW3LADTDi0k+dDVIf7FxzUYgNSr/cRmGUsV3fyH0SZz+gJCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxzPCmsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxzPCmsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC49AC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753151393;
	bh=hyRwnD5OXAWqq68pjJI3YPwkXSrVku6PidujHv71a8U=;
	h=To:Subject:From:Date:From;
	b=rxzPCmsMlaEhx/q4iwUOI78T6wUpKZS5rdxPqflhGwkk5YDsHWz0JulO7sfr5f2BU
	 UTAzvCrDy+HBFtlaSwLMzdftkUSG9fDTanssBZr2eaw6Cns4sgMZBe7VqY8HqSm7co
	 xpsEkIfNn9gP1yNPtXHgUsQrGjS4XnQkuwDrjvIBmykHPO1hXT5ZMy0OZvtgzmjQ2H
	 ev+uerTbZ80CmG+ANitI//QsvOtMVxHYCOM4yO0UhJlTmzszB7CeYyIZO7I4hBctoC
	 Utst4RlF4LyjMN58nZPLN1MHCt/0pis6r1Y5kQUJ/glL69hFyUSzZvK1N0HPJfEQ1l
	 Wd+Wjf2u2uSeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593FC83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315139358.32543.1964907305433752258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a0415cdaf5876b0b816e12083c493fa6de698ec2d507c38423428e7f606210
Date: Tue, 22 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753151393
