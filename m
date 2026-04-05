Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B127DDCD
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775379934; cv=none; b=CmG0IaMs/+4PpZiOus+vBstdUGKp2hJHwi+Xo1AXgbQuV4Ur0nI134xRgjFy+JAj/QzQTghglphbFQdE+mp9EHAY2ntqticA782N9IQlyQJWssVaQt5RcWO59Rd4AjP98TEbzDylD2mt50mdbz3+RK2uuNVNuyo2Fo1wV4UWkaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775379934; c=relaxed/simple;
	bh=c2lKSeAMZaLsgxory0CuCSv49QGjn7h6aQ0aeZax4XQ=;
	h=To:Subject:From:Message-Id:Date; b=qaSg8H8iGI33EORAu4nAgCRIT+jeZfLIu2lh+pNStE6/jvFcVu3e5/oOI2fA0hkyIdljcjw/IO6RxW9pAaisNqhnQWUWXV+ck22BBxDLg+S8iAWaJJY8d6C1Er/vYlyJ9ndYLAubyvKB+2gOIbMOpAw+ExMue/mgsQfH90R5cbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrI2fstH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrI2fstH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DDBC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775379933;
	bh=c2lKSeAMZaLsgxory0CuCSv49QGjn7h6aQ0aeZax4XQ=;
	h=To:Subject:From:Date:From;
	b=PrI2fstHb7Lsshtz3KrvyDD5GFqWf9qXXqMOSBmySZ4aOhOG7hn+iheJfLgpVQFm+
	 YPDnLKbGVGe19HAzrbttQ9UxQ9Pxg1WJa70f5h4N+0Rm7b9FPtNbwfH2NgfXFybNSb
	 hYTgMx0CyuNkPE/Y1EV4nHc7I338FVM+j+RU4vfjMHn2aQK3eDB1Ee7QtxEtSskynT
	 qtsSLNDCIYf5JcNwzYZ6ejuUs9lGI4RiFoR95xZhcycP9cGtHhcKwbmJkcZPQMV3Ok
	 GwiFdPQxBZkbDimeT9OSYrln+Jhh4EUC8z/RLCLPlLrPx1z8zdRpkOs5O6XL/2pCv+
	 Cs/h4r1axPQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFDBE64016
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537993372.30687.14313387395602315414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ca7f8bf729ca4e511240c13c56f5285988194bd1cb8956cf3805c29077507c
Date: Sun, 05 Apr 2026 09:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775379933
