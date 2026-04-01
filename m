Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1503624CC
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775057734; cv=none; b=uMdNK1au7QeQFFI27woNxSSsicE9it80ckUBmvzzkuKPHu2iPs3JkD8fDA4UJmUfauhZgwQtGmG0QSsACfOfC2cO4uN2vEHBn8F+Xj4LENFmoZUuW9aPZfmPKiEDThK5F/Mq4Xc+Btr91HFLGtd6wyuBN3jPmFLD4MH9FKK3n8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775057734; c=relaxed/simple;
	bh=ncmBwKK89fOl4gFszxoAhBy4PKwJduin5x1xDYGSklM=;
	h=To:Subject:From:Message-Id:Date; b=FdvaApxYC7jrd2IsW2XpJ8HZKcSIC3NXL7S9mIy5xdOfJ0uy5zP3JrdQDPXtGgNk8v9uBFF/bMikVs5uIxD95IrTs5/WoH2t5HFZfaUjenO3KpALQRnCe0bWdc0nYIM6XwrLMIzBSgg1r+O4IjvaaPTDJ2xtjphvbEfOXgVqwXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcssE1Rp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcssE1Rp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12BBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775057733;
	bh=ncmBwKK89fOl4gFszxoAhBy4PKwJduin5x1xDYGSklM=;
	h=To:Subject:From:Date:From;
	b=LcssE1RpvojccAXIMCb8AnKLs2iBJ40+5Qf/uiuss3z6rk1VTs6fqbBbl7zIBvavc
	 2+fCTsvXiRVBoasYhrsDzlNUvEUCcP5LZ9G3pQIZMnK2U2Yd0t6uIrh02Q6C10i7pD
	 GR9Aih2W97Be6h7XiyHaKxG7I3tKKkaGiXjvt0rMvuV0BmsoeiTa7SvEC4oy/DMlVj
	 SHCCmaXcnUM9uhiZ+G0tndN7WDHRJSKVmix3ut5KOZAVMJFgHVfQ2iUA22vtv8nfvW
	 OCVWNMvySQYZT9wZPpp6x/D6b73KmTvgeo0dL21zPQaS9rDxHWWrmgSWTDVA9pc05C
	 +3wmIIq4JUV+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5B1D35173
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505773370.20194.8914340633492570589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1aa77beb25570a13e0b3a66c3aa1325d311d7842e93887cd7214351e49b112
Date: Wed, 01 Apr 2026 15:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775057733
