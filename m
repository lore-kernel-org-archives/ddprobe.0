Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141491EF09B
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761878994; cv=none; b=pbjHVjPfY2S1hKNHVH7lUxjNF8Yszs2qGx/I85LKrDcj33jdKRMSi6qLns5WHTP/Bfs4EzEyFWal0YgYy0+1YloZXB9By/hMzjsoV2CsPdKdot4hMTMAJjH/gYlRZ1aV2N6cvZCivSFBeZOqkPNrpH7OQ1OLSKFQDGxYrf8AZGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761878994; c=relaxed/simple;
	bh=eE98pq54fk2h+kP9DRImk8TwjeG5IHGyJ/fWPmLuaUg=;
	h=To:Subject:From:Message-Id:Date; b=pfQJ+s32AOiJ9hcFJPnQAxehy084d5YIXIlVETqeviadJ+NKH8prMgXcppHYTnLxyHPu1YchVx2qYfj92ypzn3v0SyS7ltdXscssfr+AYc2r5z+72Mqv7rdSp5cVNEi2B5bCuf6Zrnn//hrqdHYvfcs7DPjPFHGxrkrjI0IEEPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCYKSKgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCYKSKgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7918C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761878993;
	bh=eE98pq54fk2h+kP9DRImk8TwjeG5IHGyJ/fWPmLuaUg=;
	h=To:Subject:From:Date:From;
	b=LCYKSKgftuq0KDWaMlY8aU5+I39MDSIU0gpTj7CBTGvIq+sl9sX69+MzevKMGEIrj
	 hL1ZnIwJXD1C0qKTgryAyEHnEMVjIFKPii1Nc/LXfyxIIq2vwkn7eYW7DtIY3pxhNj
	 CCSLU7V5cIjfaWjg0FgJ2RuT7nBVWd7JJ349B4vqmvEyBJFwepsD7S8P9NL1KHVI1I
	 neiHpKKg+wE56tZMlVNUNf8OcQ/G9FUshZeeXu1xV0vCqtFv6zRO6oDs19Iy5Fr/lv
	 trc9VBEnLB55GYt9Lzvc5NIapgx6NbDn+pxUVgw4KFbP8wSYZjVsreMFp4qBDkvcPM
	 d5QqEoFERUoIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B1BCCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187899361.22006.9995406554338557234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5521fe69ac0b6aef6dbbf26855cfd9df87e474a1391c8a5aa0d80ef38a4ee543
Date: Fri, 31 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761878993
