Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173C4AD2F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736132154; cv=none; b=dV6SeeuHgK8i4IgR1MPm2byiUTRV7o+FvlVnO1RN8gxO48Cj9ct+qNPeOk6V6mYPkZW6qY4aoZnq4AjxaJGk7/GC9axgMg4P05yK4Xx4nJ1E2Ys8roM7Ot/7kG4Txj9MID8lzE0YK9oX+n8Fbg6zP382B+64TJde5adae4WK8+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736132154; c=relaxed/simple;
	bh=Mw7XuOesAiLfmloUtib8aQwf7pfcL2URVSkddq4oI+w=;
	h=To:Subject:From:Message-Id:Date; b=YEx9bn6peYi5wIbVqKFb7L5Ati4ymcFpOw7X1dVCz3WR0RuIOjDKSz0ss8osMHqaOOXLAMwde/d4p6dtE7nkIVhW+cmehPXHCIy3oOHDjmhS9Oi+Hle57+rqvL4p4z/3RqxZluCXS4g4bh1kPfu+yYedGjJuLJpFmOkIh3n5pYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJng9aF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJng9aF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFCAC4CEDE
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736132153;
	bh=Mw7XuOesAiLfmloUtib8aQwf7pfcL2URVSkddq4oI+w=;
	h=To:Subject:From:Date:From;
	b=fJng9aF4xCTF6zD/Rj2qwR8L66bZjL8c+k6qcq0ZjI5GnBywNRG4y/eNdRynp+UNf
	 omgPA7aKm5JcYPZ7RRS7yJKQA55k1Hnlc/UKEWUg+4r7CM+wDHzG7gU92v+9nZ7eii
	 K7HgzTyhiQl/1ZyWFLeBre3Tbppi1Q0TT/8SqqrbMuCshVZvshWI/jX8Jds5oaG0rL
	 FM/eOYwE7Ru4Vi6LDo+XYS+YGIOWfGoUP5TFTsCB0vdwgIKGZvFsHGCOC0WzJsvM/p
	 /7/Ds90Y2ZK9b/4y+aAYJsVqUU7mkYiVWRQzuDcifbXZKz58yN9K+m70GU9Kt59Lmt
	 4qlfoDtslLXjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A927E77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173613215362.1192.16252078610664262963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ddad5d5771113ca556b61c30506422413ca2dd5cbaf6af1f2f0e001b024862
Date: Mon, 06 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736132153
