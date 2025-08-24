Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2723424DCE3
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756027194; cv=none; b=ZP+Zjie2b2NHr8+Xq+AD2wMjyPF7pJBNmaIcP90lwIBBOj44svb8MKq5IRiYiQz1nkSrawF6a5F2lwEin5ljcfbvua2ID9XlSpx9F6Q5hyLt5vaTXfIIw2mZu4lU8yU4y4qN4J6kwxmmwBt8DJECvbnL04uWWoMdH1HUj+LgG8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756027194; c=relaxed/simple;
	bh=EW65KR/Zpy6yddQPkHgJm+JJl3dZso3H/OyHCNdECM0=;
	h=To:Subject:From:Message-Id:Date; b=ra9/2otvpqIolTu4yvX7dLsar1b+Y+Nz4AnapWNdiwPl+Qld6YLbCOAv023Xo6IxzW/X9sX7iEK1PbPlmMlDPeUt9DrcjCzhqwOlJKRq+sla7kzwNixGv41kM4wMfT2vRKYHS/iqO6xz6jWmWnmbk8pIP12XnGN50qTxzvmhBqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thoAK2jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thoAK2jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34FDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756027193;
	bh=EW65KR/Zpy6yddQPkHgJm+JJl3dZso3H/OyHCNdECM0=;
	h=To:Subject:From:Date:From;
	b=thoAK2jcP7Vu+AFG6u8e5SiRq0I/s9xiSs1UENx/7RJpQjl5i+1PkWpE2FA88WtOC
	 A73rptnUrF8v/Er3MgP8xqPQr8k9ny+qz6y+VpEiqPsm9l+w+p5ht6yVND3/sy2fdv
	 E7DJb6GVi8mWrj2w7YoeV/4d87y2vz5dR2Eim+NfcjRULSb+uK8B4uuAjdPsng3Km2
	 qq65z4wHE5kAUsKA7DN3Vb0mikTCHHrNV308xxYLHWISL0WhWkMpzHJfwCzrYK1lDG
	 lV11KV1prEg87r0ZKrpRvH+uJcSKlJ3/GvbI7+XdXt8xvm1RXCe8ryc+kIpcKZarlg
	 O8u02yOTRu2Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922EBCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602719357.23724.7666534592283046996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765e91521137bd09041c8d1e0a4fab1208091c92aaf95c4d9a89b3a6aa6a0522
Date: Sun, 24 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756027193
