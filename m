Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C16435C69E
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790696434; cv=none; b=IUAd+6RhQ2bCV5ioSMZPxw5sjOYyX/QMsMlTbS9/fhvvUaKUxpS55e/LeXVxk8N7OGMKWqMOgqg/+57UfoWbBzxw7zRWPhp9OoFijVG0L21j9bc4X8jh4hdMjj9elm4RtLhfUy8UU0xLnat90OVyH6Z01yY77HipFGJ12xGodoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790696434; c=relaxed/simple;
	bh=L3D30WHC8d1D/mjfmsSZm/Zbpw7QDe8bAPbD2ICBaQQ=;
	h=To:Subject:From:Message-Id:Date; b=fRPLjNQVlSJ3MeHX3ttLelKvs6gCJyE19XW9QFelfWH9EPUi/x+HAMOPCb6pwmhE5c/Hp02zKp1VSOL9sGzX250mIshzTNDSgv4qRnFIOEfTd77zblFncPGQ8PrV8nvyZnHnq6R/bJhkECiEM/snW6z466nxlLYBSs2eNHI4TgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8lN021r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8lN021r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD075C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790696433;
	bh=L3D30WHC8d1D/mjfmsSZm/Zbpw7QDe8bAPbD2ICBaQQ=;
	h=To:Subject:From:Date:From;
	b=t8lN021ri6u2yE1KeW5xG2dNnKtjHpMI2mowgELjyBfJTq7PIXfeDg4116rs0/h4i
	 q+YlI7rROxz1jEk6EH9UqlqejB/dFurf5d8ldaeHZZnvXdiZvqj9Zb11xwhg/v8hn2
	 67RuYTgYyzwVwYiHcEy46cgwl0drA0zFigq94rGULt1jwIItviXhewectFBQyNgO1V
	 MaCFXOlOnOUR7Ko+ySV5E2ErRdN+qN1CktmANVt8p8oIKHd1+jsxN0w1LsqoO+TMVL
	 AtQvSsWFXxgEzSNKTBhr62CcFJGVFPYFycBWFkwEoi/xbyuwFyPBYPK7tboziPbOm+
	 gzeoDim71lhrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB107CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069643369.24793.12285883606886187463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bd68257b87c95ca443bc32099ba412b5a3f1a1ffa48e6a0a316af0d6414df3
Date: Tue, 29 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790696433
