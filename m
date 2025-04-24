Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326EB1F460B
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745537995; cv=none; b=O1I33yUUOZWfW1aBQ6EL/dXn0rzmcLEU6fNaGGktCNnaEzdptggm+pDf5HkGxU1yd5gkuzGH+bbtlZlIRs7R8DAgqpKrcibtiXKUXYiumMsRRtJd0OLfsDHHaU41aSxoIOnUNZgcTTurRwKV3c1QjVXLbhv9xJDtyiJw8UsnUlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745537995; c=relaxed/simple;
	bh=A0wAlGdCvrCGuhTRwe3RkRKjOMH3uNYom0tdLLnoEgk=;
	h=To:Subject:From:Message-Id:Date; b=RnOHbvwvHEEweMm4bDjd+PnHj5eNtKsSeJ6VjF5BXZFyw1fAhKdUOkZve6Cv7etYzQsI84kTkR8d/duFApAOgbAI0gsxxs90c/gyNX855+egXmw+YoYp53d/jqhOpWguZX0TiYZaLITcwAnV4dNLj1D6tKkDG1869MPJnPexnXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1/xkoqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1/xkoqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F76C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745537993;
	bh=A0wAlGdCvrCGuhTRwe3RkRKjOMH3uNYom0tdLLnoEgk=;
	h=To:Subject:From:Date:From;
	b=B1/xkoqnPzlIY5b802C7DwG/8Q220Z/7VsgjZS/FlOvaYOIWOGj2sVame/7DBIzSX
	 Grx52ccDt0yMh2UP5wgpckxHX1hP+rkoevyGkjtb/mn/r+O9SdN4OJKcsAZtAx00/o
	 mnDlZo0Bu30+yrM6qaAa+zNZ0ERFhl2dN9CLIrGLuPAIX62ag6HHZMSrPMNrUnlOfH
	 OY7SWQ63wqco5ZX2d1fSxtA7Fc27dwTgy5DTn8hA/C9wZ6k743P4Joj3zMqVj3p/I4
	 aylKeb3Dbi7wyPm/jUshvSkihu6Tut5QDVgtiMpqWFAQhp1++Pzw14wE+Warhi2pG9
	 pykDOvF1N8y2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFEC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553799357.1652.38936122266888879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c18f1ada6131a2ab0ec0661e5426d62a1e1aa7c2d997593a14f8dad2f2353cd
Date: Thu, 24 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745537993
