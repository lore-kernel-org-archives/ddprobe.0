Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D311E32CF
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758379194; cv=none; b=nvJ4/5lFXYHzdqJ+ww9t4Pi5lX+sCIYSc6IP/2KjV3B+o2pqTYRqUbcpwM/F48QX8vWl7J+mOC2PKVeyFKvHYbJ4yqB331iEIuG3JD5zutCObkGcRzmUuIJb88tvkLlqKY6rZSq/cxaBXlUJpp5LsNMflPPHS8Y+Yl4vD2WkSpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758379194; c=relaxed/simple;
	bh=i37pNswNkr+a5/tT4G273q54ZiIzgUL3NVIyvEbcGTY=;
	h=To:Subject:From:Message-Id:Date; b=ZeymHsj3nJTnisY93mUsHsmYSU/uceWzBFKxYS/pAACWxpK4TDEuThMils+sykGITPv8nv/wH9bGtoWwJhIBz7EC8eXNNuVi/gSFMTE8uPvBBmbNm3Zs+2LNXx5LkACS6ynU3Ulz8PEXt+KPmxjKsE01c6U+dDH3YxqZLKbEczk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf0YT5D2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf0YT5D2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758379193;
	bh=i37pNswNkr+a5/tT4G273q54ZiIzgUL3NVIyvEbcGTY=;
	h=To:Subject:From:Date:From;
	b=Hf0YT5D2Q3kXZEAYana/mXnfMNhnf1Knjxx/kQLQgea22SKyPncqqmQcBMR3wAaEd
	 A1Nu0Y34+EruwSo+5/sjAtj4I9VwpytdGm6hjHYtirQ4RG7dAd3Oy2CbGtDPbMgPvA
	 cvIFxIqePQURn6YnYdvUumlYxn1+1nA3Y93pBXz6JVslmMrgJhpQd2jZM3eXx+eiOG
	 tfkSv1LJuEc5tG0B/8vpp5/nxcQxSSnJHZPdGJzDKcEsBVGEoGLQZzRDygTo92bwy3
	 csOis0VpoW2DoP8kzYFc9G9opd/oq+tzyuv6xMOp5fjQAkTvLP4vUVfDc+yYOogey4
	 3M6LrTRwSxZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C5CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837919358.12407.8503247606113751710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d16acd02677dca511a4beda360c7417676885d1c834faccad9c3c10be2fb1b24
Date: Sat, 20 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758379193
