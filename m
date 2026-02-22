Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18808481B1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771730094; cv=none; b=KYBxDnP9KOUG2XfNcDuy0cGxhRP5jvu1Gev94fpwvOOnPwWyIgJUejQ+L4zSNEqlJSzwh9MHOcrCFcfZkbF233trRVlShpUyPwiyePGAkGJK+IAs4tngUfeyAfLwB5mYLnXp6dAGD9q/3ng+74KBQ8pWvbeyhXC9WTGrJHLbj8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771730094; c=relaxed/simple;
	bh=mmYPkNJrjkIbcnkVF9xDcp+sSHW8P4cyOu3eacXAs6Y=;
	h=To:Subject:From:Message-Id:Date; b=HgwZrTBbDAaqoXtEm+zVJPM43nxJHX/jZWuri7aiykNbB4mw8006mlL758iye+XbnIvpGR9vfmWX42qaMD8KyBcG8/jN9jHxSBm7mR6gJX1WvmKdxm7s2KprKWIALBILVj/Fiikil6rE5FMUHctBpY+0d4z3FmHw2hUo7Z96Ibg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbAVEK/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbAVEK/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA13C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771730093;
	bh=mmYPkNJrjkIbcnkVF9xDcp+sSHW8P4cyOu3eacXAs6Y=;
	h=To:Subject:From:Date:From;
	b=pbAVEK/Y624/3hKslP/Kwpz+EYBAMLi2qmYOQeOBgqxtA3Utanqxw2zSbxdtC3rwV
	 1fLy8yjknsoEnKho4kM2MBBrj3hZSRDgFxS9+92O2jCnrQtiC8q6iHdV2FQlpzqtRp
	 093d7jk40kIbl7N6PEEsEraPcXviFeE/N/Q/W1jdWQCZzIzOamqZsGGjrIyLd/FK20
	 L8tBO+U2Hw95NkrhbjQ3gW0TO7hhsMTBSjmd+vvTc6iTS5+ZHLE/k+NRlhpUDikGF3
	 99C2ArbS8fDUv/XT+Z2gy9WhToIczplLSmtf/SURa5htzeskQKLjJOlMaW7lST7xBU
	 5bIxiCUqy9seA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FDEC61DE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173009360.24880.9834796658535455476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac12af7dbd4daf7c20f185d2fa8ce64e733a27250e6587c08e7668fc8fdf02cf
Date: Sun, 22 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771730093
