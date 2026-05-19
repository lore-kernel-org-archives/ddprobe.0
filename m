Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C3A327C0D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779159034; cv=none; b=Xa8RAm1AM/K8IetHVqNPmmxKvC+83xLPWXC8t2JLv9OwczKiupKgIiA6QtX+AguppDkag+TgxXW/6KzdZvAABpjtCDvImwPzPYZ9aoZ9kpVOr/XUuo5iOT9H2tpn7U2yfN4nVbvjc76wCtkwGvp8/4pxCSzvJL+PTj1NlldRk3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779159034; c=relaxed/simple;
	bh=ZkzDyzru5QLoLwKRj98sEiPRADC5NdCqZsVtLbxpbJw=;
	h=To:Subject:From:Message-Id:Date; b=T4ok4PuACs3jGYFm6SivhfyoJ5Jx6YojAigRwvKVyU2nq3IHZitdecdbbp9KT/w08ZcsIrmd+9mLBi9HWMdc9PwA4OH1rGezx66AJBcjyAzWHdzDzkcjGmuVTcl7zjeycveqIGCy8g8JW8PzmvRNu2zavXdNpYv0GPDnGUCabsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWTa4MCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWTa4MCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5BFC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779159033;
	bh=ZkzDyzru5QLoLwKRj98sEiPRADC5NdCqZsVtLbxpbJw=;
	h=To:Subject:From:Date:From;
	b=rWTa4MCC7VAPbCYwo33o5OdZn4nqcp6QIRzg4AnPcFvADS+tevFnT9Nn/huzwClMi
	 3Ej6dkWR6bD1yb0CrQaO60K3HNGdU+NGNK8fCkx4Dpp1RURTsy3qpjz42rC5U7mCBa
	 nkmwjfjxu9NgPJO8Fw0JjSyIln3/eTxQBUoKgITHPANjh/ty7+y7pDNPEz4DBSvb7P
	 Y3eRv/uRR0lnWmRBPwP3+xVT/NkiCVL1KFy09FChEbnesOxIbmLDPfd28Plun1/Nm2
	 uu4ZFD2hV4/BSZdpPcnMxqkE5H913UF7Ys31mRMzn/GHRJ00NGlMqUusaAfzhYQq6F
	 M+2rSSsMG9fkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9E5CD343F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915903368.17913.11363912206589293611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298189c6faf615dab5d883766b591e9254ea0b2dc1c65f3cb459a571260334b2
Date: Tue, 19 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779159033
