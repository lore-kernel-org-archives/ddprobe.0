Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518C2370ADA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785104434; cv=none; b=gq8OseWKoGbgUZXATM8INZZ4kCx4r9YewgB3dHXOXNwKmhE41SLdb5Zn79eAgAEcjKyPLQA//Lzy/6Mi2ouwJM+Q4Wy5NKK7+eIS/FwCQbdikE2WEQBKsLTvhEcNHy33Q+3bmOeZB4J+B8ELsIaxMC/Xn2F9CBpJALwof684ebU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785104434; c=relaxed/simple;
	bh=I0fsVvpF76n77AQ+xjfvEpA1mzCB0QT/95w/YRj2Nwo=;
	h=To:Subject:From:Message-Id:Date; b=rOeZNJK9QxSd2PUb1wAJS2FDs0K0LdfooHIUFWxtdE8aqZE5juZmizeBia9g+ArGQF/xo9Xk8ED3P/IKxieczVwsEALFuDPmNMHFQKBUCO3SCIOGOpbPMHZqpSpOnbzmplXoOq11fF0m761EuqKXaBFxseSHWKHUSI8gt4DIGFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPoMrVAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPoMrVAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD24C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785104433;
	bh=I0fsVvpF76n77AQ+xjfvEpA1mzCB0QT/95w/YRj2Nwo=;
	h=To:Subject:From:Date:From;
	b=VPoMrVARc9KqGmhkcTwWxTBkL1+Qf8rJxyle3IbcXJdinxb9rV/3WiCtEZ2T+0Xs9
	 UyIRZc/8b7lZp5+50ua2Ny2PMOsUUuEOU77sGHdSaGhzrFH4izxgL156dFIa8dI+uE
	 u70rhX0Aj8H1brOrECqbyJsxGUFiYeqmym6JKBd6E5swXw/qKbDh0XvDB4Z3ZO1BDG
	 EGq+QiPfoOggNypAeQxWfPS3ER6DdryaekoRJ5Rqpd4KNSxGWm/kNy4B/wkeg3mNZu
	 3yvHPlYBY10XH6m4QE4p/xlkobl/97pxOX8z0fJj9MbX2CqvPCDtF7tr8XX0TFZ7uu
	 1n5Kl+emV9taA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9703C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510443368.14322.16198420421392999195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d4a639c49cc0d0adea63e657c48d11f53d22a083c43350ade64ce07efc01ed
Date: Sun, 26 Jul 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785104433
