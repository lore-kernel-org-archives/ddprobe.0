Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C57D528
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758228594; cv=none; b=EdbQW2QYucRevrNi40VDCX4/eo5dnuPunhtTnVkgxoW4Pl3K9k1fuCf1BQmREF/xAniMVCGIGdUgx7DmjcZhAdaIH9HvO3JTi46rDaavybbjA1lp75Xa/isqN+qgd96pTxqOa9MUV2H1xa2h8R+8qQGWXmqDC2QCjJ5ZazJjY6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758228594; c=relaxed/simple;
	bh=JqJyiXE+NyBQLNrk9AqwZt/AY+dFgfNKe4Z+vPF5EWU=;
	h=To:Subject:From:Message-Id:Date; b=cJkrsGv2WGhFMwvPP46KeqdItlqKgigqmhr5ZwudjKX+nu1DmOWNYo0e2sgUT6J7mVn2I9NVTKRS5YSzChLSx7JvdkE/T1kDIN6b8CYiyZbLK8DCJQLwPWLHWyE3otg3Bn4ITkuZIUHgpuoG1C9lmB/C5gV+/2QBscoN90nR6II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b56+e7W+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b56+e7W+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BD2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758228593;
	bh=JqJyiXE+NyBQLNrk9AqwZt/AY+dFgfNKe4Z+vPF5EWU=;
	h=To:Subject:From:Date:From;
	b=b56+e7W+AAkXyXLsedDS9Hml5Djsvs6MvMtohE1mGZwCCZiyoWXKBlPtaSQpiyJVu
	 YHBc3mUvbRATVnchbX7ieuWNZEb1QK+cy6BvgccFhPL750MpItFt0ePfF75t03TFL2
	 9ISfM//69zafeFjeYTaQv1mUOcxgcxMPSGzpCEgTa/XteTLuf+K6BsXNZ3Dg7LZe3I
	 5/g3agbNAem6OeBAEy/YKT0HcpbwIZfD+y0z4hEk7rMTdYKk2N8zjzGl6zKKBJwI7y
	 xqcVg/fpn1zgDJUtILkacKTBIKtf1tMPgBXmJERBx0pHIaZIi5Xfvax8OCuSFqbyqG
	 Ls1HH8mseeoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906CFCA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822859358.13941.4391011859641942750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa08af5d2052d7293d5f493ce4eb0b915598a0975a38cf15ab237eb1e2b7da85
Date: Thu, 18 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758228593
