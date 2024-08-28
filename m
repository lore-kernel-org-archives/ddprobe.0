Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3057316C841
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724847354; cv=none; b=bAW9KRlAC4B8li/gTTmL3ouEqPLBry22cYbEVpYJ9r7MWWmrYRw19ViXM6EzUWF9uxBbvQH+tPWvV3ps3rIoqgUY3IOStIlv6QoNRY9QeKuXHwyhLIahI2TdsUQhT8eAM7sKC8lw0d94iaaJ77ArMGTO3RIPY87NF5mRLioW06k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724847354; c=relaxed/simple;
	bh=wpuKu4LKBAN3RQ8V+qmXQYM7iw99WdXWm3Jl+DnNb7Q=;
	h=To:Subject:From:Message-Id:Date; b=lYvC//qLArsjd6qCjzLEHc98jf52cAfv5X+y8jod3u9MuSBSEMexKxj/SIyfOFLFqYmaRLt8/DrxfDM2Sf6g9ahpUP3j2FNZWLeieHssN74Rwr1gy3PecjktaQjR8yQwT/HBCrY2lENm3RFOxHadpqSvaHg7a5CP4EpWulKYj8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0qWqxxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0qWqxxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB68CC51598
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724847353;
	bh=wpuKu4LKBAN3RQ8V+qmXQYM7iw99WdXWm3Jl+DnNb7Q=;
	h=To:Subject:From:Date:From;
	b=B0qWqxxblt2I+w3xQVIwfN2Xst6ENIPFEVtTl0ctMvkghQgWEM9zwabIn3uka289C
	 x7EOteBFpvC3NzMigAc9BEDd2vpKnq+ENnKlqfamaAFz9qIonwYp7xJbdQ66mH1Qtk
	 3afR+Y6Nk2Z9FlFJm7mFRY/eGta1if29Hq4BDBHtMiiuI2dr9l3lxDlalNGIJXswLR
	 SGztv4zlZdUQVxNP/Z+e4FOL8GjtognpUSyo7bco7khsn4hkN7U7dlkaJThWaElnIX
	 oD8gfqRnohCjINQ16DyhDLPPssoRfWR8c4bSg62FRl43Bq8iDW7GTPz1ooy9KLyOXd
	 xkKaAyh6gzKAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952CCC54FA7
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172484735360.1228.2801378935611026440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8610791a08673a42cc25529dbe0bd81bf44132387648af8aa056033d085aa250
Date: Wed, 28 Aug 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724847353
