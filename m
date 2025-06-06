Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256D6287510
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749211195; cv=none; b=kWrCYs4tCAeEZKHYnpjgStiN2Zvf6WjHfV9lLXiOGswtSIRaXde4vqfmVTHNS25hz8JYx6nLOxRNvHDkXy3bVmvxvr4toDMpFxQPDw9nNycuPDvHa4b3cHkkhTH8F3QwgkLMtmNjmDljs9tEEwMmGuhVnps2rG+RRp4Tl3MrjmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749211195; c=relaxed/simple;
	bh=8pP/jw7ARR5YkvUxwkkjrt94LK0Rzlib788qYilZLEQ=;
	h=To:Subject:From:Message-Id:Date; b=sHrpYLsb6uX5KZOEycSRdkkNpf1zVLcz2tRD9pwVookbMRhnp+NZM8hQk88YpwZeqFl1l58obiMyQtrvyudAEAOBzS7YlzxARGK2KVLIIBnvZZaPHogbg+eNLTaeQzTRDkpRco2Nm+CFp7mvLOfEdIum43SIDFkb3NhS8g/j6XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciJG4Djs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciJG4Djs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73C8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749211193;
	bh=8pP/jw7ARR5YkvUxwkkjrt94LK0Rzlib788qYilZLEQ=;
	h=To:Subject:From:Date:From;
	b=ciJG4DjsOmtKHTsX/NzR5p2NGsyR2dilnLp5UK7lk90M5YEPHGcKxraYT6c0X9ong
	 W+T7O0jZLHbfV1Y8Ny+JD26vRQ/NylRUOFTNuNM5mf1x/+03r+lUyQAF5LgguBofal
	 qNOVsehuCnJW7Ne1fREG7C6khfX3S+Wfg5H+SsSYBDFixFUQZim5uV3vq7PZEw8ANn
	 133NFDa41XE92iF9iPo/0xCXrmavGENIfzmSWcG9yUDgHcODodAKQq9TAEXY5V926x
	 UlDXy6anUSToWpc/AK21NclRxWL51YL3TTjgqabZHy28f5l5fdulPJRzK2TV7oQd0/
	 2jYOXc6Nj+wZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9354AC61CE8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921119359.6388.3988391604460310603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0a9f832332f96531a0ce809833be09e686582ca5b96c439e35b85f59153d2e
Date: Fri, 06 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749211193
