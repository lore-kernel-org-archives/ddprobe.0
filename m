Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E23B664
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741566534; cv=none; b=f4yKb9DHf2/a+VeUHDsim6iy1h4jgFrAmM90c4g4w8/RgXkxT2BXfwrWuItMo3xm6RDeYw+cpSF4NBLvmaNED1KelwPiCyNtiFG1oDITDaqCaA9c94urYzoy6yQcIG8UNItJjQ8VU+7TB9a8EOQh6B8K4kKi9LOPAb/Fte2EvkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741566534; c=relaxed/simple;
	bh=9L0q8uAwLeT/oVt7XnZDezXd8E2P4gv6HgIhaR0j1ww=;
	h=To:Subject:From:Message-Id:Date; b=l0OL4quMXPjVZtWEtJRjY6RjzuXcWGuQjnlXWteQIrFEijV3h+uJE09wkgikiyTkEnVQKC3ysqBe0I7vhvJhzOjyjBDSXxLIbBtXPpoU5mnuw7k5JA2IBK/NQqDCBL/6Xai7/XtYKjMQqse/bKgdEMwxTB9Y6thE7X8Y2qS6xDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfil55C6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfil55C6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741566533;
	bh=9L0q8uAwLeT/oVt7XnZDezXd8E2P4gv6HgIhaR0j1ww=;
	h=To:Subject:From:Date:From;
	b=jfil55C6Yi66QPbxghiH9AOnjwkiyO1YK5YOCfo4M7TD921aQvZrDHoz4Fm2b8HWb
	 XXND5iDXEZp05VL+t9Z79UArrCbpS4ilzrUAVMHtKZF05ZDLWF4/MebcUn3kbpaNWd
	 JP+GvKuECKOvBRjjtTIfwu/ZtD3ysWFMwNLyYYOl5lkKq3zfrEXbMzUJVNooNmhi43
	 9PSUenK0sQUT4mNUKGzcOb4kY9WIxA5D2hDTGTEKmzKPHL/lTHBAPmaL6EjfRg/Bkm
	 JdETBoeoCUb64vTVMFKk4JfEfLzSJok+B7Pqob+1coZ4K4Zv0Xu3aDXnfiakmmi3UF
	 ctgUN6mtXJo/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9406FC28B28
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174156653359.25488.6474246332016018531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4050bc916dd7fe25a09d3d17747ddc2cc12ed8bcf51df5f7fa921e36b1232877
Date: Mon, 10 Mar 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741566533
