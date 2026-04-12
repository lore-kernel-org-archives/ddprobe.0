Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1576119AD5C
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776035854; cv=none; b=DIC3Qo9/4YhYv1bbW0mSNIaZssWSCwSdFbh0++tVBLt2R5bgxdlvgTQqB7n8fAf2QWxa/3rqFnzKiS3bfbsEXY7itGSPES4cz5FI9gHzzVlPiGOZ55rURhzEYfIr5ZfdJbfmEIYANvxv5rujsgfw3lSfp+je/IxpvZ41UbDx7/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776035854; c=relaxed/simple;
	bh=QS3iIhq8Tr+XGttKhCvHflctchPuDUFxWP6G2ksYvC8=;
	h=To:Subject:From:Message-Id:Date; b=GC/at05YKxHaA9Hhr6Xgd4GPtmTOYa06QC4/OLo+2LAKi4CQMVf9EQ8xR0/ZAHpfYfR/SBwjEG+DWzQZM8bJyUmIG+XmJt76exZ2Eyqms+YE9zP4EDXLh0/8Vfy9s+ysNENSSr48uH3EaU/R1lu/zDUtcnbz3sUDGgRToZW0MQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e21JYLHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e21JYLHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D6EC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776035853;
	bh=QS3iIhq8Tr+XGttKhCvHflctchPuDUFxWP6G2ksYvC8=;
	h=To:Subject:From:Date:From;
	b=e21JYLHk/lZEha3Fo1ZEKF/XzYj2gtlbqFGEPJ3ZPYerYW58EC+YM2huanzUrzIMi
	 PO9E4i3l7fZwDvU5BHos/QTp09OplwuZJjVuC86NMysgRdm7mvijjdU+x4psR/ApfW
	 zRG0P3bB1v5CzokbTjHClNqb/UqaS0QYTi03B7ZbKEdjzuxUdtEiKaDji4XGa85RS4
	 o/CRIXxEcpq4I+Qr5ljZpYlcwqBlTaVaKGWE72L3CIOUdkxpRWEDl8JAIboXg5La33
	 xRIWLrY5jEXLkqSbehFSKmZIZ83Ssa/tKqCZgPCY2y+x5BuXG6PNQShp08zAc02V6g
	 Qp0a1YqwhCJuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D41E93804
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603585368.1880.5128538907159819708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b9d16f59f3503326fd437e7fa3d2749b65bdc230c629dcec613a44a3c879f7
Date: Sun, 12 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776035853
