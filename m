Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1F3819
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731888954; cv=none; b=Pf62jVK+mhRxLkNPq9RYudFLlZZzZFgdJ7WaiQ1DZ7cQ4Aq2s0ZMEKXNttRPKMEDe3TsfYUKuL78f/7IIQN836ExOsj3wQdET8iZu19lFa9E+oO14rO9yPmk9OsKEENhAElFdyIE9LFl9sdADuOwi3V0r/8xovNdAS3/3Kp4cjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731888954; c=relaxed/simple;
	bh=RmCHJWulNRl6ApzBNsXvJqYMEQYjwTq9aJ2dKRmOLug=;
	h=To:Subject:From:Message-Id:Date; b=oAUcS9JIM3gKgbVN/biyNuriI8qtih8D9sPMlNOx52N6SgQeNuM4xbzRJsYYuRIu0B7su1zPYzsqarIniBzdScnIAUbh6OQscWbu+VEfmAC8/hv1BvonyDEGlXRHHkUSR5ZFkEMnhVGb/hy8NOC3vIHxvAJ9cQqKExESKZnDh+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soxVCceE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soxVCceE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C463AC4CECD
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731888953;
	bh=RmCHJWulNRl6ApzBNsXvJqYMEQYjwTq9aJ2dKRmOLug=;
	h=To:Subject:From:Date:From;
	b=soxVCceEOhuYww3HhXhoHVjZi73uZvzR2v9Y8wJmDxtI2ATgiyGbuvk3BXDEZV+Zj
	 VaLJYuMD864vnvTdqnX3FHSbvygrf8Y71LOf845LPsetYDGljCJX/F5Zpws5M/Ekzj
	 FZebW46MppyEsE3vVPuwcpZ1rursg9QaslT+KEmh4tN+FVdPlOJeFWL+gJNTEg1ul6
	 zyfEODhIqVS3UIbFjENlYQ939XtH1XWqeiZMYNFbzqVU/Hke6kzNk3saj2A1HYlMlv
	 BJW51pKLnYUAgawiRYIiR9qX8YVVsUW0mJ2Pp9qxWdKgtO6y5gUO3t53gjt5Ew8YY3
	 uyejrSiN3uR6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72A5D10F39
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173188895367.13822.11282244425497546491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12cacf4fd1ea00c4fa6d4401c1348417dbc521f9d1b95d16b62a566e63ca736
Date: Mon, 18 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731888953
