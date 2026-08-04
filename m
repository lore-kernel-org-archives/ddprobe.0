Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79716440A3D
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785876034; cv=none; b=NOpfRuJlGBmaRBAV1UepaPgMaSQMylBTNsbAgpkM5JTnUjwZ2eHAw0qE0m3mHsGFccR8GBUAQEDtDYR/3ftRBkD/7l/rVL0AkzE4L44eomx7IuLmKDvh1h/E2JqW8/qWOUuR+3XLhJxtAhwgCgEq1IAKf3V3yWesdbWzpe1AgvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785876034; c=relaxed/simple;
	bh=g4qVoxY1Z7UJ121PYsnHB7nkAIKcFgJkimg2bBiSWB4=;
	h=To:Subject:From:Message-Id:Date; b=jOPQBUDpPUF92+CcNlGSW8SQP935U0gZZVZBckUxLRE6nMSW15CEv9HbHYOZS8Uo3sWbY0FLD7hwSOi2zfjR+5NTwwlwuEM2HEPmXnaV8di9iAm8g9z8v9aDbIN9egFN1V/FGjbWtVtUIJi+1hmlmdiH+TrcQ5a0ho4X90c5nEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlMiit/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlMiit/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3CDC2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785876033;
	bh=g4qVoxY1Z7UJ121PYsnHB7nkAIKcFgJkimg2bBiSWB4=;
	h=To:Subject:From:Date:From;
	b=BlMiit/YatxJ5vIeFEKK0RvyYPach5C9LT1BmJlwQpO7lnaGNn4rxjB28rTaYNaro
	 ypc4nhVwOSZKjnqet1VTe/+hPY/UWB2NzZJ5EB7xUuPQwKQk6XseGdHMo21oSpOufe
	 nNyHpsGM38p0Yg8AQ7ghLqRkPoOXUmFFN6wZlv07oja+slZnM3fP+Lsr1JNrCzCoo+
	 q9wtq//1wD6j0dQ0pPye5ASd1r9TRlJDknHxEGiGdfPsQ+stAZANQo3Rc+t56qi4sr
	 phKQHiObOOtCZZm6/TU5aVYkY/endE9voEE/W5PybVc7osa1wm1xcUy3pevza22Jqp
	 vk9XSB2uN6ipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2EFC55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587603369.17853.4588069924530588575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf93210d13c1c2589e795b3787594c5b641d68f49c6887acb11878af81f590ae
Date: Tue, 04 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785876033
