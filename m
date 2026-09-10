Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C26B67E
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789009234; cv=none; b=upXMu7wssgSs6XugabA8AnQjNw9O0gjx4a6ToSm/1H/Y4FChzZCxIPcGPcGKmiDnehawKPq9EZVfa4kwtNwWGfb+qGsAHi3kRVWrslH3PHlHK5bFF38ydbxgJeiL8/DVFrfSGtJm+DO4TkiZaJmjRqXztjGdNmh9V4EXbr007ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789009234; c=relaxed/simple;
	bh=CyBFKPVKiKy5K6Pb35ycI2jWS3VIZujqCrJQCWbATKI=;
	h=To:Subject:From:Message-Id:Date; b=gOlkpssRgLMAnstqGfE/+os8+OTmeJEXh5dcwQLvbQcI1C13Au3kmbIW2459JzBCQrtM6Fqywh3iHIp8E21ofxNrwShaFnNOBrYEKaq8w+E/8sA6N2slmkVDOpi2HCPnFAVxnPxYUVSBSOSxyVW2uHhIit+ZFJZ9Royh1dr0zpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7KJy1ZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7KJy1ZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCEFC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789009233;
	bh=CyBFKPVKiKy5K6Pb35ycI2jWS3VIZujqCrJQCWbATKI=;
	h=To:Subject:From:Date:From;
	b=T7KJy1ZI3vIr1c3pWWOO4DZY9/MnXdJAfHX0o/Ppu/bbfYuR7Z8gF8f5IYXT7urAN
	 MAK8g33sft5tKNbbEvDJJitmUt5dBtF318wBPO4HeLkWFC4ckzTtZeZlr1ZHLZ92m8
	 jG9LGZWgYLGUG7n8+bmqWYO90dkBr5gT0ji70+eccB4N15sqBgZi4h2iT/Os/7IkTn
	 WUXFGUVQHuHpXpAoI1FSPn/OqHdjgyTkliwNq5JdOGz6+R1eTuGkvpLIAG02qwm2oE
	 p4dXrn6CljVytWDPYaFwFoULhM2pr/a/goiVtP/tASHk2Odjom9wgPFjHWTAS2ciuI
	 wKz6TsQV0r8Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2443C79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900923369.21617.6231411628456942554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852cad2804561f404ecb5d865f4728923eb5fc5f9eccb3e65739d852f976369d
Date: Thu, 10 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789009233
