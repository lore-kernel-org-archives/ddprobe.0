Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303CF379C47
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782924514; cv=none; b=c8fP2UpBOu86aB9eBY0FjQpEjMD6hMRgdKBuzK/Tf12Jk1OsMjvElZTQx0qpZ+zcK5VZrrT7a2eeStC97PJPGEkGq6GmK+qob0YGTUtklvIUBJTPMhjjWoops/xb5IpN7NI6VGDOMHyo4DTeIuSQjsIZ0aUHblYd5G6OfeJ1xPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782924514; c=relaxed/simple;
	bh=L0UbzTKWiUBb9ZnsGCuxBjmmI8v4LIKEqs1nbvF1hwY=;
	h=To:Subject:From:Message-Id:Date; b=DCP0g0Cs9hvgwlbH7+OivLxxM+9PCG9fsrhGYkPxNLYd3PWcBkGx5fyjiYQVPPHotlgS3PdIRv9lryuVONDE8rQ9U33t9h1cHovlb0eT+DepgFPLDkeMEH+orY20qBIP54yNAVJbV+Eq4PPD6o8F6mv4mf53zRNC5NGIFRYRFb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHVHqZH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHVHqZH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B80C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782924513;
	bh=L0UbzTKWiUBb9ZnsGCuxBjmmI8v4LIKEqs1nbvF1hwY=;
	h=To:Subject:From:Date:From;
	b=FHVHqZH9DKFaXchLIYA/P6R2iCjuWpWbnFPRHrFlRB++AcX9NnLqMyVXCB72mPFf7
	 kizOecRJvwtIHK59MFmIsEf/8NxM3Hg8AnyeQ6zm1+NE//tpY8FKksYJ82jK2lrziW
	 fjVPyK0MfUA6NbOtDK84tekyGbLiRJExi00SAkdTvcloZklPYSeFB9IaqnCwFAxSaU
	 mA4yHR+yyivedWOX97gwn0RdrwYKJtklp3UioTXoKNfamyuVcNveIcV5UvHe26QKp8
	 JBFHuvx5n9/kKkgyvLtEfjWF/qFJ9bF07SQ5c09shSiavYDB9Gm9qJ2fm2JxqqdVEe
	 B6+OB96KYNiJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA461C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292451368.679.6293546904330757872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e655b3494d6d742194f5c1f6ce73afe34dcaf669b4f7aade4fb11516402542
Date: Wed, 01 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782924513
