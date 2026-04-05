Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0C1C14A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775370334; cv=none; b=G6V2nn1uKhYQMZAz+HP1Oubmuk62vaWwuvyOEkc4x9/EfAidvs4iJr401I1QTf3gklh+gLf/IklzVEy6aa/CHn/pIK1p5TBis40nqISR0JBmVr5bSpjaoN+1WMQ7HzDQfm/y41yREODW9UMJwp0V0racWghpgvpCa7PnNoteY5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775370334; c=relaxed/simple;
	bh=0gJ+/0vZ0NafmmQBVvLewQwl9Eo6enJLGl6EjORFYxU=;
	h=To:Subject:From:Message-Id:Date; b=qgXka5Irr7u67N3Xwh3eRVd6CrGJ0BHdIKTiKkZJ4zlcuoCnToW0mjmhKiNARhVh7gDSJuBRexPLJgTX3j6INtUI8uUlYrXu8R5eYaDMUYxzwgvph31J1Z+qBuxQvojLcd0C+Bca4QdkqsxERRuxVMnHsRMmaKPPhD1BP4IEJuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7C26l1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7C26l1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8527C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775370333;
	bh=0gJ+/0vZ0NafmmQBVvLewQwl9Eo6enJLGl6EjORFYxU=;
	h=To:Subject:From:Date:From;
	b=q7C26l1eAvUMZKOgdsEiYU9l+fZVUfc0x/OKhnAOgCaGxfmWDcWyq6JxKMATeMD4L
	 ZB9UPI9sutqEfQGJh4UPmVgzMxuqrWDaeC7ipvXJkMNJnf2Ja81USQ9OkFGt72xytj
	 B3SB/SZ1WBDEbX0eTYbvLRjmIf+Xe4Jv6BEWOmyzCKklcK1H2Makgtuf8qQ3XvP1AS
	 GkUdMen7KvlAvuTSqjN/YvOtMnj36pXGFtJPWsM6Y4u9F4bGrF6DpyA6p/WZ6x7EaC
	 ZabfPdgYZ/ZJRwb+n7f84tgS4SehGkx4uHgikdye736l9bFw+eiJgkBEhGGkvfZTpM
	 gPcu6Ba04pIAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F48E64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537033369.14055.17601133256449565743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36dab874685d5a4ac7c3280a43797b6f093a061dc5e448bbba7f8343837ac549
Date: Sun, 05 Apr 2026 06:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775370333
