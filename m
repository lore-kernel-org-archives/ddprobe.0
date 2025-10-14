Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316E32989B0
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760435994; cv=none; b=feAVxfplPlPN8SX87EJXOhtyG4C/NPBYTxz3a8XoWTG3zgupWRAIfwMThqztM1nQxaxXMWHlbTaQJh2x+e0GUBBwUQAxGqr8Uhqb9szpuEWphQadwqipgI3sTKPlxWKcSSYaHEQSIaMwhx8fals7oAy+7fxqivOw6Zad4J6rxSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760435994; c=relaxed/simple;
	bh=yZksq3/B1YjTvC5dIyvZzgxhBKz3IY2HpTt2Boso+64=;
	h=To:Subject:From:Message-Id:Date; b=I0mot6Dsbvul7HNm/JxnQgWHixi0ZZPhsvzQw17S/A1sk8D/32owwXgllpAUr0JoNoBUl7uZonmD3tOF2TI0uKlDAekK5llrfez82Ato69Havh7gxnOa8+39OBmSFKSsGQeyT7lEyIuxgtWlm3IiU7Ze9P9Hu03RYomLZY4NuWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcMc8Mjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcMc8Mjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA6EC4CEFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760435993;
	bh=yZksq3/B1YjTvC5dIyvZzgxhBKz3IY2HpTt2Boso+64=;
	h=To:Subject:From:Date:From;
	b=QcMc8Mjbj/OzjnQLqSshsQBM3TTVybwoXMkqN1OInpAm1Vz+0VL4Zy5AnkKsR7BD8
	 gWC9Sj3cWGggOnKOxOL0TUP1uzouBkqK48EQf4fwhuw6lVNin3BlRbqaNiVhnxwvB5
	 TDipsUZ94a7qWnc7YorsuBo39bOQW9SL+ixZBd60nkm042x0ZmbiwumXUmZexP7qZg
	 KJ71A+E4pepOMQuqiPFfWEBMmxx+ZRPI0RZQ731XEvIVq2+RMR1tmPzou7pM6bUD8W
	 0u/ErZVHAo6uOHvcjCF8oCJBREqtrQXnQgHSHxS1QrSH5YoJf8shWVQA8U5qNaNnoR
	 sY6yva2h2Oq5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA6ECCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043599357.2351.17209985799271986682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2850fc2148a37c33ca11bbc629545b5ecdd9681fbda61a45057a67c67be9c77d
Date: Tue, 14 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760435993
