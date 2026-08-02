Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6083C2DB788
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785672034; cv=none; b=U45KlMBc6SuzW3WuzjG3pWHkjtBdfymlu82h4K+32uIDn2mP6Uaa+Ropa4v3k8fwB5mZl9axUCBq8MATShAxXVOnShUpl6rRIqzlKpVKeW3u0VlMm2pIyRpg0ewdrZkum0yzfTDvf+qpahSLX43G44NwTSg+TEaG0PgXrXw8VsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785672034; c=relaxed/simple;
	bh=92aKQ2LT8Z+S9SZRdRD7DmOCq1GVvs/pICDdaKZRHXo=;
	h=To:Subject:From:Message-Id:Date; b=YjKI6ofhsw2YPXBvKTxAB/QuQuiIDcUpDZTmYXg6U2ZrXgDsooZs3RZ+z+k+4Bk2Iv4yp/5l3tBun/qzk6J6E6jq6P0Eni7bU5mDICWiKdI/9FFzt3OJzCZtMQ+YouAFijivUGc/Dyq0LlMmfdwAvJJxHGZ3m/JCzhyrngEcuzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZFo86G/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZFo86G/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FAFC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785672033;
	bh=92aKQ2LT8Z+S9SZRdRD7DmOCq1GVvs/pICDdaKZRHXo=;
	h=To:Subject:From:Date:From;
	b=jZFo86G/+eOh9kh0311XbWV7YsID9pupCNyvqkbyGVpoi0gP/LG9MKhnKWo3+mjcV
	 s/IDN5A/YM1cABp2dyP3guQCLiWIZ5m1V0zVcHsCbdVstfl9VQOG6T6L6+SSc+FoMP
	 nF4BzDVtZ/gbWD0hK6fxZy6j/UrtsRh3K5CPxnq4y66USCEgFj2mQnr+EQWNKJdtVA
	 sF8ea0vH9YMDeCvnAvvUjXm2DQlXHF0rHJVnc2xyCQiUyo+DiOzPB2o/0OruReAciG
	 Oyjm6S2g4HGghJkNCkXTEFNvuVeOedCj3S8l4uzB8Ri6ad8X1clfmaSo1tgOPLH3gv
	 p3cH0toibLtig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE06BC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567203368.19171.11230329015524560130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045bdb44ea6d5797f58eae1a704c2b1cecdcd26fd7b42c1bea6740a4db525951
Date: Sun, 02 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785672033
