Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D52E238166
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855594; cv=none; b=YVdnlpreB7PtLy3SWDMPwH8VKuefgitHYPxRJFPHWHC6YYhAQy5O8d/SlPjcXWhQrWhiXwCNvCAh0+J31KQhgKljWDNBFA/kR8UlUt8Ze2s8LQ2bh3QgdZKSsbpnNf1TGSodScnagtXv7Ow7GAsQwMzYgde7ptFCqMvRudxZzqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855594; c=relaxed/simple;
	bh=bkl6vXbHeeZecR4gy2c5ikCaFUytp4c3jsOvK5Ju2fs=;
	h=To:Subject:From:Message-Id:Date; b=dYR1QTctd0qrgLUWrEzanuSTnWIwzWXAEklK/SmFZYT/OQ67KeGjav/+2oBJXkgXdQtkjNU7K6+p0bb/1ypbTL3U5ioOwmUO+OJ2MeWI0d/NjM7durGzlT3IF77A08uoaZBy8A8YVlJnOgFFYYx9ud4owgAAuOwZj21ZIQLF124=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgYgVkMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgYgVkMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5BAC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755855593;
	bh=bkl6vXbHeeZecR4gy2c5ikCaFUytp4c3jsOvK5Ju2fs=;
	h=To:Subject:From:Date:From;
	b=KgYgVkMw6nRr+4z/KbEQPTaCSi2+TZOF9Dzg6V4JNoKjQ5+3DdgPWD4hhJ2nirw+Q
	 6rGmaQC3xaVAax1EeHyqSM/187pqEMV+TebtC3wGzO91UhvMWWIUeXt1EMeB3R+NJL
	 7uz1z2UQNuLzSTYu+y/04TMrk/MBs8ly4R6qEHWpn5HLD7F28n0hjYBP+c28XiaGeV
	 4kBHCDf76T67mHoguIxLV3+BRK1YGMIgp9W1xKqOQCkWCn0lzpWHkalXubnAH3tjbK
	 C204hws1n8fbCS4Pbxu9p10NYp90iTscF/AibJ2kML/BLID97POdr2IEhtGolmDC08
	 MaJx2KL1v4sbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F326CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585559357.7146.14681398321480940253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7c19bd4c8399947cf702e596aff8da1f6e7fa50d735a984063a7d893bd7908
Date: Fri, 22 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755855593
