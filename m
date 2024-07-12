Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B431FAA
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720745243; cv=none; b=oPkytwoRafABSqDxCu15quycsNMdU12HKq7xVzBQw82w1yxnx03nBTY3fkG5pqFe0zt9i5FWNZuQGpFBArJPDyc8dToB5AFnyIZi0OZJixIwp7ssGIu9S8LBxqLSPoEz4ndjAJZgogmzEp4iAxv15kqdXOrehf7h5HSiPQC8zUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720745243; c=relaxed/simple;
	bh=geYJOq38k/lTyFmtxx+MZAt2+fv5zvtCuQgTp4TI1vQ=;
	h=To:Subject:From:Message-Id:Date; b=XJT6l8+7T8uX60gw6A+tDB025wq7goIX8OxdYxuWBVZ7QMwr2OhrRNEg2hfiqUGfkqeEwSGE6OYklmBseeNGlzoUnTP4oXeax8EMag3eVM/J2iv+W14feAtStKh4vQQyzd3Ed0FnDSTlQojAmE9qmnQgcBxvuG4hFCUoIixbPno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulyLvH6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulyLvH6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7106C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720745242;
	bh=geYJOq38k/lTyFmtxx+MZAt2+fv5zvtCuQgTp4TI1vQ=;
	h=To:Subject:From:Date:From;
	b=ulyLvH6svqwMF6hubabXw1OpS/Hb0JnmAmuxlmYbIthgecwtueOGHCxj0grt0hXMW
	 pJHJSSvl4+1ZcA/rYFOOElySzPwprkvuxTaAcykbCGyd8SqvAzspWYZvBTXSUJaFUA
	 vxlvpYivp7UGWX9pgX/JgDBAnZ/0lQA5IdkNAPlfwOTm+uH0XrVRn3VrF//5EHZfto
	 lBcOBhrxRD5gO18O8M9nTf8A334jfQtkmq5QrPmeQuoTO8uVIL8LSBgYR5HOtNbwNC
	 CIX08D7jGpsBI6txOznWgBbx+qHdpEEXv06k2aWl+RVRMmZEum2fjZDiJgDMqX0jY4
	 XUuzPeaZ12g2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE8CEC3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074524278.26460.14160171412992973375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c209201f508a28e17ce1a4907233414f939e5ccae8b0d73478da801149a5080f
Date: Fri, 12 Jul 2024 00:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720745242
