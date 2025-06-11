Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2465F22173D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749662994; cv=none; b=FX9SsAURRa4Om9LCRkAwvRyHrmpDkqpGFteyJJeIyDBNk8j95ZICMjqxkR3Mlq3cBXeN4mIRUNuoF23fLSt1Myd0cTQioijpNBEZPIOqxIvd6j3/FEYpmuhS+lB71s/EW2mggfGyiZO5hFAn3q7n2SfK9sjpmvZJ53FhiQSuFGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749662994; c=relaxed/simple;
	bh=fjTGO0yDsyFiMcCrPvOOLXfPX4tz2DbNsqWrXwAshhM=;
	h=To:Subject:From:Message-Id:Date; b=Jw8HJNbfisDBso8Z+cPJwxZwCxiNjWX5biPESC/2sKhxz4V5W8W1jYCxMTC2ayTL/DN1efzaemx3mf7+X838O0/BOqaKXsEDsGZ/bHCuPSd99hsxKpSHncj4v4iVEqSOmZs0X9soPXUlSvW/ZuTWJ6FCgGZ8Oyg+B6+ir509J68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKtZHMoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKtZHMoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F26DC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749662993;
	bh=fjTGO0yDsyFiMcCrPvOOLXfPX4tz2DbNsqWrXwAshhM=;
	h=To:Subject:From:Date:From;
	b=sKtZHMoScFWPHb9tjZZ7qG5DNTFirw6JmeE7f0wtkksOAnvEU955rq24VqSxkwMnk
	 XjJBGus798SXyIlnrubXzbNdq6ZTea3O3bTAbHyv6Kb/rbPlJvfGDMDBeSVrTA+ovw
	 oDp262yGTXBPmm4ZnWij942pwJ7IlEoLb6V0Zjuq5U6rqZQjF4UhjIDwRX3HK2tUlV
	 qDxREnY24fpuXG6FHcTJ9vAfN1lLM7ShPTSKzXxlXuxmz/jYbNiq7jNu/YMaH9TM3t
	 bdQRGp0Wl01Wb2EGlGt6N4NeyhUQ9F6rB/Dq5T9lxmpTrbzR+Xuyn3nBrRN568fbp0
	 LlQE9D+u0EpoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC2C7113E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966299360.14090.3380327091767087871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea81b38d5fa1b81f5b71ba7665c6a00adc733d43c89ed7a54a1306a7da6a398
Date: Wed, 11 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749662993
