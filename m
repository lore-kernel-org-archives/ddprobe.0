Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3272E3706
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751701794; cv=none; b=Mar8KqGj/gA9QNzidTHfqqY15+SQbm5gjMJ57lf67ekb46hLvzBFq27JlD5FeiAcky8IYTv8SuZATGW6mIHzsL1cTIDw2Qhwj++ra+lvs0kWNzFTOe5Wg6kyzWDaMbYn9A/XJ8pUoctESu3rQoJ6/57RjCk3xcA/UATivE6ejjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751701794; c=relaxed/simple;
	bh=Jt4iPJVtLhRtgWS2lJAaYFQ9BS95kukMiVKwWlgEiG4=;
	h=To:Subject:From:Message-Id:Date; b=mPNCBDiqk3RvPxYf+tSwmE5ZanvemkK+p6OSCd3HdGneRJsoj4tzFcWtbZ6Gvp1+lNn1ZA+7rzY0sD8JcS2zZ8wEMcW9lDe6wYDXonDgtT2VS5GUN9/GJcP1JVrUN4ShmdDTeUOGzx5EZR//6vLgkldd8erjw220PhFRHP0968s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHUTXJc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHUTXJc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B60C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751701793;
	bh=Jt4iPJVtLhRtgWS2lJAaYFQ9BS95kukMiVKwWlgEiG4=;
	h=To:Subject:From:Date:From;
	b=oHUTXJc19Gx1zTuplyIVAfuLLHZnVVQRHPpG6L+l3yG7wEhcsgTZUqZ3QBoKALlAh
	 AcmYqIOxI4nNSZvNwBiEXNz7erfn+KFx2L+0in9iYEBAKOshSkBNkBQ43A2oXUnr7P
	 XItsqfPIfQypIBQQC20dL4AvipdK1pjAHkFohKPU3qQC8aCbygi+buGx7DJNPnDrck
	 J7jfcgTKPs15a5uUJrqmQAnq3spiKlKfy2HQcXmx72pc3Iqj6dWx2zc3RlsGwvtGKY
	 ARJqAdgx++pxHobCctidolNsY+WKllqwm78CDcTFw3pe0IiQjrwERpxCOZX3qnw2LL
	 Y2lqdL2aBSDsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D9C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170179357.29337.1407378380079535003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010401cd784b5d3e8700fc837278fcc356434338b96848b5002fb55b941e0551
Date: Sat, 05 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751701793
