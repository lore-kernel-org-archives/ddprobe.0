Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A07814D719
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721731554; cv=none; b=X+zaLOgHMKmwW1V8xCzU5oYqAy0n2JydXp92lRnyG5h7B04EcbEPicHyMhsel9o8YxJwExB+FMBTgpxR3qftbBaex+A/G18fJdaYAqT84bQI8mz0cBKAnVf2FehcUYfToLJuEUzGVR0w0PCML8WEZYRIT6wY5sxbTtkKp6wzSMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721731554; c=relaxed/simple;
	bh=jdiEJA7Uj9YEGzE8xwVIu/iCIphH8NT/BeTa7K14H2U=;
	h=To:Subject:From:Message-Id:Date; b=J2ZKWPmkTikeFVnh8tggyqHpVOBZJJlD3CBxeZ880MllR6LEglUl+810KXswmKkVMHOjnWKtj/RLMQIrPkGjCG8ufraP8aHnTW+5okz3BKx+paoryL4E4BI3h3IVPyTErC2RCUeD30KS3oj36pkIMp/G5Mlzl/PfooJ/Ez2HAG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WR1WTS21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WR1WTS21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E81C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721731553;
	bh=jdiEJA7Uj9YEGzE8xwVIu/iCIphH8NT/BeTa7K14H2U=;
	h=To:Subject:From:Date:From;
	b=WR1WTS21HQ0y/lv7Xc0ZhNnsJanKtZMS+8Mlf6jZwTLjnKhvynknz3bJW73VTMET2
	 2tRslYPFhn9RH5nNrFgQ4YTz1kJKrqEQxDbMx9RpDvoIsRKoi16ky8ufAoRhr94az2
	 oUDR4bRLC3R4b8vPKXTndgMEHTbs/dk8dQ31jo9HCOAJodMPGLbSAygSvT3/jL+p1D
	 rzzdjVfJV6HTWtXMJOs5GjaohyGwRqE/XSFXC4h6UgOwR+WT+58vC0GOG6RZgJVZ3h
	 NjPM3zn9UESRGlzQ+8ISIPd806tu5CSYM6WUtziqi6KmCxUKdJidAAeWyX7h7u7fhe
	 L7jQt3zdX3e0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9334AC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173155359.6897.14432799086733306917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090f3515df7be32093b51aee20963af1bc654e9719389420238b403745b8158f
Date: Tue, 23 Jul 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721731553
