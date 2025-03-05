Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3AD1D8DEE
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741214934; cv=none; b=T9YJRK4yyVVMlDhXltmMruuPURZ/hZZEhx7kVnJeBnPFi2WSADOLkWJmDwZJSViDYXdRMFMUDEIhq1nGLQVqlcx9ymtzfavc/oVlgiyLxL5Hmba717fDzUpO1RxakKudktBIgD5nj4D37cz9mmHQmI+AVAnZ+GoDHRSa0adXFtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741214934; c=relaxed/simple;
	bh=+XSSFzidzdGmKCwxQtAZMyOEvURqiETyjMUV2pGhFcs=;
	h=To:Subject:From:Message-Id:Date; b=nl8FvRT3pOvsGxv2BGSKNsYdsnnXbUUjcVDSibuDn8+Lg+Ghlt4JU6eziNbZ/JTax3595WXMCtgtrcwX/Htxxd9Uj0JdYbl67CN+etJUkzYBgzUwt3+j/6Tv6ZYBWB+QvwmI7NyV28qZvi53veqFg6Ml9E9bn+zQqjf4wfxftxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIb1Nxjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIb1Nxjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E7EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741214933;
	bh=+XSSFzidzdGmKCwxQtAZMyOEvURqiETyjMUV2pGhFcs=;
	h=To:Subject:From:Date:From;
	b=fIb1NxjdNDGynDy2kfeKmD1tHwTUwc61nL4678kHAI/bCLylNcOU8lmruxLl+ggqR
	 /dwPISuETIAPtsLKuld7Og4CRBfyLm5hsmvgfnH9G3kAn3WXoNCdhBUlQyqqsm7FQT
	 Gvz61YLf99i6EbQjw5XDa7MgGlw4RRvmdOlJxJUoLmT5hR3pljkEBJMBh1c1vnPz7Z
	 QoewwIISrJiXcWMPw/SujiShkmHUx/PNUp0VV6HGCMsRZzKJz/g1Zhf16Lyc9mDidv
	 Cd4QpaCwSlqrOpxl5irn1rYuQ84QcCRyugFitx754/w9kdLls/mQLZM2AtbtK5kDOl
	 1bXQd3d9f3Y1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC474C282EC
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174121493369.2995.14796070942922521687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dac88ccaee22cad6f59a734e30c2b8aef802f19767c550637b945448cfbf048
Date: Wed, 05 Mar 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741214933
