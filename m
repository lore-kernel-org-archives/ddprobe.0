Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922223C1D6C
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791575434; cv=none; b=UUr0TRg2+MJ9xeF662Jbm9D7tfrPaNcS62i5NLmf+X9MdAHH8us4ndjI2wY47vwI2gnM2b+Wl4+BO7GRqKi8Hf77EqT8FcWS2LOPju7vJER99NOWC2u9hKyvQ2ADnKmbofcUW3skT1xxZ2uZPuvkPMW2m55wVsKFMAIz2A5ukRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791575434; c=relaxed/simple;
	bh=IMld7GxXjIelKZj771jrWv4JfIjYWctNLDbcjFaTMVU=;
	h=To:Subject:From:Message-Id:Date; b=lsSOguh9nE7GC7pQky+shnKYfBE/eqwnQw6en+Cq5DEeX2Q98oKeSfVFlFbBpeyUE2RKXulawc3q/XCqHWgeSYmEWg4k0uLTTEFNuJQQln46HDBHOzniP/9GwVTHuY8qgedlqhYWxDFnlhJ90vI4G8EDK86KN3W7XHbcgj90YlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3snm8iz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3snm8iz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B90C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791575433;
	bh=IMld7GxXjIelKZj771jrWv4JfIjYWctNLDbcjFaTMVU=;
	h=To:Subject:From:Date:From;
	b=u3snm8izKAk8jHAkTGy0cbDTFUyP+wmofS+2ikbMkNZmVocqzEZ70MsRWuAQIrrM3
	 YqsGGcTJebDWdIl3AFrK4cedOfl/IiLkrmU5hjmefRuCtR/0AnZm/ashmChPR0zgmP
	 b+oi+LvL09fgiAW0aXoGNu/e/ZSnYnoQ4ednS4mVRLaHeLd59B9WECTSre6HpU8ovH
	 /HefuOJM3Jb0ZmFTIyBLCzUrV9/GDzuaZf+Oyi0s+7LFife8DJePVrvF5rTpuiMfSa
	 RXNyfRgBWJdIEKJaOZggO9kM7CTc/ZJCum0ArhlJJuFVaJsUjG3W2ftdT4nwGG4cqA
	 ZBgB69pTYkO4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A76CA601F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157543369.5806.6777192305498662439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44bba6f7529c01fe9eeb2015f056423ef48619b46cf760fce276c73832aa4e7e
Date: Fri, 09 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791575433
