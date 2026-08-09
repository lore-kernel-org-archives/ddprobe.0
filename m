Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A03819B5A3
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786285234; cv=none; b=ZUoiDtjg64TlPBpblaH9zx1UK1N5ySIyjiXoFmxLR3EjCUlWDN6WV3ghu0QeC3+DHx/rkXjIpODxfNzFOqeZwEF36vNzRUzwyrvgiLfB5xBIK1og3jt2zL+T1sBT83HZbMCHLcw62Pvpp9fOKzKDd+UQ9l69RCiv/B4329lnQks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786285234; c=relaxed/simple;
	bh=YVkoz1PHgaJ/dXF05EAyoSMSXbC+cjaMWllt7ytz5ds=;
	h=To:Subject:From:Message-Id:Date; b=ZWqbpv8boN4s+eVY7oGgyqMlQTYkPaj9SLK/KX0Y2CKjH+/tIcc3DQxE2+a25FghLuUcRQi1zCIGiR80T3EH72k5Jo3S68dI07xtayQcqx6jzMjqpCaXz8C2MMZa7VePYZnbLLdOkavQ0yyWY8gU2WanWTVwUNyBOOkqNHYbFqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0N+tVFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0N+tVFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E611DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786285233;
	bh=YVkoz1PHgaJ/dXF05EAyoSMSXbC+cjaMWllt7ytz5ds=;
	h=To:Subject:From:Date:From;
	b=g0N+tVFVfQHC82GEWLbQ/xaVlQkq+KBg/u0bqzZLzY8eNvTiCF7b0L93iDdBBmq7W
	 h17KfSYarnGv0rZqJlJWqi7h2RM9joSN7VswCmRNIxMiL3NTV0LwdUOtkDcbZh+EoD
	 5zUoYJmgHNdTb4YMs1loqqK+IixueEV0s+ixCleoOFodFDxXQPkC/hLQtUTiSd8J5O
	 /mGaA9FOGX2QymuHBPQLxLtXXfi5QxGEx1OoiPRzaWehwjluDQNoVL5tqV7quu6mJr
	 VSZl4b6JQfshwJMVwd2JeEl8TvN7NFKXN7/4nqHrPVuZdCT5cOT2j9Urd70TQWGClI
	 CX2NQYMMUhnIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A3FC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628523373.11355.8342181829772657914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c73af8f3e01d7238828ea2fbca8b5253bb04e9596f52b4328d051afa65de92
Date: Sun, 09 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786285233
