Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D16221F20
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786509034; cv=none; b=HK84b1XCcu51Elkzt553a90oBlZmsLoS0EoPzVvADn09RBH5n3xl7lAlAT0yMeH2RdA5CxQBd/x/C8g6balSM1MRuiMTYyd4jTcQD8hxArWMa7RcU+8CKJnk+34l9aG9Y86h7NTZfnhvSBB/GUHZZoQCtncXUhG/LdpsthBWmDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786509034; c=relaxed/simple;
	bh=WPnTiwvmB10XBSrR16BaaOtSEe+X8i/zplwDsdid9vc=;
	h=To:Subject:From:Message-Id:Date; b=TuQ2ZDW2bf3URAeogdQlkKrqfuy/v8E//lUTb8QYFOZeU18wPQ6SqB5LmgUri5QaiDHGNv+DTUcbwtP5a2LkUGuRfFX/GCIGVl9dsvcSe0S8daMCc3XUS9J58cmIN+hDeIOYMa5WeMHG0EY2S8heyz1R0S4gtQMJiqjtvvW+B/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWxVPxx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWxVPxx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1850C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786509033;
	bh=WPnTiwvmB10XBSrR16BaaOtSEe+X8i/zplwDsdid9vc=;
	h=To:Subject:From:Date:From;
	b=BWxVPxx5bHu9Euea+oomef0KuRhW5kCN3glHSEef3TIKz4MNEFsyiwifWgE+kWEHg
	 Bhk/t1UNBqvxfmoARr8tjMeod/ZeNYYnpGWPU68ZCEzbHB1qEWjEhQ2iTuTIR0f0rB
	 Gaa2CPRBocahNhwMP/dxjfE4jXaFFrYydxqR9awxaYRlavTNyhmOJHXgd//4OMqklr
	 VLcP9pqGQfqoc+CSpYfbLiXdZabBPnnh9DN1G+35286U2qN1+4Wj1RIy4tuhkfwsAv
	 sNWIXsrch5TsGXbtBhEDpu7gHNl+fVd4OqzOy7FypYlhF0/T/SUGd8sNBi9iCVM2U1
	 76+OnDClS1U9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC74C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650903368.12864.7530349293271097659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704d25dc4993c753fac14320288669e4f7130fb70781c0801dabc15658daa273
Date: Wed, 12 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786509033
