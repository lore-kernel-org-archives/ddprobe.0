Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDAF481FA2
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779119434; cv=none; b=fRPspDK9DbLsHR8hESp8kGkwDIL51VbnD4B5CCoz+ZRu/pb6C1q+kf58dOASjZOOxtBY6HxZI6l5YFcSdB76EKyD/66fyEDRmB4KXT7c9tEQTJD6TLkcbceaUxo4hYKl6yBp1qnWCYYoRPqBIYZVdtBk28FIYytwvQS90JmMIYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779119434; c=relaxed/simple;
	bh=qzXbUsKcWJ95QoC6OeT2zlnmj2T12TAGck2yR6lJyr0=;
	h=To:Subject:From:Message-Id:Date; b=HxPAfJrkl3ULlWBoGvGVEdFeFR1n3j7rqe2Iw7uZOQxbfs4YkC9yPeA0sQQNviNpTZyha4i4IiW6cWPGIVC3IeLNwGXOtShBokDGkH8eVYJhciVXegUfcFmOZ7zSaADm4EKHB7LzS8ImQmSE39ZlVGSQOujy10a4TtDAwdS/QFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEiZYhCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEiZYhCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2CCC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779119433;
	bh=qzXbUsKcWJ95QoC6OeT2zlnmj2T12TAGck2yR6lJyr0=;
	h=To:Subject:From:Date:From;
	b=cEiZYhCN0iZx7s8Ka2pmmSZyXvMP2T8iLq2muDUHOWPXXR819IjBmRESP6Wg0UkDF
	 x7wQp1IPp8md7rhHDs0mbXRg38hf6FdtOjI0qntKhRj5QtDvGMNsTcC1dorAXzf02N
	 04QfhtbXbF71TlK8rZIlIO/eAfarqj9lXAhOqz0DZPjybxEvaNiD1cBWqj8d7iQ2mr
	 kLJnnVMOdrJ+7PxPvnxt1m/4i+VW9JwZVp6FWelYGgpUNmympkdraP1yPS1kovq93C
	 eq+vg2a1eeQc0AzUWPKApD3ZggvaI/7FkkZ+7gMcNngJ948bQJ9d8S0N+QSIFFppZH
	 AJT2bJI2fEI5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD484CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911943368.19814.6331232010725546613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c40ed15479330a5d28694cd25ad7e365d8fffcf7b01f549b8e38bba6ae456cb
Date: Mon, 18 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779119433
