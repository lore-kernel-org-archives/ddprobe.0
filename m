Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54ACC387566
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788936034; cv=none; b=ZzcbMo76MuTle6ocWW+ddeZ3H7tpoU7ykk2kOJdWbCeDjXQcwGBg/NgQcrVioIJU2a5dUG1fp8mYd5MjVIRYRORgTbg4p6VgBfAH3PyHCZ28LgK56Ul6z9QXA8Xvtuv+es5oJ7+a/vYJ4sonwHqsVBtfCJaUkDcpKobG1KdMNsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788936034; c=relaxed/simple;
	bh=uCKsny1Ok1vR4JWiNI68hlrMDxAD7t9xeI7n2y/VJBQ=;
	h=To:Subject:From:Message-Id:Date; b=uVVnss6qoy8Fskzs1+Tvv0cS7cy2zkueR+QABgjy+H5oxuoJ7Ypy2JgqzqDrxTMpMnWM18CPBWCq8tsBxd42mE3MDVm1UCGRzds6GxIxCTgzBhyumVgqqyhYew789sa3bVmk25cjsMKb72rWlAJ4cP8mlRM41GgLZaFy6i9C3sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+fQiUsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+fQiUsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4D0C2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788936033;
	bh=uCKsny1Ok1vR4JWiNI68hlrMDxAD7t9xeI7n2y/VJBQ=;
	h=To:Subject:From:Date:From;
	b=d+fQiUsvZ4ZJ6HZok2+fK6p4xc19XF8K3qexg7RmFeJ/FvX7ke3p8Oc+WO9f3i5bE
	 X2uI4JKK4cCVmL8UylcHUpozqpaDk7k8uFIu2D1bzr1P2aGQdYuGxDFk8dWE4YJrHT
	 VnjYluQ6wMlojqTNwzpcZGbBK0o+KtOCqHWZub9y4VyjCPAwvTbs/fMHadhFTMe+xa
	 745bfm14O/Ag8kEJ3jclRLTmX57pzbKWx1kVosg3k68033QF3x6TyJxAwqx4CPwWUr
	 4iuF8whd03hUCaL/KKpCeD4yTEUayiCR6xqz3sNI/5e4LqBi2bbnjuhhzGQmCWqwKv
	 rFuiIPuRsBEsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80AFC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893603374.6444.1467729485140095105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1886d0dc411edd6822b5633ed8b095f6ac0e24da54a22501314451625474fff1
Date: Wed, 09 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788936033
