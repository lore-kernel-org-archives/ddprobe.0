Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513FD11711
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721108723; cv=none; b=X9zPqOY8IX/fXIvrYVDVa7zoqND1rJz0Qeto+9X5sBeQVzR/4DczivD2Tb0ijgZsWjp+X2jKW1s/7+pwjjdPX7n3Pzjjz3P/P5WFMi80qFezA0JYzZy9FFpT8imYsjQEfU567+8+PKdq5hVo6n0PS2/7G8h+MphXuEBVvPbZkLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721108723; c=relaxed/simple;
	bh=Zfqd16QHhUQdgzWXnSUPhmQL/ro7VD6X900p2LPpqI0=;
	h=To:Subject:From:Message-Id:Date; b=miDZlElGa7I1aI3K2WlU/aD/GEWEqppqgd+AytEwoFWFNhtfbjJjxOOsIoy3IVYrIhxfPQppWPR8wcwMV4+sIO6xLmtRZw9OTxDd1GgAHyi8FsxCY0ar71YgU+9McuNRj3ti4ruHvJtCFPkYoYOng9Du/tAOkGvGv404AUI6cfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5jGlrkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5jGlrkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E26C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721108722;
	bh=Zfqd16QHhUQdgzWXnSUPhmQL/ro7VD6X900p2LPpqI0=;
	h=To:Subject:From:Date:From;
	b=N5jGlrkpuTXM+DUmtVmb0rKVmaL//RYVzdDPT90vWvxleQ9XjKUyEAmNBje9l5IRR
	 cmRMMr+8RKyLxDW6z6gds/yA7BZI+pDomIs17tOXgKppD2R8se9XycXRwPzBMBnR5C
	 h0bfap/zyZrON988GIDLqVDI5Lk1CNq4OIt4u50l2Yhw2AXLtKCVCmiW0GPNwNXVhI
	 28o8LRlwaHa9q1N6DDa4X2Xy139EmyPEDWC5ODcvkmSQsK7AMU3ajMNy/SpqVRqZRD
	 K3IWR7PUshjncYDSRbiTm/esMC1zJpZMaIwAUNj8+x5c2uIT9QKe9d5xBlfplgUQPd
	 BeNagMDQVcuIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83C8C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110872280.23932.1373565302958222534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6214ef544c7c92988610d5ceb1005d74b2f18f8faae00e343a7dc05faaa15a0
Date: Tue, 16 Jul 2024 05:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721108722
