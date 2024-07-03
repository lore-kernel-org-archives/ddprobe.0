Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5871B1849EC
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720025723; cv=none; b=sT7OsE5BARKrWaj0oL1iI9jBjkxVec4afrBXr/gfyBhYfDwSQqIobNs9OEVAzJJ3KcLbf0Bd5URrRldm8/YqLdtW8vAG8In7SAdq2lz02lnD4enTmV/UHBQf5O7DISpy7OO3Np677VynRvps3G5J/cNe806iQnEmYP3fPPMhm7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720025723; c=relaxed/simple;
	bh=bCfsGfr6CcNlO+2wwwEzmerS6Ljxz0bSN18ezHWhWxc=;
	h=To:Subject:From:Message-Id:Date; b=MfgQ8zPJd8n+4UX9JMVOelg8oBqLL7WPVKEl+fiqyVgh58AvRcqSAfninJGtNuWtLiSBNgZ8h2/kqoZht584cTV2w2p8hpjImTehZK+4EZ1hs01xA3QjfoBQ0e04XeIref2h9D5QliF0Q07SjQUk3VHTgmWPTGKsKKBC/uX7Ty0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSfprSly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSfprSly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38D4C3277B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720025722;
	bh=bCfsGfr6CcNlO+2wwwEzmerS6Ljxz0bSN18ezHWhWxc=;
	h=To:Subject:From:Date:From;
	b=rSfprSlyW0+T5+CAlFJrH0Celo6fLXzYc9fBaNyL3DMdMfnrkSPmuYsxKI1jXCmDU
	 Mi7Zz3DZ1vTrMB+v3AN30tXYek8kQU58WogBo7FY4Tk++/KRyC+7SXcWIeGln+xHQ7
	 L9Wdym/W53get/yu7t6j9fYL3/2/0mJZfvKwZ9QhsylgDlzsw941mXwY6FI+dBGdY+
	 r/Wnugv24pAiDWgEECBQz/JYDhqu2MBoYLkyPwSH7AT1KuTKHuzcxkldeasAbFjbdJ
	 m+h6msWGbogJCKo9M+As/44VOQcRz0sINbYtXS8XYCfEfULqeGNuREZGUuiOT+6xuo
	 Wn4C9DxHdTuiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4503C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002572276.22424.14985815961202111997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d98e368a241fcaab75fe7350c652b07f0b557b86ab19f12cfcf976111cac267
Date: Wed, 03 Jul 2024 16:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720025722
