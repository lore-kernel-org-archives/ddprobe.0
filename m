Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF1D3AA19B
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791801634; cv=none; b=iVcxJWh4bJysAcy4bww9Lyf2dPdGWYgn+NAmlo8y8mQDSAIOV1HEcLw7vEbxUZsr5A2csYPZEqPpewR8Zz/AxRk/SUv+BuWF3XTgSa1a03v04JvKuVOQSiKOtdkJPBKOBwNoHy38nuunvRuqwqxL8eOAt2wlzWfU/0ujGEz+DCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791801634; c=relaxed/simple;
	bh=VvRMN8JmQTkgeRwfjTde4DKz9TeyuTK27EUfniC8vss=;
	h=To:Subject:From:Message-Id:Date; b=Rqtk7e+kl3XlBOHMJ4ysLaPKXUx7w4+fd0Qjdl0Ywa7Mfok1zZabtC5ZPzFUa+vtSLjNUNMNt3CQE8+CbF1DweqvQA8BjwGdN+7xy26A8mo5GzRvR/ewaWT3F9+hus1Jg+wVOip41pW3nk3sLO/uYi4a1uyoEDQZDCF+wPZHjm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJSq/VRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJSq/VRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C61C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791801633;
	bh=VvRMN8JmQTkgeRwfjTde4DKz9TeyuTK27EUfniC8vss=;
	h=To:Subject:From:Date:From;
	b=VJSq/VRbh4rU3OU1Mu64Sj/P8oxmD/Wes8iqfWdZaUZBKvCs2dY3QdHfYdst+Qzmq
	 LczT13ga34l3ZdwzigcoJR+a6SMMiexEZ/0EOBR+Mx+Mik8v/YSEroXDkSkTpeTmco
	 PUF5iB8rOKRuFMA52kP5+xdyuhY4Tjx9wo0sLtY1x3OhOkW4UzE7B8oFFDmnR4UII0
	 cpJZ21Mqx4AnW+GSo7ZV5KZ2lJHT4m56ymPRJCNE5PM7hkfhnYpqpCS4zDcPDBkGNV
	 NCItkvAO7Zln0l84jGj9vaTlvqS8pUaHmwZVriHbjBvLWZtQCK2nUKd8CIqX78+374
	 ROviRIRtZhuqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C1CA9ED2
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180163371.28388.16969811910583017176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7e93526072126eef37095096602a0a62ea636f0e070cfd2680a707f77536d3
Date: Mon, 12 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791801633
