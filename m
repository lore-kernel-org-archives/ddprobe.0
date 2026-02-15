Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1626829E11B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771140894; cv=none; b=YNZ1te7yN5MqIqha27B+7ch52QHHx7IjYH8SR181nsZcMKysq9kCxcMVhmAeYa148CEEHgyOnBLQddmkTMfhj8dTSh7oPT4ZseKsprGuTDKCI21YIRPYa8yQpufRu6gPO6F9RQmdUR5yzzajhyIIljI05BftWm9GUZsXOSnY+Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771140894; c=relaxed/simple;
	bh=U55rOkKCA9jE4jlrOEwjdT4TEZcpwcHBWivhNs+b9xo=;
	h=To:Subject:From:Message-Id:Date; b=mwNN8nkXXGbbIO/ER43GbNx0hLdjct1zU0wCH32vLSNUUlGQr+u8LQOqQ/X1Q8wZMTWXWrcnZGFw3uq8Xc0w4tIF9ehwJ9z8XjZkawJjGwB0BkDgNceypwoDeW/tq/BtbWMlTkkWlEjR6SB9SpBlQ35eAbIpgR/1Sv4kJs5RhOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UShhQzpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UShhQzpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC23CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771140893;
	bh=U55rOkKCA9jE4jlrOEwjdT4TEZcpwcHBWivhNs+b9xo=;
	h=To:Subject:From:Date:From;
	b=UShhQzpw9RuKFP3KPwWW1eO1DonEofFt1/f5af+wiKgJIMe4DotBSaGgJ8nnsfMHj
	 rBl7KcblfGRAJBOotOpJU3VFlgSvTVoikEC1oTT3dR1WkcKHfbohzqym6gq87ufTrr
	 PzQadHC6XfxjE0cn+uoTPRzvuoPr75schy48GJVkSiTRQj/gQjBQLEMEugjQFblTgm
	 Lu5pznMqhVHagr2metFocBY4GiucUapD1W7hieOwDifet8qDrlVsFhF8NcgV3+5Q9B
	 Rm/JjZHqcFl9v6u4tL8Bsu6HRmqa8jBvigPVW2y08FK4PMN2dHCCgvB3p4hzxj506M
	 tc5z4bR/W4BHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D5DEF585E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114089360.15815.9767137192214543311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418ec236f60c99bcb8e57db1267ddf8d234a1f4fbbc8166155a63eef40d4cbc6
Date: Sun, 15 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771140893
