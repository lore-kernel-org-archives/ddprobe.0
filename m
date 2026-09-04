Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF9F3B5837
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788508234; cv=none; b=VsU6jhb5/gRN4zYaoiX/ZW8u7loQpWAQVXv5mXkaJyHrF/xzyApPPU/JXxAxXjuKNbS1fhmYvBDJr9VIPKcJmkp/+lq+cw1zSrM8JA6esyqLv8sF+ICNrrADcgOPAkjArZxMnEevjlvX94/dgcgeuJ1xODeBlHA55KJ8pm1BdPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788508234; c=relaxed/simple;
	bh=E+V/JcCxLkit+nvzp8WZ4D+DB+NIy3JdpTs7T1B2fx8=;
	h=To:Subject:From:Message-Id:Date; b=FGXDL1HIIq+R2w/HkCR5xojtu637FNJA5xpmnLSAIpg1/sJkQggShVngDyJihz2s0ueNR9m6kAVOW/6ZzODtSwuqYa7XotnO3wFIGpELnzy5vpJAHsSwnLMy+Z0iKWcSiuxiUkFkFzaWHSjLkSK0pfdZGuU5RN7GCzmjikUi8Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUqdYILg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUqdYILg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD095C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788508233;
	bh=E+V/JcCxLkit+nvzp8WZ4D+DB+NIy3JdpTs7T1B2fx8=;
	h=To:Subject:From:Date:From;
	b=FUqdYILgqDl3vthWbvEGiaoNBUME75ntd553VaTXfBsbVRvmbqeK3qaIxIvCGZXlA
	 jZu/xHyRC83/lRzdy5fBiOzGcF3fq+mSaA2Laf+FSjL+N4BDRu9nPje//ojJgPyG8J
	 gLA9cJhf214DWcDnjHerDp6YgO3dCU8svnrCsgnZ6QoEzcHTuORjory2cPDCSx6AdE
	 Xi6Hi/hzAD7IjbWPwdKEwbfQbyOvmZo7ufHYzkobYM/wRLlepaIwCNDXrxOB/kKXwI
	 I/IxTLypRBku8+NWmIhSR7dMGFnAoEzbOY7aUhKACFLl37YJH+KjXQHqLo5GS8z8c2
	 GR9FPJZLEtlIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8E5C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850823368.2526.4254718385197589206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d3ee80e9cfa1eeabe472accebbb75900f8023d371350d6b59337ea7108b3a4
Date: Fri, 04 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788508233
