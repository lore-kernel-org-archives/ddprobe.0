Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA8C2E975D
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753446594; cv=none; b=ovNvAAhgJgTvQ5rnAj5LR0Ynb0eBF1skJLn3x9RpqAvWRhec4m4iHt8r2oyfa6gtQZsECSKZapFpWLcO10lVT405/TDaFHbdKW9Bpa6qyu3yEN5yCF3OlO4UJIPVfh8Vv4qI/s5BnrcH46aXoWfLAUxPBVFJNw8lj0yBI/S5qqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753446594; c=relaxed/simple;
	bh=MZ9tlUAzUEbHN/iJDUY9HuWKYuvXQevrvkshcVUZtc4=;
	h=To:Subject:From:Message-Id:Date; b=JqbTx+nVvtcdo4CHfdgz0XTmOnwzGu0+8cpKFcPMdMhFxRHCErt6Aeyi15Bg97fWxDZPbyVD9Fs1hTeUUFoIUtXvSJXVgzYhfCEKO7s5LXhwHvPr5ncElWVGZ3fNKvOguwlA9kTgl2bwqzwZ0KHPEOtlbZ8+TjPh+Jvemr5vtnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5lL/OpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5lL/OpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A007AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753446593;
	bh=MZ9tlUAzUEbHN/iJDUY9HuWKYuvXQevrvkshcVUZtc4=;
	h=To:Subject:From:Date:From;
	b=j5lL/OpH296puSTuWnige9Ko0dnt+lB9W8jXvqYEdxYA2JLt/4BFwaohp7vECo7pX
	 kCLzOrM9N4WpsSd2UQjzcEua8PIySksqNo/aYlKr4ZETLdevDh0XXcdhvEZK5BLG35
	 0uF/vDgl2XwOauJRmXi/pWJImmS+4on6huspaveLgGdD2H1rNQ2YE6IjMXUG2Dadra
	 cPprjrBl+DxO/jWqL9pDd7/fEHhqJPGW3UOiRoru48MUJ0fMm0xgk6VAlLHASpO91P
	 JAY4wMsLek5kCGnrwRh/3gae+Qok4EEeucQHz+S8gZmrris66PcGhK8HSIe6loS0Y0
	 zhnvFsuEpqiHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDFC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344659358.12335.13442767021838689398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88cdbb6fce827255b10b25f11dacf2345828d14c3a102706f445ee840b4bcc66
Date: Fri, 25 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753446593
