Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113B51FF5E3
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771035294; cv=none; b=obkGs2BRRxxt9jJaWA2TS2BUTRkp37QmzX898fevp5JkrcahHnGdXV5LvWJuoZ/cKUhGRBj55iMpg38e3XK7LayTrpt6SvQEsUtc4tFplPa8XG+4lOlDEXbCeLJlLtvJfbCXvDnOJLdDhz8rP8I41ySLbcHO9eettpUh8zEQ4zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771035294; c=relaxed/simple;
	bh=boEggCdiPIwCL3u8sryxzha5YgjWPYq5ESPu1P4wrSU=;
	h=To:Subject:From:Message-Id:Date; b=BI1oTUgEpslS1b3ZFrV4iUQ4aQQY89ni5OhhZJN9IooPwaL1gH0YzOuE3SbHTsA/SvyntrdJSmowJIX4zc9XuhqmVDRQAa/7CNv6OVEyXmAfarlGz18yofn4Z6grFBsieXXUFFH6bDYmIo1ngUbJ9+q//4E0f+H++lqRs1rSuS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCt8A4F3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCt8A4F3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3869C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771035293;
	bh=boEggCdiPIwCL3u8sryxzha5YgjWPYq5ESPu1P4wrSU=;
	h=To:Subject:From:Date:From;
	b=aCt8A4F3asVNq3YN5eOwH3sm6kWIs9lRas7CCaDjR+Yot/i/Sh/g3IXmKUvoQZtUx
	 qdqTHMv/b/xkxDcxfpymYlJA1LJUdRFGDVmDG8iSJAs4RqRAmmeWWyQsPz5hcBAdmq
	 9+kjCLnqJtsLOn8P1LZi79e0h3hz0Zor8dDjUGjtEfBYSjuhoeO8d9tND3ZOxddKXh
	 Z6gNxTYs8kktsv3P311jCSSR/MbETRgCFrwZ4ANDcHqzOtpN6D16a0/BemVLlO8XDi
	 l496QkuCD9zQwl+AFr3xKNwBRNqNf9qPLQNZ82gVkRDIBTtVQtqxtYE4Ak76AE/dtS
	 HxHJ80twaT1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A0EF99F0
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103529359.24364.4486012165050787066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da99bb0233f313657dacbbdfa20f521077746ddc0a6006191ae779c90a8321e
Date: Sat, 14 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771035293
