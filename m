Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7FA38AC8D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777387054; cv=none; b=Nzfmb4ERUlXzjwHoaB3wAsgNF7RTWg/Qtq6cuUvFi7UmSHU8adcy0AnO0MkdnnrJLvpiDhD5G/nUz0FkgC2HPVFeqHIhKArHkOziHH/0RLFspoK0erGcdehRsv5fZinriueQ08e3XXqJ1LHQgw9FTI8lNLK5CC8wgt7Nm4+BWwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777387054; c=relaxed/simple;
	bh=oqs0MrmvJ5Xicbqt4QqfDovSVBvzvlxPrBblpyl502k=;
	h=To:Subject:From:Message-Id:Date; b=hYcLD2+UGn6BPGWEIpmTbfv6ZnsxqSsWwj2gokB/1S9ggo4BUaovkMQLe5JBzv9DlUlfX8ZJ8/DWHJK8fqSlrLcLB16yBdv9U0wDDFzR2wI6zL1PS1FPa+UMmyEwLrZ5bdaGvRM7jM1CHtHMoXEDmnlULFVblRsM9aBm5mmAuWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTBfP6U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTBfP6U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9555C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777387053;
	bh=oqs0MrmvJ5Xicbqt4QqfDovSVBvzvlxPrBblpyl502k=;
	h=To:Subject:From:Date:From;
	b=lTBfP6U0gTEl6JY8n5YUqUkurt6IjLH+BVhdGhgxNP3OpRTbhZ64g5LJSDCUT/xOg
	 1W/FL/U8uPPbriRW2E7npZ8cprJhkPhzmhH88dxNi5nkd8FR6bzBaH2p7O8jkF9esL
	 xqtg7KARgIOi1pVtPzKiKaXhDFKnS9LVCRkW3KJnWpWI1HOnmDYhQcmXxyHMkqiJuj
	 Xq1c0ofNSFgjoX5MG1j27N18JkassTYluiQE6+sfvBq6ro9Osjj5J787PWJa4Koq62
	 XeFtS7YMPJpR5DFkop9vp/2y2wsOq9YS5u8PjdZeezKB2rPIcUvR73yZWdlleQWJW2
	 Cm5JyGC/Phy4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A946BFF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738705368.882.12607062694461055260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe08820eba27234a3fa585997c414eb894684b19b7b140b3cdce5e2823aef0f
Date: Tue, 28 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777387053
