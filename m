Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127ED3328F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766158434; cv=none; b=azUiGpP/LJ1VEB8SOv4hLnkTit9yZU5zwfkHWbNC2ks3kOjvKETKb15wYG9UDlgJvQeVpAFIHVkwEeGNHcJSiq7li9wlmVDEy77Qx45XkFP4WbERTZY8AKkh0RZc94iJPuj27lOYDVFVA9a0RXrMqaQXJQ3VNepNgMulw1ZZwQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766158434; c=relaxed/simple;
	bh=McOyYGs4jnvAG+znWLHY749jNMFYiR02BzfHhZ/8KgQ=;
	h=To:Subject:From:Message-Id:Date; b=j4eb/Fw0OQRdHyfiSis9pERIucgG5LlSNwhDduCjYyv/M5rVOS7iw9QtJUAIzJSvkiJmuTSCmj0rIHBQYoKWV3RGVL0xzqlJQJSIQAZGZVHCJJszpPcdVFpQ1PdDXZ0WUvmLwrLObr+yN0OE7tpI+C9sUtrSiouyA4CJmRwKb/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iD19SqgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iD19SqgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A226DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766158433;
	bh=McOyYGs4jnvAG+znWLHY749jNMFYiR02BzfHhZ/8KgQ=;
	h=To:Subject:From:Date:From;
	b=iD19SqgSLT7l03XkobzfXKixTPZuUsk/f9IZ2MbBywsTbLn7oMtzoRQ8Qf9WPefhD
	 Fyjy8tpIxEml4t2RDWo/Ut61GSKqOKiRpwdr1VUPAaRCUkorcN9vad0V6+yzE+vVlx
	 t12q1EHzLeZP3SunALkDc8Yzdr39cxIkMf+NC8nMaZd+LI8qI8us2pUYsJjsGQVI9I
	 cEZOhYzpkMy6baCL60ziony2TjZqub+CxvPRp4EWm0Mc2ngmPSagV4KdWh5zXMFt2S
	 TpuP8Y5qfvesaSeHJK+Hrxu86TBt8ioAXSIBCOxNrqTcXI7EElKUR4JtZGKW3HgjLi
	 7ekgXk5oQCu5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90954D7878F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615843358.10216.3375714167285678751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e831417a1d683b7d7a5a2cc9a6a49f01d8d152dc6b6c63b63f63af1add60573
Date: Fri, 19 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766158433
