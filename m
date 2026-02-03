Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEE1288A2
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770084834; cv=none; b=ohIew9nDlrUKl6kvdrHJteub3cf1AhRuLMtxZU86iH1VHc23MoJtD5G/H9HpRX8OP2+3QpvIVsVEkt5r4Adb7wEv4gcnKDK88gPBe8y3V7wc/ezZh89SEjYCok2rY786jFTCFrhZLbLR+86fefOer5gJ5kqRWwtCEOwaAylqF90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770084834; c=relaxed/simple;
	bh=zBdU8NGRvuV/b5501H+x8nUX9QpDlhX3VDWqNO7/Nxg=;
	h=To:Subject:From:Message-Id:Date; b=ex05PI5zt97EPSdID93Nm85FM4cQdaGU7Zd66P67PQI8VvC31FiOa9xd3VjLs/xeyO8hKCaNTLCuu9fIeudJcAVkeDw5lODa7QE4LsQs+zuZgf3PjfWgBko5EOH+c5Fh6kOjbMl45BP0M0dZHnLSWblm8cT4E8KQQjacxR/BtEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRfqLSps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRfqLSps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B850BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770084833;
	bh=zBdU8NGRvuV/b5501H+x8nUX9QpDlhX3VDWqNO7/Nxg=;
	h=To:Subject:From:Date:From;
	b=aRfqLSpsa9hPuzjWtdelxh21DM+pqhZq4KFk69r0cjYBHn08eF4cpS2MOx+sC8HHR
	 H3lYz4G6BXbUgUL5j1kVWb3Ki08O9wbRSmPZ7ACdhFlVrP/hM9a/CApUDSSISjLAxW
	 dg+ztampJhHx1OJf9B9dqmI1AZ6WrPi4hirtOfwwSA5Sg3wwKaW/nT1Ylyk49BzIZq
	 JRt3UDprjaw9gzarpyk9NgL0tVq4t197QqpdGX5bocNU7v2jhpBVusQ4GOyfb1tzQb
	 wW7YxgWBHQn82eYqFpDoRD6Y/YxevseFo6Q0Ho8r5WEYg3+o1Eq/aV1hXxVjiK20Ju
	 tzPvLsEhNKY7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A239DE83041
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008483359.25916.11865432175168435038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3d31009b539b413e39ec3478f643391d0ac25b7906ebf547f3080df405b36d
Date: Tue, 03 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770084833
