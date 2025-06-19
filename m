Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA9721C184
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750349994; cv=none; b=QVNXizmxXsl11FYXHX1ITchO6RkVU+UYcQSAELSSkB7I/p7WOl+J8n23eDMKEngPHOAykc3BtDSp3x3AWQq1UzBI51kLmb8J8XIBO0j8PqVq1AdDABTZuLHskFteAEhPFuMOTbGG1foWd4nShMOyXJdMtI0mnIVBpQ3Sw1zMx1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750349994; c=relaxed/simple;
	bh=6UneUpGGxuYbrG4SCj9JMQzxDqpZHM0sAdixq8cYhLE=;
	h=To:Subject:From:Message-Id:Date; b=NG4oNrm7UY5WU61IGv2XRJsv5VJu0+IDutVw7RNcXLzdxw8m6OHYGRWmM7YcOJ1zP/0LV8A9MXH4vBUFWlx4lW6o13julddkDb9VA4EhXfbsKcCEL+krKo8zMWD+rr+eUHJ0FDLh9Pqu9PyBMB0UOreifM9Of0jrWb/zSSbUxmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNTkDYBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNTkDYBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8478C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750349993;
	bh=6UneUpGGxuYbrG4SCj9JMQzxDqpZHM0sAdixq8cYhLE=;
	h=To:Subject:From:Date:From;
	b=uNTkDYBMlhayjeLBLojCBITNKlJQXgofmRC5dfp8iF88o3IxK48BMyc6JB9Rpn4mi
	 9KvFCGKsLpRrPoEPQyvIWsnYmnhd41GITOX2yI3gyfVwQbyW23Vk5A8i3JfMyC9RGf
	 kARFjo6qJ1cTzqaz7wB67kuqN0tWVvWDj58dCliHgazMAeHXA8iysYr2I53jz9fOdo
	 OC4wU2vqjXwKJHFxdfTW3Oc+fzN+fhfv/xLZxKQruooQtsVHiNpX6wdcg4K6otPekn
	 m2fuoSAR2pnc+HtRPmIdKXZU6h0RG3bwLjb0kItWAadjInfi8v92JKFW8teIKQ/9Fy
	 QNe7yjaE9FSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93459C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034999358.18042.1891168166602499630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba994e261e8a9b8c2919036b95649db1e0caa4b66dd79d4be421bdd4ba01811d
Date: Thu, 19 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750349993
