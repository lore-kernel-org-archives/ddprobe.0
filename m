Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146A92DE711
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763128194; cv=none; b=KfNlpOCedaLuQJzFuMsM03hLJfXkkRCbJkKUwTyuc0CmFP7hjdT+yZy/Fml1JNTbYqHP0+UEBhLRLhZeSazmI91NTvu3KYzOOsXjNemr11ePPBvtwYJQ5ckKiaM3FeVW0wyFru2ZE5fCIXBIcSIoNG19gV67dBurRSZckyeIqCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763128194; c=relaxed/simple;
	bh=h05vMk771LjORqxUpsX+0rq7tG9afSO4ViDJADi5cKk=;
	h=To:Subject:From:Message-Id:Date; b=FfVr/OpRN2i+ttNIiWX+NPkPdttqsLPMYSG1q7INULNzjqcDCK0s4XzS8z88XmZbAQN7h4tzM30F641lEFeScJnX+pF4t6WITlaCKhBxhtBb9Ckp4KdB44XJ+57oSljqqz3XwtHIC4e5moKqjz0SsOOo60DR2uD7T1yD4BWinUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouiLt/0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouiLt/0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B36DC2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763128193;
	bh=h05vMk771LjORqxUpsX+0rq7tG9afSO4ViDJADi5cKk=;
	h=To:Subject:From:Date:From;
	b=ouiLt/0c2Zh2Xf4Vr1Sb6L7eiRgUYKGufRDTzfcj/mh0lFoVs6ZKduGbwy5Z3s1DG
	 +IMPlrf/Mf+cN6LgEEiGJzduut2KE67WDvNi5upni8uV5awj6Qqwjdyh+3qwsX/3dW
	 tpKQmFpq5p/sYzLnDMOewOfTa7Cj9H2Wpbk6EU+icm5ldse/k8I9mkiD72gGXSdfgJ
	 lZU45o/QOkn9PpN9KPnaNNnQ8hAi7IRYmVbZBD7P+r4gwJRNAZ//umsIgvYqpdFf9Y
	 qzMaCaRD9luIa9V6IhdLHnx+0ksKpvGHzOsg57dodjVSBoQdPH38Rm+58FNoIGQh+e
	 Uhsr2Yp98WGpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5CCE7B0E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312819358.32194.12369449712344807269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094d5e3aeccd288a5f3c8a91463dbf0db7e9324ea2ebaca63aad73f74de88d05
Date: Fri, 14 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763128193
