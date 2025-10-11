Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476CC1DE3B5
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760218194; cv=none; b=k5mrWJHb+wuz2vlsoYhWEViflkO3JqHCgHgVlKBL6mQoMmlFX1jIL3K2J0M3UhstO14bUs6K9lHfPRQpAEZSSw5Atv1PNnj4SKoOuCozqYzQzrrjn399gLA1zuG3Z9Z4IFNomg7bjLgaOsUKA0T8dpYcwV11bpWvZ7Kt0x2zAM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760218194; c=relaxed/simple;
	bh=KnAIv8yiXuaTUr3e9So9SQno/9thQqb/EXRaOzwo9T0=;
	h=To:Subject:From:Message-Id:Date; b=f5/oXtzf1u+0O7/hhxvYY3y/aoL54TuS4PtG4MM7jWybZmi6JzcgHmMZJRruFXRrM9dSOpm0jSswVsV6dNX/rlq7WvX7yJ7ux7YPIJu2KVBXz8b/Jkfq5wZe0E6YwK45E446OBs21iwR/YcSLB7q8O8g/wuAtrmZUIWPKOjnVzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PN1o+nRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PN1o+nRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A7C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760218193;
	bh=KnAIv8yiXuaTUr3e9So9SQno/9thQqb/EXRaOzwo9T0=;
	h=To:Subject:From:Date:From;
	b=PN1o+nRYMaZR1IoLo59H9iO4JNg8NE2FEvIVvmsDZ+5seDKoLE03z0b/1o6ULUFYR
	 K7nM1TS75dq0iUX1j+0XZMuRCcR3IXRnaBwSDYA336CfknhxdB+5dycT7NMw9QNiO2
	 +U5tfKknAA7JYdqFZJbb/PaMm9BOXLa1kJh6GmgjWrznBXPz7F84o7sNPar4EqS3wS
	 I8FdSUhqR5Sxzetz1jaT4TxRBFa0rt0vXyBw9i1PzMkENVcY0vUpESEhAFWBwkQA3s
	 camxqQFFIjIQB9xGcBBwe+4qp/BfreY0HedaS4G0vRGza4n/SY2aHtf37XQeRBlt3E
	 0nR05YGc8Qr8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A18CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021819359.31318.12180143635176491054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a350f9f9ef4f7aa0453899879a5fbe1323001623057b091e4220169d67815cd
Date: Sat, 11 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760218193
