Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AA621883E
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789290034; cv=none; b=P7khn99UFcnMyrnHXGDXlKdzvYioaF5hpCTncE9X88jLJisOjeBt/hnchJwg0X7duxocnbOqXIm1aI1xRbMyzTn10DEr7h1+bRRKbXHf5BAf6R4v38oXeApSO88S65/oKknvg2gu5Stj3mfxpJ/8PJj5s4plsyXiU5eeNghQjhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789290034; c=relaxed/simple;
	bh=9t8CYwfWo8TLsZJT8G+0ZnmPsVSusBzJ7+Fv7NJ2IEs=;
	h=To:Subject:From:Message-Id:Date; b=pIZhgDSsdFx+rl0ZahSakH1Q5eTzhkqP/cYBWqmunHQHpyQDpYnYUDZVpuJ5OGihqqZX0eU7MldR6DvaFlzYZWQE0YGNchE79EAoc2sHMPRlcRVTWsuDWwJ02lSjG1wqMAI813qmWEs5oJUT1UjDKx1WBxA5AzcWvMQ45HC3FFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbMfe0Zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbMfe0Zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E99C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789290033;
	bh=9t8CYwfWo8TLsZJT8G+0ZnmPsVSusBzJ7+Fv7NJ2IEs=;
	h=To:Subject:From:Date:From;
	b=mbMfe0Zzz2cfY975vW9YWz/icUIyYeuH7qwMoyRdgJFa6JXktpqOILfr0+nxCoJdj
	 yc6DnFJeP2ZSR+D2qD348Z02tn/8RpY/8GTbCS7P1+JPly39G2QlbHqnezx9AT/F8Y
	 fKdNM8sek4S4KN514hapCIRcilKd6lpjFwDm4KCcgxet7Y4+w8rwJkuq/fqOn1jyvD
	 Emo0c2LF0bKLcZTiOR1fGP+eTq0zKM0v2nEfqtgVVbwTqLbwL1ke40gLIt2JQ8cM4v
	 yeEKowM73bMp9KXtMMvozOEy8aK6udUA6hwmCin+RtCfpTwR/RGljJufgpMwJMqf7d
	 Om0oeOsN9r6yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA8CC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929003368.8162.174912940182188524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8baae854070c1ef056c832af2e8d4f206535fb2be086794c55c3171fb07477eb
Date: Sun, 13 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789290033
