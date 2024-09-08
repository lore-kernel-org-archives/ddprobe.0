Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEF3158A08
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725795954; cv=none; b=eusQtUN57ekkpuT37Rm2qywP23S714P79N5Jgo8CFiGiFzJGXJORYD4+ne8OpBvxVMD0ILR894MVJu1HbmNGut1t2BauljTkTaqotguTdMqby/sNoTkEmiCfKEP7WsYwSqZfnT1kEQ3qPqHgIns/ThnxlNUdhX9zWXmW4PxkFxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725795954; c=relaxed/simple;
	bh=4yl4ePtU4MswyetsrvlwJWznsKrCzv18jWw1zoLqLW8=;
	h=To:Subject:From:Message-Id:Date; b=TVyXvXs6ejwYEN/tlUbaHYPNZg0uU+h+pXw24wKkT78B7kEHuzqcz/AfSMYQE3DOT1y26YAMsL9IEVtPZxq2o8k+RYZYjQkhEhDLkz9o/YJhtxwZFOXLcnDWc7Z0sJ2l/YEIRhz2w/dORshG2UOS4ofi2RcsNV+01RDnJb+RPGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVBLfhed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVBLfhed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE472C4CEC8
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725795953;
	bh=4yl4ePtU4MswyetsrvlwJWznsKrCzv18jWw1zoLqLW8=;
	h=To:Subject:From:Date:From;
	b=HVBLfhedhoWS3FAo3RT/zMa8tjjoqDcV9KJYAKdqwvoQQYphwd7GMzYlJhgYCaM2b
	 5e1ifyL4hFwXUvoQWd4uZz+g0nRN4fwr0JAawgEHYd+IS3gRGmXhISmePknBfyHIa9
	 No0EKaUE+fbMpvWvbg1m/4bWgaMMho+v9vSm+eGR51xYgOyvV4whYRePgwL0oVlm58
	 iwtI49xCdPhOv1nnerc11SnstroyLgi/OKSg8bSOynxjcaohBWmt8o89uMBY7RF33x
	 7pF4JMzQubvd4PivV9nuD3ffTkaoQuSTzMurs+8ehBOhzwWXKJk1ekoofhwXeAmckx
	 RFnI2SPOCNxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7B7CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172579595360.11590.14759362398667901682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9c8fc09edec907625adf17cae93c0b127fd83cd378b8bf23b5c8aba54099e1
Date: Sun, 08 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725795953
