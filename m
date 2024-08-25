Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B154219E4
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724604354; cv=none; b=FzjqImUMDnjDTBSudESq5xW133e8iexvkKKHHs6h8FT5GnHZCWaxRddG9dJSdMp5Ig52fceFALV9DDGd0LTMC6WkRHD8EcOvE3Y6pR7pWwwhzZsm6II0RWPKT9Nm/Lk8zT1O1tQySa5lzv1ocTfs1A5/T0EkpFPaUDwFV374szM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724604354; c=relaxed/simple;
	bh=oQ9gRMKfdgB/tfHxSMeYFdzlTAwvenfb6OYGwxn8XDU=;
	h=To:Subject:From:Message-Id:Date; b=Dbo6y7I61b+JXUdc3BfnxbuYJrf3JGR/0coJvDH/r5mksBDdKXc8nsjjSJxvP+SVFiT+aozGECON2AX1bidqt36G8IaAS05r8d1JJ567rV6SIXHzNUIXIHmE7rnUT4MteS+KMkHmD4K+XaufzFJrsPp1hxznPrwQLN+GdaKHMmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwDFcqEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwDFcqEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8A7C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724604353;
	bh=oQ9gRMKfdgB/tfHxSMeYFdzlTAwvenfb6OYGwxn8XDU=;
	h=To:Subject:From:Date:From;
	b=FwDFcqEtVGaBv0GiS+U9pZZ/hvZ3+aSL43I+rX9bhGF3Y0d3gYZ+CD21IDwGyuvUz
	 HjukwFL4Cm0BYko6bOfyxAy8d+L1O93EUF6xGpaZhpbVzctX98pj/yL4K7u7FtIwUV
	 S4S0FI+4mereXEWP+SUujEtIJ9WZDpW291aLUQum9MEQP7+JT0a6Ret+kcFptmUOdY
	 7YPnhltmziNnmGCcNVl6dGUY/0FTTWJJl/p721AVBw2MSe/pyvLd9SRWf8ptBNihl1
	 Xf1lLMfzrRhPBqsbphnv7GDZyaBnjQSKQy/Y3U+BqRp1quCl4SEzcnyvYq4DekKOKM
	 H26jLj7k8pI8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D9EC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460435365.16470.8311263145095616769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b1f73bf52deab1f831500fe96a9692b6072a4208256e0e77550c436a78e178
Date: Sun, 25 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724604353
