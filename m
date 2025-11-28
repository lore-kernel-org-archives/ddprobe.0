Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B841E9B3A
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764300774; cv=none; b=ktB1FCWZRHwaCwyDauJjhivaNKTSSL8+M+Yn0z0jtXhJYgQ7WTCeC968tNB/hhBLuJgchrVPFdvScbcBytU/c0Tf/NcnKuf9GWxzAh0u95ERZzDiEHsSebR2ed73QspTBuFJ5o2htxzhfRHln0xMuN4h/PBUbQp3aVVPQHLwdNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764300774; c=relaxed/simple;
	bh=Q4o1VKuJr+jx2ZFKKPKXVJOxraCCZtfTAnnI+AM3fbw=;
	h=To:Subject:From:Message-Id:Date; b=PsVnLgNAlZjKAoqrnCLfDVzM98SzerTY0VZBA0tv2hvnKawLAEmu2gIsK1+dz3fjZ1cwypSXQvSLERtKfSKxmkJH9wJciVWJRR2UrFxz+ZkgLSStZ3hZ7vwGi8aFJMZHQ1A/Q1nAL4xpNAW0rmkOQjMo6gjbUMhHFrE8fhojx9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aptU7F5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aptU7F5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3770C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764300773;
	bh=Q4o1VKuJr+jx2ZFKKPKXVJOxraCCZtfTAnnI+AM3fbw=;
	h=To:Subject:From:Date:From;
	b=aptU7F5hqz15FP+RreL5/IWFTXaHAMj+x9BWN1jXFhwaiNTTzdwu4fMkzwvsZ7D51
	 BPBQjWJagtTnpqxoAXjjf7ztwsvGM73U1h75q4JPMWKU5Cc9eeHBUVI05T6VWsefWA
	 Xhg+++jkVZyOKQZgbVgJrYXj1IVoj54AKTbZZxvpSo31nVGFNwPGBo91o93fFLkmUU
	 hHGDDLKeFH9YMiksLfyx4em7O7o3atEOuL0VhQfYBuDf0ghnmnTN+qISIvSNwM8+eh
	 eVcIUx8uWXjtRIyS5nUKTwVXgza0F5YfKx2uWSBUKES/7ITxJ3FcHfhT9KqlNFMBKz
	 ZcKPnbC7RK0dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D0DD116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430077358.31551.1896793420495464700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56916b76e35e054b70731c5408aae90f1cd7908c78c34176b29b3cd6b5780af4
Date: Fri, 28 Nov 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764300773
