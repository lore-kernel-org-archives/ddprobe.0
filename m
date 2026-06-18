Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3699439C632
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781789194; cv=none; b=LzyigyLkDViVFlbUoNEDYmYEHZ4wmviOdFugYWu9ikLU0faFRRplbuE8jplMm4wgANHtK8T+kXSkRcrZ7dixIhmgzOcQUulUs5oBD7CR95yFwTL2xyjlHJpA3k5N9VqPQ6oGtAy/M4QAFR3Jxd9NDeJIbRmSDB4EvuZDUcjf3QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781789194; c=relaxed/simple;
	bh=hzLDN3LokMolQg7tSFtVYlkRMd7I1QOxMWI2xE7Pz+8=;
	h=To:Subject:From:Message-Id:Date; b=kr4lBvEBnuz6LYvvA6KyP+g/TU6U2xeT/aJUNumsti8/McHJd953UeAwJ5Xu81KYWfrDXHBPsixJ0D80SxPGP67LaB8V/FmIqwBuGb01eZWwDK4uEauCKLwrdur7nOt84vJrYkVov39As4wNF9BpIA6/wGPXRQicZf2nnGrIEBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjliotCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjliotCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24BBC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781789193;
	bh=hzLDN3LokMolQg7tSFtVYlkRMd7I1QOxMWI2xE7Pz+8=;
	h=To:Subject:From:Date:From;
	b=qjliotCuSiJFdVBN9y2MjsN8QPT6EiUP/m82QWiHPpTZR6AYLk3Mz4EkH8iSVAMU6
	 S4yikOrkoafchdzL5iRxrD5WlrWH3uIgF7LIHVjr43XFveU43yMhE+N/4U6aMdDMYN
	 y38C457OY6Veb+lmmoLqtbPiYttECGuRHC4507wIT5d4ptYOh4viVSXVEgDwgUlpJH
	 D1OD+GqEvArkIkmc6bYDnuBJTjDYuoDPIAYmc35JkhAXSm35uens0BXQKt3khmLOoF
	 ky9b1uRubgxIIkBS7bZIRw9AAAicBujz24SlfPUwIBwrjluhFE8cnSgB929qQ3jPvG
	 D4h+P0bzA5mog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2311CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178919372.7048.7662730215516731540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af28599e55487572c62b1d6c2df85b9bd4c1444eeedf24ce236dcc550ff831d4
Date: Thu, 18 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781789193
