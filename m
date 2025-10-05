Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C65834BA3E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759625394; cv=none; b=Vc9g/KLEFFP7HkxaydCHgvBazx9lmZZvBwPTIyB1ul6eQwk1Ci0QYeaLTZi2Pi38Js7sIsSCTK0NcJEvcW2UpPulC6a3YaRsiX/nVTrsxMrmb/wtC8BO/sPXOCX0et7e/snM88ASpBAJWxSv0rpUabDIyYZw2gAa4YE/IwrcY0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759625394; c=relaxed/simple;
	bh=KAqSYUoAqkAFKQJKb/UI6G9L5FSiQCHm/4ZuIgFD/uc=;
	h=To:Subject:From:Message-Id:Date; b=I84DdTebc8d01RVNOte2YY56XvCczxiY2pZ/tUE2HTrIiiaDu9C+RzlqY7EeyNGdG9c5PIcyNWuESYdEwSoH9IQs7IbS8qo7DGmXDzpPAnQqxxnGNyn1J8cb1arg+ReIKIjblWItLckiPIXReRSxjb3qtd/TYvZjaZjnKq9KKes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PX7jYoFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PX7jYoFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65A2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759625393;
	bh=KAqSYUoAqkAFKQJKb/UI6G9L5FSiQCHm/4ZuIgFD/uc=;
	h=To:Subject:From:Date:From;
	b=PX7jYoFEZuJGI6SORQvI587RmUY0nDgFgVqetZKqTVFCoL3/iwTzVg7kjJJQUE9sE
	 V6cPlrMebXflAh4TFb1tkdIbZaf8bz0BL8sxd1Q6y+anQ603PT29sQWmBYKwR596iw
	 wiZEgoilsLMnDkZiQrjPO9ma9ERbr5SW5OMAOKbovSEkanvR53lkP8EkLgjUlg9q1q
	 KeyVBWxsLeE3xaPizy+2MD/Dr0rfPBKE39jouL1zEVb4s0igXMBdHxHLmkkxc++yYM
	 wPwPvPvHle0fpxXqKBEfSShBmO10ArDqcNJ4/yemsXkme1P+MWkRZ+DNsuNopbpmXG
	 XfouO05DnIOEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D40CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962539357.2296.16192911822193481746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70572b4b2216d610684392ece6a097097ab52612f415e9c657a8bb39f3b93aa9
Date: Sun, 05 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759625393
