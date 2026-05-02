Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430DE285CB3
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777712854; cv=none; b=P8zLlfHMkdrf2qG4JOzrRNqxjSZ1laPNUeC/ai9yLVnm1vGYB9Audb4Zo5LaUG5WXlTFNaHOw2QP8VXaaMGBZm7kxKc28f/KHL5eKnDXEPiMWIDoPbClTwtrNz6t7nWfpc5labrNDI4lwBRGqvvz30F7oW0dYvYANEDZgsNJSW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777712854; c=relaxed/simple;
	bh=FhR5vsp5/9A0JLeFWCInz9FIVcKboW9OEzcZ6xBIc10=;
	h=To:Subject:From:Message-Id:Date; b=sQn5Gbsen4CekLHEFqR6DxIRr38+3BZtUVNUAUmgJ+nIaV3wI5vsI5Rsa0RLcBfzdh+jQ/S5rBhQeJ2fKBYQ7FBPler6q5HtZoUN3Bt77dmnJ2yDBOCV2MhfCQz3uAiWMCbMXk6QQF3PWuyrw/HnTIISDo6IqtqUVaOjSbepZR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jri1r09Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jri1r09Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07B5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777712853;
	bh=FhR5vsp5/9A0JLeFWCInz9FIVcKboW9OEzcZ6xBIc10=;
	h=To:Subject:From:Date:From;
	b=jri1r09Yr3QN0mrZTF+v2QJgDa1xaMWLcNs6grrBERtw2YrahzWNtpNV+ii+3FPnt
	 0wQ8LqTd264QXJZruPadzdvscmCeFgCdvb/FRWImcqgpiOlIX0ntywc8u6D2QmW/BG
	 A+Fii5yccgUcLhfdLnavishRbtPZXGzUzM69fflRZ5qaaYWzOhSwz+BWvim3QlBwB7
	 Gc5raaNr8vXqoVlKjsmW8tuM2rfsrxZ7/oF55h3vjSyJRc0x/KHvDELnLMaKs1hJYS
	 1lq4rwxtZBbq8Kt0ZhzNdBbUFXcigJbslvN+GpfW8NUbKPpvuTJMX1zwYoeZpxtgTU
	 bRpg8N80i6MZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF950CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771285368.6305.643123064002301112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057913eedbd619d4603679229b2f652ff0f06a1e57be0f06259ab792a6a0d6ce
Date: Sat, 02 May 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777712853
