Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E3A52F6D
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716848063; cv=none; b=UDjnvAKScdy8DHPYjxMgzPlMALUC0fY3rwCA1X0e40NFhQQGXoaHubqWgBo4sBJWLJrRChgbV7fT+zLOhwxk87Zhx0H2+ThJjsEvcivPIeWjI9ZCLsJhhhLdoJZDZLABiq48Kh3agkFieMqv0HsaNsiux4O4nmJtvEzDUD/yFfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716848063; c=relaxed/simple;
	bh=/19eUtYfxi04AOI9UaFk3dewbVUgbRKf0R8oPjfLJJ0=;
	h=To:Subject:From:Message-Id:Date; b=BzENBDNl6I9DNT/ZOhH6GeVN2+qbcoAss9MAuhlXynvEfD07BP9lp6+kTJZFL+KlWE+pJJJyZY91Q3Vcy/+BFQxyX1mMW1yGEnA8q0GKlurGmb7belkNHm/Vs0ervzaKI44Wobrv8uj/aNA4nQiMoIAavEVujwOAyFfwUR8PBjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixXwyqtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixXwyqtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE196C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716848062;
	bh=/19eUtYfxi04AOI9UaFk3dewbVUgbRKf0R8oPjfLJJ0=;
	h=To:Subject:From:Date:From;
	b=ixXwyqtSrarbC0vJ0AGY9CwaYO6dy501aYoJ8Wg4J2WkL+MY4LC7h1lJGKngbZLyK
	 5859zd8JJ0QIs/lYOZUiQpxJ9wcBaLV+h8FhpIQealoSq68V5ciAvtFmsfDUf83Q2Z
	 bIm1dzyGkykLbo/SiBgNpYqojfbfXRS88rr57RqqNdbhOpuyzMXl6ie3IOVcVjacTa
	 dhXFNR011gxwTqnqbfMovBO4cTYjnNE/etmcUGjx9vNUoO6N0MnnkUFsenC43zD37N
	 3QQKWJ08myIndBB6fX2qeKfScOOdoYYnOQmuY29m+mB/otuidXC9S7eTRyOK0ZNmRm
	 cEsvBi8R3ra2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9458C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684806279.11094.1315801013489100560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1b07674808f6c73ddb26704c75a7f27403cf90a785f5c086b021bcee36c511
Date: Mon, 27 May 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716848062
