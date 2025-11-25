Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD0C32252D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764079373; cv=none; b=TfxpFEFYDPy56FcBxCG6I0FK08cW4Im9OD59Ge2HBvqO7jg2lc5i5CNyhXjMgdNrIqwbQfHTdnXjREbf3Rbd6SsJELtR+AMUodILoVjHseO6KtYc7Fp+umM9H+fOf+6WAllNoILKrbr6zACQ8QMGOfVAHtKormaKDAZBzkhBegA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764079373; c=relaxed/simple;
	bh=EoB4seUFVlcMg7+4hUaFm8xpeSiaBgqeqK2LLCr1Pog=;
	h=To:Subject:From:Message-Id:Date; b=ErLz3alLjsTPssDeI0eKZqaLc6gQEWbU6lI8KMxkQm4S+aztFIr3eBJMamUDKG42XC7g6h5RGIp9/9VERqICim6uvxX16WnohDezu3nq3l19HFq7G/8VMMzA0H245AuPKwtb4trjq4m2B0w0rnyeuEtOkki0WCK7oFHVFmtmiJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGD5IYnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGD5IYnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2557C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764079373;
	bh=EoB4seUFVlcMg7+4hUaFm8xpeSiaBgqeqK2LLCr1Pog=;
	h=To:Subject:From:Date:From;
	b=CGD5IYnOggUcM/tbXj4z5/RXByyc9uws/BVBaUYChhyyiF8IObS0/B5T49WlhxdzE
	 ShkRA5PhfzSyAs39AopWeEuH+4wHKxrWTSBXvdvRhRgF30nnicaXtZjUvrpQLUZhX9
	 zfE660QGGx4yliRXB2ZBLKHMiKp5VloAd6QPh3C+TvTq1KfBP9iJc9VQXvqFIEhC1v
	 v8zkk6rCzpkrAIxy5g0Ti2rO3K+jgZb9cCKoJUxxTuibqvRwboTeFnvaM3xCuDOB8R
	 cinQzh2efhK+5lcNEwhVf/mpgDCUeWZGic7V83no8QUZQb4fD95eNrVQDfLheOr2Sk
	 4IWP0E5hHCG+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911BFD0E6E5
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407937358.2219.13520616866933919241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55eb70143e7f7da8dfce6ec85eb6bd09856ff6148b40144a3c5e42693ed8e616
Date: Tue, 25 Nov 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764079373
