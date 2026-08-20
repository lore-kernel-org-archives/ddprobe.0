Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A352EAD15
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787217034; cv=none; b=H/vZApnmyQJKX3/e9jXFeQ39pDIrPLUDATOJGjvxUEHxL4N8OGOvp15tmjYzCUXMoDk1ciB4e113UNr8XSOU45kzibIh3mDJ7QSsif13LPQpPBt+hJs0ySGFnctSjXl7OUbW2uoILFzkbs1Mypwa1qNN98Izsm6wjzaOsug33tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787217034; c=relaxed/simple;
	bh=ai7P9xEehJdwWDlGnzDQOxDsl69dAXh/C/JSK/SXOxA=;
	h=To:Subject:From:Message-Id:Date; b=ocG6XJB2pz/WcL+o0x/wHzsF+VFibsdGm3utvxIxmlt6dN4vJ1qpRGDuyWVDgSiRivY35apyD+ukQb4s/LVFvOZYte3LcZKXtDNL2tgovFVAfFjgGuOxDm4wm8CAWmG4PDUS3Hn01G7B5iS9wB7mF0KRMC3iy/YIAZBB3s+ZdW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAPhBOAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAPhBOAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9DFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787217033;
	bh=ai7P9xEehJdwWDlGnzDQOxDsl69dAXh/C/JSK/SXOxA=;
	h=To:Subject:From:Date:From;
	b=uAPhBOAaSBlm1OuVrqZgXon/UJiwnTDF1+diaHcPiPOmkIr6OjlnLvYj0b6ABSCt+
	 KsKsYqRcEDP21BtZ/Ydg4jT5lp92OJ/eDNYiROcOKwm+7gNZ60z8GSN+BWkT81PjR/
	 PrvpKBYKnD9eO8X0CpvA1xYqbmLoc5r8ipLtxBnru5HMIL1bIVBpU1q3VaSfdfd60Z
	 /a60ngA5tQNCLuvI1x29t7vDSD5evUm93ZM0snZ7e2UVhPhxn4WOETZJEHrVBCL5uI
	 hqYyPZQPJNpBeHOBuhsBW9whFM7fAL0YCj2Mnc9oxT2UtTX0whNY1SJzXvf1nYa41Z
	 gWKFCBNXM7dJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BB9C5DF86
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721703374.10918.11732681771528730798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf86f44dbc64d3558b199ad157696ab9182f99f885f2a7f6f7763f561f9f303
Date: Thu, 20 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787217033
