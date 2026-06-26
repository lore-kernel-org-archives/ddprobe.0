Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2AF2FFDD5
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782448654; cv=none; b=RR3RdtUrR8c/JqDN/U0ZLY4GBcrlVY9G3XFvL4wEkDOZcHhKSH67BnKKMQfxr16k2J3pVzAamI67wW2fmkygxJtlIdyZLG7zsSWyFrw5HEyO0TQEdS5Pkc7ZbQrJ9MEs/4fgTLcVKgmhRVCgAJVMxyoTlTkd2rp+YCLKx1UIAPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782448654; c=relaxed/simple;
	bh=UGLhMiw+S4gglLWmPzi98dTHOeFATEaycVyH6yuEvNI=;
	h=To:Subject:From:Message-Id:Date; b=O3vbyczB7JZ5QRuh3s2hdwlOXes+nH7qHZ76EC8uYfskwIdg7FUnB0uiAcnTVCB71+I4pQQv9kP59AJfiRIFgRIdI95Sn6akAe0hKiJR2kOVkJtt5hdWB/oOabKHfUL2p2w4o8enkcxnf9tvdYKBi2Mrf1rJTHYQpkKsLqF4kEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqRKQyS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqRKQyS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E539EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782448653;
	bh=UGLhMiw+S4gglLWmPzi98dTHOeFATEaycVyH6yuEvNI=;
	h=To:Subject:From:Date:From;
	b=eqRKQyS68wfYex9VtsmScFEvQfo+GSOwoKI24LuQFcILdT9XIlCAMu9gqdeKivMct
	 E9DaFJNAJ54CPaZV2lWASnM8FB2XX5j8sCP7PPwZcFplWeDhrKp4yVJvpXHpm2K5Ls
	 xd7EVNOqL75/zduMHhohuInMYlc4Bjr5mVhJd6BnUie6ooqf49oMD8qbMrk1sY08uu
	 6+i5h5bwBiXAspjovpfM0MqPakKEm3S8Z63q+aIQlWyDsLvACOhSEZIKOMAuKz/CCE
	 i2U3p+6fcFiwpHQF7afq4a/HuVN7lA6EFxhL+x90oRMZ+dEZIBUTQGWsWPFfWHfRdH
	 iSQCSsl3ZOqvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB96CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244865374.1025.15774828171538314649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d44c347d1dc0a29cc9567c7edd584b5ab4e6248cf9cde6e7563c9ca6d8c97f
Date: Fri, 26 Jun 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782448653
