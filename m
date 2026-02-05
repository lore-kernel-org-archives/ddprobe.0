Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1CA15A85A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770255234; cv=none; b=jUYroIQsSPkZDhJIvxFEJ5+C3N3604d4hL1VlYiqU4SGj4TrpTN+TUGWHh7HLIX0DxrOaP1BeWeWdgMigELPVDR/qRPRVvVgfF9dYqFHvZQYt26aszqz8f+HhaIwH8qW4ikwlDd4i2UCSAlyb2hmj0wUZ7Cq2GVeeV+osIQVKxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770255234; c=relaxed/simple;
	bh=rdo/sGuJ0S23wB7YS0DN4eLTtKtZU2Y78m0N7sBnE+Q=;
	h=To:Subject:From:Message-Id:Date; b=bdOYsLtY4VEz9j89i0I3jTM5nqm+oTahaUrYcNdOq1l4VjyjrDp/WWDV4Zvh3jxJ9+W2++FQrtavvpZDifAErSU3m4Jq/hFru6y5Pz3MJ+gquSF5goGPCYyzBzQ1/TsfjNG6J+yJbp6gmAPy7b4HtLpjbgjaLlMQI5SJ/KsqrlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oj5oWPoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oj5oWPoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0117C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770255233;
	bh=rdo/sGuJ0S23wB7YS0DN4eLTtKtZU2Y78m0N7sBnE+Q=;
	h=To:Subject:From:Date:From;
	b=Oj5oWPoLYkFLWUbTfnTX1YdF1qDRYEdDnCMjTp+NGiAohHqGuRNGuEAVCJm6xhwHf
	 Zy/2UoI83eZaEsFkqMg27goE5W8CXYwMJb7DNEneoLOGyntgZFr27cM60JbZy9a+r8
	 bhkfvRhK9NsB2Y6k+pc3X/8Pfro0DoI9hhwhMbFKwfriBoQv8AgoMtk3EPezSAKOmN
	 pJJ2IknHerIzfQbtHaTPimcTcgdsW2DEGV4pUODEWjeW4O/b/v5IQVFh1/c5FXVLYK
	 ON8aQlC2F1B40jUO78Lf99SSMbHnAMG7/fkEeKM0sYQX5N1ENI0bVc/eikRIJb7nvJ
	 WuMjBB+4wPsIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A51FEA7950
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025523361.14557.11876120345887111355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d77f57d45ca12c27159764b0c1731da7cf567977c761c9ff0b18fa400f9b7ec
Date: Thu, 05 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770255233
