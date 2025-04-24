Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2664E502B1
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745495394; cv=none; b=YRCfLmsMfJtbAQ+SGI76i8+0JXfgJtS8ych85yuBVU463w+651tU8WdqqJYzjT2AeCY6RvSvRmt+fJ/s7AqOr4gldkDQoPllU6hGFXUiQrbeAODvchrOLpAQYTXitiP7O3SifptRJmfv5FyzHt4EmbGJn7YVuiCJcrTcM85BE20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745495394; c=relaxed/simple;
	bh=YA2JaID9izZDKS2pVVP7sqbdja4gr39UH3kR18e+MH4=;
	h=To:Subject:From:Message-Id:Date; b=MfjjUrRqT6pXSzHn35r5k4ZfIQsjUnkky7h2Km6fnhFmNeFY6Apx40ONJqtVhIkiFpUSawXKNUSaPL7Z/pANhRkvMB+ALyoQ3rWzkeW2TbXmTUkm9Mkp3+5z+J9/VpBZ+rvC62TuwXNbS6gazAZv/nlvSfd4gb+Fq9vd5JTyZXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocGTlXzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocGTlXzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAC2C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745495393;
	bh=YA2JaID9izZDKS2pVVP7sqbdja4gr39UH3kR18e+MH4=;
	h=To:Subject:From:Date:From;
	b=ocGTlXzgRuN3NIG8t14m8XQbfBLZFifp3VxwML4x3T+y4UvkXDoRV+V3xSgrMR2Km
	 BQP1ID5hMZAuPpWFU66e/+oQX0dvCUJuN58A7pDIYX08q+YdiKqK2X1ajIIW5WpPpJ
	 Rwmi4VW/0fFXBIVzUadpGzUL1Z8eTfoOxnQVB1cwFw2y209x3bjH04yPZ0EuV5AjTp
	 +dv6J3kPd8bIooprJ85H07wOy8/0AyyAkphsdENq5kpHPWFF4hma7ky/HMh0iOM7TT
	 fqz9OynFFmRGxDhk2Gx3jLsC71OwOtcZK1rxzCa0q4VIiKzPSb6+jg8rpCuuKeJgSi
	 E275uG3jamZAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B8C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549539357.12531.9308335736903683075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a25d876da29890c693ab4b9e1cca7a602c52d1971d30b93575a8adfbf461d4c
Date: Thu, 24 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745495393
