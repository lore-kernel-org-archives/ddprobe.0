Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297DE47AF4D
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782851314; cv=none; b=HbAVz90u+nGKo4yJtolVd3EQXxngtXccRpjhwq1TYWR4cT8sdVlEXjMWqW/RG8ZE5LkXqGCp2zA4xqbDbPf4kk9nj9dBO1dp/XziGtEBbvcU6rZ/ze/8gL4mm3HIg7bPeF3W5pP1jGljoiPnR/2Gpozn/PSOtU5gXFw25czAGk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782851314; c=relaxed/simple;
	bh=2tCTdIZsenO+jYa2R++D+AhBjaKYBASX+iNJ+ShwQdc=;
	h=To:Subject:From:Message-Id:Date; b=emWBf0bAsrGgXSaVZCoREPHTla1wSrGrNiNUa/b0rd2HIphpR/Ng26fNSsoXvaCvlk/dlcQiB8VBhIa6WLur1zTxFkV2GY28ljz2ix9/C+nKaIpEJ668b34Ktje+idnuG1eHU363ZpQvR5awvtOfz8UjSBka9CaTGF+9g7IHQjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OInms6il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OInms6il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE13C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782851313;
	bh=2tCTdIZsenO+jYa2R++D+AhBjaKYBASX+iNJ+ShwQdc=;
	h=To:Subject:From:Date:From;
	b=OInms6ilO5aUl2XFSeGy16k9sRbaEC1/oo2uNj7lLoe3giOeBXsTi6VC/uay+UtJ+
	 daXeynPs7hpOR9wTQZjPYe/51fs53eORXN5bNhwxN8hUuC1AeR2SvPrjJG+pSjIf1d
	 9uGNjarX0dTmrza2o/6q8sV58byu0GAGBAusD5CFugPFIYBWlY3VKJJfaXUxjtHgRi
	 zT/PpmvIR/nx8kqXiHrBiY3LAZ34c6c80Brv0EU+XtH3GvtTCZS3s9CXqXupJpy4eL
	 lClwZuef02zzLSZOU2XVIHBuj1iHASmb61QcWkksOhhgL2cf1mqaioQy0eBAR4Fho/
	 gsJh6HdiflEQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A997AC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285131368.9402.3925867303569988427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1517f584923760957ad80fc4a544ae760153ecf9380b87ba22fd8edef266e23c
Date: Tue, 30 Jun 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782851313
