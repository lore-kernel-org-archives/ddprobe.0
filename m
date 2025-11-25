Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DFC1096F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764111774; cv=none; b=OazFyzAJiDZ509RO544s/q3vkDwAjEfQ7Tc5lv/yR/C4VnFWyoLHDFDz55/4nBMbegEDNdy6572lHYZj9+ID8GUwP+oXGMcbUaBJhKeNyuKfdj+rRb65tLldDUMDYGt9EWaw4H4ynj27/FXV2OynTK0UeX/QNViOT999RtZbsWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764111774; c=relaxed/simple;
	bh=PgqboSnwYm4Qb34FtY+JJVwQN5Hr1MNvdViublaAGAI=;
	h=To:Subject:From:Message-Id:Date; b=cMimTiAqKzKJeCLJaXBDqU8BMXtoqrqJpYcaSL02Yp/wABOXLMjszAWPXsw4RFc9ueg9sfkazuIY4mXnZgJ7QuDJx5wuzbPWDocjG9e6dow8D5HQDcrfVbD+96iYgPJ1Gow+TmVSrBPYijT1pPJp6FZJnfQzH0XyFcnMcR8Y1zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrAF5TyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrAF5TyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764111773;
	bh=PgqboSnwYm4Qb34FtY+JJVwQN5Hr1MNvdViublaAGAI=;
	h=To:Subject:From:Date:From;
	b=OrAF5TyKMOzN7TO/+bPG2Q3o+tGiwPmV1dLv796q2IYZwB8+us+KgiJ9SxY1Mkpap
	 MyFvLvg6ZS4LU4IRxbOZlhBCBvr6TyG25B114hG0KOg9DfeyGJi/f8hl7OPLetGC0z
	 DkHEILuDxd/VgNS+LsWjf6TcuNtJOe4LXQwNQ94Iz3mt2KvmYW47d+0hbLUBa6g9y3
	 6OpueqoIgetMErAMwGTJZ6N6cS/XH/6o4cZLh8k8nUYPFYAnDBb23zD5vp6jQtqRiy
	 5ua4gsVLSa2XAcYo6DzwlaCjCeIODTH4Dyyytb8c8jW5K8vAmOXhoEOqa3vGkZP9Ee
	 pKqWcXkZoy3kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9228DD10362
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411177358.14198.17035581709951469534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efab6a4f787758dd6dcfba71131b9bed06bc35da6f00afcef1ec83f86499750d
Date: Tue, 25 Nov 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764111773
