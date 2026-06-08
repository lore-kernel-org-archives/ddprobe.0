Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272CC37B3FE
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780925674; cv=none; b=W3wBBE6e4DPWMFqFcWQCMafpQa4dhlrwwcYQqoDN0IvcT0H0ari6hj0dffRM2UDSfYTzIdaSING6+MFJGxDwcbT3Y8bu62K0TQZsB0wsvLxr1GyvNkrvJT3f6ay/b3SYGRfNY6P6uVjMBZg9fqohZoGCApOktHqeJ11HSoqWKiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780925674; c=relaxed/simple;
	bh=2paAR9G5accdddlbvKEvF5HiO96fFasVmmpwHPDEaf8=;
	h=To:Subject:From:Message-Id:Date; b=sl6/TOgFZB6xicVDV2PbUsgJc9YxTZWHKRyc3bN4T5cD6p6p+XVvaXj187zjGQLjTOhXpvhTEY/9vTOwQWDjDkEX02G2u9bofuGzJP1NrEhxdQiui1FGLxSNfyk3LVPOUIX6QxLnuYyR8n//2TY7AQ5RSx4dLwLO60myrIQ67a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2c/QYOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2c/QYOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED1BC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780925673;
	bh=2paAR9G5accdddlbvKEvF5HiO96fFasVmmpwHPDEaf8=;
	h=To:Subject:From:Date:From;
	b=K2c/QYOW4ABdjSeZ99xcWpwHL4HIVsz/do+1XN2ch/yiHRPHn8xvVjH/G7ntS5FJo
	 hxdL3t6vclFe5/1MQpqioS6hQHs09elVbRVa6RwTtcyDuh6MLFE0CoLMcJ9o+pAtKG
	 1280ZN3skAxDB7YC52NaDd4t93c9HhvOXtCrwNxhIecxPNRufxlpL5J9/5P+O1ED78
	 hNG1FED1FZi97hj19DW+SZDk/+KmyyStL0PrsE6IK0hQlVBeAoEAjXUim0LALl2cif
	 GmdnE00kGctUMbJchE6p7rlSbD7Fhp8S+X6h11VzLZmUNV1lm5AsxrxqOsdEeFuQnC
	 BfohRNbwl4tgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B310BCD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092567372.12825.1401080417800986073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8f8769e95aeef14b53fa8760cc0ca9825824c6193e0cd8870317da1d982710
Date: Mon, 08 Jun 2026 13:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780925673
