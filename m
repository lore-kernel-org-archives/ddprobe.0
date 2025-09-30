Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6535486347
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759239594; cv=none; b=XDREUC1M5leMmodE7Sfe8+xOkpJuGQ4sH/v1NufO6FAAscUaTSrqbcCqff2WGkwQN3ppgGzJa3MsL85DCFFNvq49jPmJYc8wz+qtqGOGaRh1vkl6rrnPVqfshNhJ8o7WMb+IfiViVKu82HeO/wat8tEJ5qfGUiqlzOGRHnZbDhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759239594; c=relaxed/simple;
	bh=bn4kxNXhXoOr3/lND1cA8H60VNbU/GUnHQe3JqGh4wc=;
	h=To:Subject:From:Message-Id:Date; b=l1fvg/vgowHXczUEUpZq2A1taPcKV4QSefSDdygxTccu0IHkWPmLp7DBz4EXYZ+BaHEWEmO4ZuH8snSq2gI2T5OX5bx3tkJjvXFZw7X4DZs/T8L5m1MitWGhVhiuqSQXJoNHzUKC31EFR8/mJkURJImWBcUxh/cjGuC2wcG6+x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcVtSyNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcVtSyNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5237C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759239593;
	bh=bn4kxNXhXoOr3/lND1cA8H60VNbU/GUnHQe3JqGh4wc=;
	h=To:Subject:From:Date:From;
	b=IcVtSyNXBPvMUdIRArymLN0CFG7avO4/kto9sodjTRn6qapAtjnrQnldRWFxHRmoT
	 5TAFRl8LD6q4UgoU8WCbPtkgZs+jzW/ni6xrF0/YsQK2j3JI8WhwGz2+itha6U37j9
	 avbms8Up6H+vStjW2+Uk3/jvWOiYJQmlm1gk6Mc+CqDMq8JhgCdJ6fXZQ0kw9sZyxx
	 2LtN8j0eWWLHmf/xMYXeD2WCDythlAAEuTU+3KL7OzoA0cGV2PjFoQco9dmegktTsz
	 7onwiNm7uBFxCeHsA6RM3wPFb3NMk5tkbN8IMpBxi7Mvh5EWVAwwimmrtoz6kb8iph
	 /9uHZ7fj26OHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C053CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923959362.6965.13482523191433177955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738f8ad976e71274dc462154b8011ff0b386415f9fc206757d9560775ab26c7e
Date: Tue, 30 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759239593
