Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A57628031D
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762982994; cv=none; b=gPS/iTDPGw4Zo+KIsWv5kbhBHjPrsdKH3IyZ8+sTVatYwR1MRo8sU97/Kz8zzNeGxdfUMX9f1Mooeu2zIC49J3Nggmzbcnh6mmWyVGxkOSMIVb5PQFoLpv7JIKcwCh7WeY5YU4ocF+2WNFx/sqUBFgNn35093DFNLkOkl+yiBZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762982994; c=relaxed/simple;
	bh=g4+Sr6dT/6AqozPxLzu2mo1yN1Frr9JUIUBAIePjKDo=;
	h=To:Subject:From:Message-Id:Date; b=TRhaE/Q1dj9dGKYRuACyChBsQisiu8K3De4p8aqLiPOPlfUgty9kwWHTqhHtUkB7r8hlQnwtAJvUralDSGJ0h5p7qSAmDkwYUyagYNOKCxMnvU2EVn10GRIjtaBtXsM0R2jKBzt4iuiK7SYOVeeDhDVDPDi8V0BmQ4HRLcjdZwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfBYeKKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfBYeKKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7391C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762982993;
	bh=g4+Sr6dT/6AqozPxLzu2mo1yN1Frr9JUIUBAIePjKDo=;
	h=To:Subject:From:Date:From;
	b=FfBYeKKgD85WtUGnX2QSBWwHlwuhBKCefTGlq1lpCt4vMhN0PZquHzN3ndNLoQxw+
	 Sb775Y0H829z1TXq9jyZUlO7y9/wL0H58CWfldWifz5WWYhJhDVj+o0dmEoz5ES33s
	 lul9MPXtYavrEZvOMVfZSbEyUj159ZspfaWB+LHEFr++SSEIm9hsS6L8HlYN8w0par
	 MrP0uCMFAwlYcEE6oElF+ai9LuIKnG/55ppGbzUd8Y2RwdxkXmFz4TIrAKkWkRWNVq
	 9dCrJ2eeRhDA/Uh/DslykH/fNXMR4qb7IKpB+Edl0mbwCvuKltBeAT/MCFoQOYd9NS
	 yu70+PMBwFBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99034CD4847
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298299361.11945.8649931795842015761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136dc5643bea8ed92305a49c532807bebbc19af4109d95360b3c3551d69e402f
Date: Wed, 12 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762982993
