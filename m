Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775C51B7F7
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714584743; cv=none; b=jLITXCNUf3e8Wm9u4AcpF+xj0JaBWqqcZc1jqfrtfVnL9WufZGO/XT8/Z46tXaj1OS69HtXhZdKSsfJQMA+xpVpL/XbaFNg3YN9qmsI+vOyCdhwa+uxJQ91dpeNDFWknl37HZtO3ElOriNHuUoyKwgFO8MS94itu3zw4aVzdSf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714584743; c=relaxed/simple;
	bh=X1oc2Qhsdb0yMgbSROIqSENHIRMvr6XsCMsPeh7jiow=;
	h=To:Subject:From:Message-Id:Date; b=lovpNAOkK9BcggayzSvZcjJm9rO+uNykysKyL5zlRrPtcVzM3s3h6LLhGHw2/AzkTwJwD5m+SDHSRufm3fCK2yuaoaXhPLXEFMz6L63f56aM8jxtwdHpjAzT2uUTUaOflE3JZ0KqBzTEL0ePOtCaHSqllaa8qWuJ7EdBjnyqN28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DI4uPvWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DI4uPvWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94ACC072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714584742;
	bh=X1oc2Qhsdb0yMgbSROIqSENHIRMvr6XsCMsPeh7jiow=;
	h=To:Subject:From:Date:From;
	b=DI4uPvWD1wQ4PQ7WVnoWmLz8UwEggR+YOLoHZKMr3xR4lX1HHOBmobeQcdiizLZDV
	 r42XBDYduAZj/YvPIJPGRgLAj6sORCdL26svnEMprOjPqrj6LXz8SUDhGqBlm54rj5
	 XtDCbsFXWDuvFDBHiKVk6aplNGrEsFWgNiwswvRWwEsd7yAk+yxQEfVaXS9pGlC4Fn
	 tbaVlst3gnvbGrV2OvCJpv/eYrGdXvMyVOn0MhCQnno4cZDZBKm9TW0K9UNfg64q6O
	 MYstBMOhRCxGJS/PqUXDbDJi06DODNgIYmH0V376WAqZfmDrGx//kS9sjvJarKe42+
	 NM57or+omNjJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8833C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171458474278.18181.8789894646306351301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a88b3dc81216a72bab8a8248a0f36461375796ec63d0290421be71665c63cca
Date: Wed, 01 May 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714584742
