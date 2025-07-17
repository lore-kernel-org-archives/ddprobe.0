Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283AD7262D
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752787794; cv=none; b=KRpP5CJnyH6amFY2CsdnK5ideYc/UfIQ0PWJmUBpJlCuC8KtDC2r7XJ3ITbbKxcJuxwzIpNjTfcWxXWGKtKWWX0sFe/qyPKTbYak+WzCrUp6HozcWhKMhPo89lZrVIk6lCdgdHQvpyK+N9o1srSk7xX2lzOvC73QA+Mv9TU5toA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752787794; c=relaxed/simple;
	bh=t1JsGsTTyPaz5TiNUe6hpuZoRNOC89Bcu3l9Qf3OMmw=;
	h=To:Subject:From:Message-Id:Date; b=TSgnUwGQHFK0gyFEsa3FdtPwUcgPyO0HC5slEIDNTEWVoSjZCtZRcMEFSwLKA9GHrcRMMqeElMjmB+dwgx7SM51DgruRJ3C+lgoxziUYXnq1y+oOp/AxKPjWsTurwR4iI1MihXB2hsVbu2LlSFF4q2HiPsXsX6dJL6NV6o2B9Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgu2QudN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgu2QudN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A015AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752787793;
	bh=t1JsGsTTyPaz5TiNUe6hpuZoRNOC89Bcu3l9Qf3OMmw=;
	h=To:Subject:From:Date:From;
	b=qgu2QudNYMQLjhWYpFWNUmrEPQkyB9tKwlB8ORTUS4AJoZfpIPD8SdeTPscvsn36F
	 vHzJdtMSuzDn21zLlLgGHPoCvsIGrZoZ2RnHoI7a+YJvOXuSpeUrZpaduZH3twL1Wz
	 CqtTPg5G8Ll3g+Xm5uKkNppWrhD1Tzgh3D5J0IsbLCvRW4ts3cT5rjp+Q9WIQMUIE7
	 vjqVscGbMqTkjRmGDus5UyVvPdgI+woPPcSMcK1bvtOwoaGDszksjQSa18U9HsmgG1
	 8aPGVELnFp8vNevQea1JNTyzi6xa/uVJ+/UKSi1yEKcSWYj6ZH2BQM1vg8KHaSyhJu
	 9OweoLv6r0FGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90EC83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278779358.14081.12723065150531161901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd12bcbf20524a14d01f308202361efc2e1b30947f595ccabaf5afa2a8a12c96
Date: Thu, 17 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752787793
