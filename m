Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6AA14B953
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765623173; cv=none; b=fsmHcIHqVBL0GE84itwJ+0CQA7vBBzuEYWZicKzfrfrsmZfwRsF2u8PUH9k5X/hcqyORR/r61M9vJSkT0MZmPxT/O0UuzrfTWufuLmuZFcFh76PfMJrbpo2ZZFzoeqMw5DwL4/ZRz0wicVlkQnWsqk/i7UYLdfmZH/5H1HGr+u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765623173; c=relaxed/simple;
	bh=QG8vbbA4SsduswWzF7Qx2tuQ4kZHuZOkPkC03EPR3zg=;
	h=To:Subject:From:Message-Id:Date; b=qooVzVDGoNalS12mD3tdb0cdMKyXzlgblqFtzJQbGUOG9FvlmQ2tk82cZutbdiD6BPqqjAbICTSx8nbrHGwW4dH5z+NyjtWnnmRvKnbwJV0lez3H3WEiHTs3sy6PrQe/6amMCCDmFeqRfrPZ4NVQd+YSu89BGk9zH3EWPY9piJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNvTJfvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNvTJfvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC625C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765623173;
	bh=QG8vbbA4SsduswWzF7Qx2tuQ4kZHuZOkPkC03EPR3zg=;
	h=To:Subject:From:Date:From;
	b=pNvTJfvMBbaLuK1msFr/Vh4ABwaBGZB9voIMhSn8JwMifpA+Qpnik4GKCIgXgu7k3
	 4ewdkERnWAaCUzpuKlM4RlFf3QIy6yguwEVGIT6XXy299NAEppHLBR59al60Ml+KrV
	 /mQzmVkFjCYixKVW9VDD9fYAfetqeT8Wjb1+ugBK62YHA/FWdl75Q4m42DLqB/wbS8
	 G6GhMoKKfA8A4TCARNlToQEutOsIF+vvomsvEOMVgiwt2E+OCjRaJLw09koZNGPNxH
	 NxfNUp8iGCZ0GOS2Wl9DOBOwhH5KnFwd07zmax2I2viu6NrM3Xx/WPQOZbP3belZO8
	 gZSU7pZRpRxCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B396D5B149
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562317361.32392.11898788554583263527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d100215c769aee0f4bb965b9a15d9f3857cffb878c52ccfa3f797956cca0d1
Date: Sat, 13 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765623173
