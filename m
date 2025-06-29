Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332751F92A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751194196; cv=none; b=XofppbLGzmfy5PUdkvVMWo0UMnak21l/68XRM8f6KbwNsfeTbrOivxbw+CkLEDaHJsljdklUlnKm7QFk+fO+ZkLGi4dEf+qeH4BigCoGuiS/fFAndezrPpeA1v8E8s7gGI/OYF5+bQR7dvr/oFCjHs6HFis/j9mZ81zUeBgQDzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751194196; c=relaxed/simple;
	bh=3BaKcYqMUED8VkJz5s64LTN02vrvR4J2zoxvcxTDdJw=;
	h=To:Subject:From:Message-Id:Date; b=bWbWQUphpgseoiCMXWJB93ICa9JVYvTpzvZJdA7EjkRO51d5mYmofbNaJueNiAV+iFSnt+0ONINHV13sMHcBT3QeAoRDtssbMemBA6b3j2xP/C9Wr/WH2CUBaBF5cgbeRp88e1SUHwhR7Zc84gcfQ+RfmVzlHmcPs99UNf5rlWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LI3FJOm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LI3FJOm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751194193;
	bh=3BaKcYqMUED8VkJz5s64LTN02vrvR4J2zoxvcxTDdJw=;
	h=To:Subject:From:Date:From;
	b=LI3FJOm9kcNLNBZaIPM03eryvHatA24BibiDGsSBB61O9E0EBOdo2QlJBVmtpuGEF
	 Or4y0i9y6MTvgh0hYyHgj/zd8VJjKXo/quqFqUnTd8cw1Iw3wiELZjEN29IhBIhD5w
	 BjjkWt3QaxPygfG0ZvkjZXfgxRHxFyf3GWz0u7uov1LAKCj2hogArfiyb6HBYXMOLB
	 4H3ofaf5pnqlt+q9VSEZpCKP9Zh4szPUarhvDTZxvmmprc5/e6mTS/exe2d1TxhZGN
	 Ns6t3B1VDqAVUbBMrHXy49fnxDWUD9u5i5fCPlo18kl+dHNXOgcJhdEM46rGjpeus8
	 pkEuhL9k5j/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C0C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119419357.3007.8927102106490044077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c39f748ad9f2f4c32365c70f5f2117a2336eae67c0ad873cd4cf2a536ab6f6
Date: Sun, 29 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751194193
