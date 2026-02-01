Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3026E2E11BC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769935434; cv=none; b=D7WuE9xwkRulQcgS1iGhSsX617Odt+/WXmwDiIQ1s9I0S+shPXyGsxCKvmpiNRzA01yH7it6LZgjI8qRpKyaNd6UnA0SvLaEUxwxjunGqX0Sz3nLwaA2ibjjfg0AYcXavB/5OSsXXixoLbcxHN/DMlBLAr7gbjdIEseiWHPqmr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769935434; c=relaxed/simple;
	bh=vzFC5asOSecKYcaXWhx7hN2hM6zEHXPreki7GR/98ww=;
	h=To:Subject:From:Message-Id:Date; b=l39HBH7YGO6rucl9a83vuS0jgcE03q0DwyJpTBa8kOlbb49P6KOMgJerl9JmoJW9f1GyKvOo9pXZ1QfA9zWOC3evYY6NONpguV4O0tgDs7oWhH9BPjy/jRcuRq/te+XuTk7bMMIH52KnlJCaAGRFaTO2ZGlb+y7vjebTUK+No0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=al51/yND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="al51/yND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58FEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769935433;
	bh=vzFC5asOSecKYcaXWhx7hN2hM6zEHXPreki7GR/98ww=;
	h=To:Subject:From:Date:From;
	b=al51/yNDGjrPvxjI4eU4Gm9ppd3bl+XCmcmUuflOdq7sztDAa79iFAo0GwhligHsB
	 /7b6JNg+gByev15HUDj6v82qvSFZMsfc0lHoMItYaWgeOOYmqJ+Ooy/awaHoiCDDYU
	 OztOY1PJfTzoUEand8YfPhfsgijqROPkkViUo0VsJJaWmH4BgsXnv1WelUDUMdg9UH
	 Yr2dZc1Uq8Trzc4zYUO9/kppcXteyEe5JLYq69uxLQaGQNrXuIXaW9xWOLgXjYc64c
	 XuKLsWMd3eAIElqL0FgQ2cejFvdTSJWOtYqP32g+adqZ+lTLtD1GJRNKgkaNqsIQSv
	 sFsrgg91AP3pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B98E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993543357.14927.16335905008109559884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e706b55454aa8048abc3b72ad3c4f911a8c8cb4e492682043cca46d64bb0135b
Date: Sun, 01 Feb 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769935433
