Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1F51E7660
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766349834; cv=none; b=sLezgY7+98M8ucbA8ZpDYtOCHyFhhImptuNPW4RaJQ06wQwzatORXxGqFSQwCs2TJi3BOPCDylUvxqtrQDbRoPUnEmwgm1xjRwcSLG+OZhotxv84JYT2nu8fIIXq3UeRdyO/ew2mlwCM975XR4B1vy7SsqcfhYKQLynK6vivd+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766349834; c=relaxed/simple;
	bh=M6g27yI5Nya0IlaItCX29q8MBLuYj8FQ3mvsaWEbI8k=;
	h=To:Subject:From:Message-Id:Date; b=Qni16ZTlfOquf3kt70J7LExpJgQ60+Ts5IKA642mIWLsXJZuicPrWLA543mcpsbaVSubHUK8bZx6cZyBbD4TYNjYIsisKn+5ysy+KHl62VQjuk9A5GR5WB11pvD8Um0iwwFaqLr7tybptbVAtkWfhkKMG2fPhEbXYLDddIoQUvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9AUWZqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9AUWZqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D36EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766349833;
	bh=M6g27yI5Nya0IlaItCX29q8MBLuYj8FQ3mvsaWEbI8k=;
	h=To:Subject:From:Date:From;
	b=L9AUWZqBdz7O7uwqY6Zt4iuwpA98GZ2zZF5v8EaqqR7BdcVj7ZayGZRAYnthkyTaj
	 TtkavzWoYcuNGGdQIVoLZWDGNCPz04QAOwvOm9Zz/K0HSqeG7TYigDwrglal/Mxsoq
	 TYDYoiUnW4R3Jv7vY5kEMvbL5gBpgveF6sNcF5HZt6TNUjTGZKeydfpL2I5n/m/pVc
	 cNn8wO41swY6gUIPLfN/cXYlfj+GPe95J11s0UkFWGujcH2UmX+J/vSFs3nzQd0+V4
	 MSs8tOqfVLfbJXpSZt+ZaO3k5E4qN8K+AzXU19zZoY+POx7wMabbVGzAD0mULZMRk+
	 jfj6UZDYbMJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8ECE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634983358.29882.2227510322563160317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da21a83de1f83293164cb9ccc79ed9a3e27d98c738ad88eb57ac549aee659464
Date: Sun, 21 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766349833
