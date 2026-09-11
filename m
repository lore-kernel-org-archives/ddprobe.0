Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB58330ACF2
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789101634; cv=none; b=UKSVoRciD1R0CTbcbRfz6xpER+73Sc4MtTQbHHA3V5+LE1i+j5ke0366ieympQqbqST+bVJrAxJacmqwVFt5m22vNZyNycBmALzF7sxA/Hcujxjsmf1lhfdxwtENYeSckWL90DIB6RW53Aa8jmkXNZQeh3S8Y1P0vyOKidot830=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789101634; c=relaxed/simple;
	bh=2ScJbnPJaFQUUI+Z3TF9Eu2j4V8XoyuSMknDMRI0rIg=;
	h=To:Subject:From:Message-Id:Date; b=Xn3ljB0iU0VaI0utVfnMvl25zqLeeMtNadXTUdju7+JM7jg5En8FwV48epBYd4mbXDHC/EMkgHgMRNhSQvrkbx+MHCPMLcnZaILdbFjyGgd5tCnQyo69hK9BYY8oN+/ub4ZUnkeOXjpU73/7iOJsFpS7o+24a3H2fX6DjjEMxfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sU8nL5Fg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sU8nL5Fg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D080BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789101633;
	bh=2ScJbnPJaFQUUI+Z3TF9Eu2j4V8XoyuSMknDMRI0rIg=;
	h=To:Subject:From:Date:From;
	b=sU8nL5Fg2V3iKbrdLE0WstU3XILPd75cbx1aW3qtAsie5zugO5UwlOYjNd5e6do2T
	 BMtSW3g8HcESZbXl3EQgKsZmf28Xl8HE2G3f/zAuwt2iDY4+8AXivXAoMNzPl0eFov
	 4n1f6jkkZ96jOhu75M0f41qwzULjfy4L3qY6dLehLfpaTMcQcmyePHgcamvSZIPAq9
	 pvBTx8ac2K0A/Xfv4Xz6ocMraGmhZ8wqYtZ7ARGOkRtrWXPYrSOMrK6xCV8t+GzsNe
	 1e72JTuN9vKWp1HI2Deyb+Bs/z+YKBTVQXFZ1oMViKLChZ+HWbgOXjiPNgUnRZhrlC
	 oUFw4GSELFPKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA26C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910163369.8075.7425657744996232939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14fe3f071f3c29a392531a2f09c831d6e20e67a9eb8b8ce442830ea350478678
Date: Fri, 11 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789101633
