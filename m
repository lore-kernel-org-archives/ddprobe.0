Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2398A355803
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775627134; cv=none; b=hXyFETYvZxT9zCaDb2oaryqhBes2NIOEAYkZ3J+iLfXiZUTy96hSp3vbXBQ+YnnuVVIo9golCZ0yM3tpD8H8IbVi7dbSGcAK2rpkb2ZoYmvQsP9k2XPkM0PbplK/JODBYxn0XMeeAY2b171sO4qW/RczmdfOLwhc69WkTEJATCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775627134; c=relaxed/simple;
	bh=yfGFu0Tq9jtxbYF9iILxGuN9QBWa4RRdr/ARv5Yk99k=;
	h=To:Subject:From:Message-Id:Date; b=qGvUWFcONH/+vGVLGiEtjvk2LlbVNGCNoNXdK2niujbP4F49wFq06pta38wv2JduFWgoEBMPrs8ahJiXDLm5UACGiLlcTeLgL10NlX4TsP3kqSItR5fjKre8WBIWXqEJ+3Bl88gDB0afQhygwmRmz+DMpKR2g/1pP2hpEj04muo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgOqt5tN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgOqt5tN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11D8C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775627133;
	bh=yfGFu0Tq9jtxbYF9iILxGuN9QBWa4RRdr/ARv5Yk99k=;
	h=To:Subject:From:Date:From;
	b=DgOqt5tNaYZUtZxJXzg/x6mac6jSce4oyPiYfrp7pgjLUfLJWCf6pCMdt1BQtKcBM
	 YxT2UQllh3Snx6Zjj/BA7X6FJ3+DBdaNXYWOf3CLrPp85do0RD+KDvAKdvC5EvHo/4
	 fMFzlUlX03YOGRlGL8V8br9x43wsA6BGDM5DNbjPwhRzn2ZCLYM5xteo+5IOl0Dty6
	 KRrzRruUbNQUNetGaRQUjwlFxs94f5rC6qcIjcFgUB3wT5tG+kDfvtoPxeVobErCqY
	 uzJK78KIA71JTVCd3VR4trd1aSToq7z9ohPNxZjNI/wkw0K8pL+b1co8dhcGeHjFtn
	 p1KyTqjTT8yjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB904FD5F70
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562713369.6408.13781325800786271366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72db64c721a6539f4ca499fbd6ab3db6093c84c48e6abe47abf54fce143d128
Date: Wed, 08 Apr 2026 05:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775627133
