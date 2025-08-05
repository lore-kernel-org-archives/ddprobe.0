Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158BCA927
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754368794; cv=none; b=X+YWzI+581BiL3dlR4wwAS57hE5EPkGD5QmmMWUPUVcrj+2RLuUVp1C8GhKUtAzXXoq4RNDR9Ule27rKr5E+4gHhEbwz5L270Di6I2b/AMYctqqCE7QtYgaxMJF1M+IFwuTe7sgyyCF3udQvbbDNZaP20KFb27SqgzSa9h9TMQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754368794; c=relaxed/simple;
	bh=IMLQKm89gm6huma6mAQkpvTi+3JxzV5R4l/VAvh9ymE=;
	h=To:Subject:From:Message-Id:Date; b=qR+xxUgCyFTDWrRdoi9soBFjMAeDcVvG1wOKOycndjpK6H/Pd4s+P+BAlTz/59fY3uVSwmKWlxZ6kRrmtJ1NHidLFyFhWv4MA4hW+CCV7yYx4jQWCw/0/vingHlZZT2rA61zBn9ANFAFrvA/i4S6BWwO0CvXjc6iihb7gOTGbQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFGZ4wFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFGZ4wFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3355C4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754368793;
	bh=IMLQKm89gm6huma6mAQkpvTi+3JxzV5R4l/VAvh9ymE=;
	h=To:Subject:From:Date:From;
	b=PFGZ4wFX87enLrZD/4rixV4DQHt78r4/yeHSevUHb+y9Udi+j0EQcEh3plk77gVnC
	 uWpsbgXQj3coUVcWS6JgeQJ3ZMihknAlLyM7szedRSFTPJrfw+CPsTs0vm6Fkp2B3c
	 xlkkpajoPg0Gp65bMwxZxprm3Bv+9bDgdGDpUUZlJdvcScxjrg005avzC8LQwaHUHd
	 eQS8Na1+Q0mPI7+quxO96BIHg0f4Vv6OZm/BsMXrSY+W4HJtab8YAUnk8oh5jDE6lm
	 6dsC6Egg/PcXq/9Tu/+VJjNjUErJ0sbUFlRWumKvlhv6I/12IYOn0CYpvW3XGEXtie
	 kZzDSt7TfBgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F91DC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436879358.14713.3780054375044138282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a5d8c68db2c60479676d276709ffca3bab8b9961a9397ff476199f218e629f
Date: Tue, 05 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754368793
