Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593FB19005D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737792954; cv=none; b=l2wBcYYlIO9yaVtkuUaKy05ikhgLJQO6vHFeF6SBfeNKDZX1Gd2v7UwrX/0QGgtolBZMst/xiZiTGqC6RzcE1hmkjhO58EivZJomsgf2yTB9up6BGO9A4rDcEtvAgmotbKVTEc2SEmat2FlEeXCXRKu27OYR8fG8T2+pzxSebCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737792954; c=relaxed/simple;
	bh=w9lNPLAXVY4dyB0hIV3kBYFP/4KrmYjSCSoPEf537nQ=;
	h=To:Subject:From:Message-Id:Date; b=jdUqkrdiFhMX6V2d9wHICukHVvlhliWhrAL0NvSmihdaQvJGpctx6jOH5BWhEB59C67WF2xk0v52Gr+lcFMmtmAMF7fDKiR/sveycNEeFZM62bQh8IfeRISQtICeva9V7j7CLpJVcpjksmp89iJDSZQEqsviFE1LrEFL7MuLH2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sj8pHrE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sj8pHrE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66E4C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737792953;
	bh=w9lNPLAXVY4dyB0hIV3kBYFP/4KrmYjSCSoPEf537nQ=;
	h=To:Subject:From:Date:From;
	b=sj8pHrE3hTtBT86We3UMJyQDCFxD7q1ycp+7SCOKDEfriLXpbscGFEUz4RUNqc8bP
	 NyoQmn5zddRKt64LMi67rKT9cF1kDjZgT8wr3YbujjXlp2xE0JNN2eKrHsBMB81sEk
	 +t9zwlRmu+OKB7ShrqDgB7Q9j8HCXBo9mXyz0iWhy2Raez96MObxH8WQ9hW3PnysxJ
	 8pA9B1Qts9WWc0xrVyJbCZOaB9qtjWj/wZA0EkAUX4aI6xEyuaE1VoRzp78MSCLdoK
	 KSG4l3tLkID4Z22V6tjHBHvnDYabobUKUdUp+NGipPesDBA65kdibucS56x0o+gGLg
	 2MhbeEfGl4VzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FF8C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779295362.2498.16567945851720506679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844c19748b3d8dd6536144bd3c60b45d66403138f5cab01ac44f399f520144af
Date: Sat, 25 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737792953
