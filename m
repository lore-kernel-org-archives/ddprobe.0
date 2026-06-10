Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3996C403E9A
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781096134; cv=none; b=MTl5KvYe8n2cbSHwxrUT6O631/NU1aU10c/rTImBuIf/C7mLcpP6satl6x9yNud6E1fRpRgrTZ8UgOpcVyqH2us+C2N/idL0uopUVaewlr3axhJDFjcEEj0CYqwJP4z9OHSSx5UVo0C4uV2BYYeC4arfbUgWTZ0r+dAFix/seiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781096134; c=relaxed/simple;
	bh=eMJUWqJIq2RBckjeizaW2UcP3XWhwf6G8uRLs4C2YQw=;
	h=To:Subject:From:Message-Id:Date; b=EWLDfPipCKFFponbDE7SlJgPkfs8EM3yuXwrHxrm7DLyzbg2ZMN0t0CySRldFO8qkWmisG7nmvtXJlaz9Zi8y/ZC5C5WVsnQXgtJMv6Ka8qYh9cQH9nWsq+ZeyNrGIUFdW0E0WPepmWvUD6N4Ly/fYr1MaS/hoKHEN/Vb65Wbk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2O/HTtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2O/HTtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E43C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781096133;
	bh=eMJUWqJIq2RBckjeizaW2UcP3XWhwf6G8uRLs4C2YQw=;
	h=To:Subject:From:Date:From;
	b=Q2O/HTtBc7ko8eTas59oT2VRn1j+j0QcH7C6yVwXSDmFPiel9fo73owP2CzkKwkfE
	 P6Zs7uvSnIN58r+bycfMAP5C4ivdN+HLlDnXKHNMd1knuBuJ74uKKkfPQlgUFiXfVJ
	 9hzz6PmPuHsH80No14XPbniFlro8aGshB3wHwuDLaSwr4aeL+gmbyFdERBxWom150A
	 vjwOzeXpwNkUFllUIJvjyXN0XY4UUZQr5Y95vSfYOT8PIAlzKMBLJFrFUwQUxCGyha
	 tD4y/iGmPz/7PlNLVIpcjUos+DretyeRrpDkhKSG4wS/5WZl/sRdM2h/VgRSCH88+q
	 him5dBlyG2O9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AC4CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109613368.31911.519980985129613839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179ccd87cc4c182cd0591ebc74109278d8695064c748dc7260b2c666194c73de
Date: Wed, 10 Jun 2026 12:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781096133
