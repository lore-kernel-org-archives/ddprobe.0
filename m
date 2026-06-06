Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C26D524F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780734274; cv=none; b=ITD0sO7/PjuamnM+GYE1p/dNbQb7TUz/SikKtGImiaP50n+qL0l0/blwLqeBr0yN7rKh0/wQiNsHk1f1j1rntyQcp131YBKffcw39wAgmbJIkMivDD3tksyBPdtWNUAs6+98XqXPOfhEp0PE8dpUVaxhIEt+c/47ZwWgVIsqwZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780734274; c=relaxed/simple;
	bh=HqQv4MTEDkA7GQpPaUuydd7z+XNneO2N/pZ3sQ3z4zY=;
	h=To:Subject:From:Message-Id:Date; b=YVLbs2ii652XfMdRorkKoicZZ9WywnFb8OFETd6Gk0mBQC9TnK/o+meDQiUXbUVa0XdIQ3zJpoZxy8Fzs/1Jt/XmdyO5kYOx4eFo7lxYJnrwCIs/lIYUES7sptlfe3nJydAJYz3jYldDZFl/UQNpc4fWtYkZxqJCHeObZIZEFP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpdTRwZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpdTRwZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8F3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780734273;
	bh=HqQv4MTEDkA7GQpPaUuydd7z+XNneO2N/pZ3sQ3z4zY=;
	h=To:Subject:From:Date:From;
	b=MpdTRwZfHdAmsHjLJs7b/VsHENrG1PmAePMo0nTHVL3RKipt+FYk/lGElESXwqNfB
	 WxttenM+StuabpwCO6xA202Cd41F2op0QKeIWuL9pRm+MgIDYWPMoOE8jPbkSpxIy2
	 JXY/FzP6YNUo2gAcqKDJwkrLSu8B7lrXolOhI1WqJR/lffHVXH22F4EUJ6STZWKn6B
	 g4Ch4mOwh+bWuNjh5VWFdLA/wqGU1ZHQ/6is9JyjliubpiuFuWs5rxNMEoAvO6Km3e
	 PsDRinwiaOCq79LY/0hduyod+cIjLytO+8HM+f87YvcKBIfl54mJWwcVpuyp7sSnKL
	 T/+oaOTVKTb2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD05CD8C8B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073427369.29166.17628899333750302697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4dab0927d3987e1771ad3c85135ee8d969145f387ae2b8065866ffd44a06ed
Date: Sat, 06 Jun 2026 08:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780734273
