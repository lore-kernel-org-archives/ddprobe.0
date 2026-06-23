Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418A737B03E
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782254194; cv=none; b=E6zKPPlrYo/a9J5jF6qxn9YrZ/xu5X/xOWJGlb2r7Jlg9/9DGjfAIG07GKVAG3Z08IeoW0sB9NW8tSWZ2ylonKkXCSlEoeAIX45WJ9m1ZCRPTNSLL1wJE7+Ia/l1Elu+bWCydzx9tKLAhGv2aJewnpXfkR6rKtsuehlIuTa6QF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782254194; c=relaxed/simple;
	bh=DROT+VBgKtw5PVtawz1n2mFpKKmJA+J7ZxuFFfh+JS4=;
	h=To:Subject:From:Message-Id:Date; b=KGLaMB+y7+FgmZLGSm2zq4tF+iY+Bl8pCBh205rz+crShOIEpxkpVfI63/TGHM0vB0ZmC79cBusG5PMoWyNg3t7W4o38Ie8y7e1IRwlPnSFTfRv+D1bySk10ALj5miNV4FeU8QeLpXxS/ARXMnATAMr78ICkj/4aoQBcn0JeuMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzxJ+VuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzxJ+VuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA25C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782254193;
	bh=DROT+VBgKtw5PVtawz1n2mFpKKmJA+J7ZxuFFfh+JS4=;
	h=To:Subject:From:Date:From;
	b=nzxJ+VuArC23v9vpBPnNHETyn+KKcS+4tOWqOSAguS+wX9FSV9/mCJM442+1aqLCf
	 1ghR4lzbedNsSeGa/q07edul9ifbgAm6/AswedJaWpK0U0YlHmx4xINwrMS8/rlOST
	 NwNNTUNT0PEROk4U3x0xyAukg2ODX5UE34R2loLn/DNCseyD/d1BGGiqzVErzOmEcM
	 iVHaMfPjVltq4wqtPXuqQcbhyC9RXX6zzcGblnbdUeczEUCP0Va3ovWh+81UBjhqTZ
	 XS33fEOm5zvSQCgBjeJcYUgnTN978u946WXQD+ErxznF6JYxK9Cnc8eFwpZv75ILJG
	 Y+aPyO4yHqI+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B40CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225419371.7638.1567917175207106652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87d0f0b991fb2baa00015e3ac77df3c722cb9941cc229e6be5f5a86f40e30f3
Date: Tue, 23 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782254193
