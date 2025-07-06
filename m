Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C361B4F1F
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751796594; cv=none; b=cwtNOdkpBMRZ1JrZPBjQFyBeg8HE74CKlYIhhmky4D8YsGsaJsWJNG3tjsc64SRT+SvE6j0NarXC9qlPLf6NlCEaqQzLDyTdHpcmVEDQ1HYLR9v7xPWNHRGIIKnAkAp277Q+M/8X1ajpEZekqQ3eATC88xa4TPg1FvMI9uyTZNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751796594; c=relaxed/simple;
	bh=Nk1BihSHBTuF4XNlOueZpT4gZ2nLxDA5KFf97ywDTGE=;
	h=To:Subject:From:Message-Id:Date; b=kLmSr4j/IlG13f3sqg+YYpvpS0Zn8s2DiEuxrCz+IARg2eyVu79h+ycAP5OluyS725R7R3oM90IhpH84aMuoRFWiNuCJuULgmgNqAbTOHA0+ijOrV+vZG+IwmSTBt29Jk/j6sQMuwql4bjGgmuwBbq36jknQg5tfZxYTcA55RKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx9u+Fhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx9u+Fhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8DAC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751796593;
	bh=Nk1BihSHBTuF4XNlOueZpT4gZ2nLxDA5KFf97ywDTGE=;
	h=To:Subject:From:Date:From;
	b=Vx9u+Fhnmuy9wPXWQLYzR5ZgNpYDqTcyFsKPiVCYkiKCgL174gERPhwW1N7sKK1FR
	 al6ZWwWesNLlxmuAWMuLUN8J4YF4P4nO6snNL7ogebHx0w4VSuuTLyEF9kKW5M9igp
	 7xY/UdrUmznZhPQHMyqtvBoAeEEPuWJejcrsFX2TWSYFuOlX1LdIE/UaknMsD5Y8ls
	 FQui5R+m3Tp3HliF6xF8PLNPr8hLRg2SGU72bTrFAQ6lv3O58RHho0R/lwbNOnk9ge
	 STENfXK2FMPf63rRNHDc+NULYVhmm5VWzfgxySVCoJlGIRWJYt/ebRMOcsiM/rSiig
	 fBTfTF0+Sbobg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E395C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179659357.22973.13159147226864544455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08223a1d7c8ab4240a50dc926f81e41e91624785468bc2c23c439bc87bce7813
Date: Sun, 06 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751796593
