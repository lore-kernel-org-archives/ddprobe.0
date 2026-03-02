Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252EE38DD3
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772417094; cv=none; b=eilttVg4kC5moXUTCCIe6hLF9Tf71BRJYDeVTZktgfDrSj9uwNjmcsSoOi4yfd5Uf7RTdquulFRNFDZi/hW9Ui54nAGYTtCRtxs2jFhOOcZM1hbWheTVCCONn+o014I7jwChKnimMX5u61dA8YYq5R0jlEcnACDAvlFr/erQlg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772417094; c=relaxed/simple;
	bh=XGd228VzmcJd11fT7Atxa4ubwuqrsV6twhqtkwZrRlk=;
	h=To:Subject:From:Message-Id:Date; b=o57GB1eRUbM5nGN0VKWchehl7AoyC/aEXyUunQapA902ib+2WgLtm9Hgx3PiujCe3sCtEdwzg5QFb5efopNp/vkybdlQKUX0XYrA9XP5YPgu+QvKPvin6Kd8WAv2nGU4UCBksqIaN7OBajp4JOaRPujzVlH51Bmqq5WALKY3hII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVwkDno9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVwkDno9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C223BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772417093;
	bh=XGd228VzmcJd11fT7Atxa4ubwuqrsV6twhqtkwZrRlk=;
	h=To:Subject:From:Date:From;
	b=XVwkDno9dqDSOkhDFBAZxuleDodZu1NrvE9epP5LWBSEwa0cjHBL199Oop8tsboMn
	 hn4CpS8vgTbKYJ/8zc/YVr02BlfO963ZrZwu9qworiKcVQp3kmKuXWC+HZmJnOjrot
	 WQWeJAzXu4cSvg749tfQh4o2ioZ0WkxtFr7vtYopA/6TFhgci9tcLf8vpqd/fMxhBo
	 m33SA0SrrgUZPzzArvw6Cxftb1JWTX7yArINVF5mvgVtOkpLUBISdH3TW+87G2hsVp
	 CZcO8S7UyNeX7Tlx9on9Q/HLlrIWN2iDVY/AjMdiMDzUoLbFMjx3htT1P1eefwA2rY
	 QLW9kaoz6CxVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F80D58E43
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241709364.21778.12945507554347396017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4d96031e892384d7ddf73a53cefd2fdc9439134e8717b23cae2b363ae034bc
Date: Mon, 02 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772417093
