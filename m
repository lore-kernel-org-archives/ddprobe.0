Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E7E1FDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742897994; cv=none; b=IFGXO/YzMsyfIjC7ZXSawWJXwRPdi73K3MhqZdxiubLre/Zwu0luxv9j174H36/ob4cR67IVWnmMtkRaMjOWKQe0t7JRs3UzJTwuaLIovwl078kyTUAMLd+6YLSLOGWkwzEUkX12qxtZwWIl5hsbe0yj48C63Vc942qvwHcnRxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742897994; c=relaxed/simple;
	bh=tMKJ1DMe5qVjpOc/PCYiDoYn1JhWilmn/0oFEBqAYi8=;
	h=To:Subject:From:Message-Id:Date; b=gdtQYPgnpf2DujkhgbsRkPg/zpRaCKl0lsKTX9S50d67g+lLyXxrE+b2xA0lmiB0DA11QR0wqv1X+bWR30y54LEdOCYjDIZd8W6syClz72vRE6BXrPwDf8jret+is9AskpOmwjYMNEQanHzqSa6QaSIxk5kDnZAHphUeAh/ba/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrPaCZwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrPaCZwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3DBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742897993;
	bh=tMKJ1DMe5qVjpOc/PCYiDoYn1JhWilmn/0oFEBqAYi8=;
	h=To:Subject:From:Date:From;
	b=GrPaCZwhQKmT2NPkZ1Vzg6B3reeijyPTmYqjclvVhmLf2JOUPU/dg/S6N8N3k2YK0
	 sZUsIFUNG2diwVtkqVvPeWX2JIC4rJSyof9mddZSIr0ikw77WT2k/ZXyfjpzZXvjVD
	 r9lKD5Sb/fM6gL0m8KIECadPLIix5r0UXmYSiZMbZ4Wh1Xmu37/UWe1t9P0IZllQ5W
	 F0H5U3qqyJo9+8TGJJnfmuaK2Hr/ZGBPlRnEWpHJKwRb5VWIDgMhMInhLTpUcjzPQA
	 AUQWPL9G+KjSaFt/Yv62uFDx1qYqqb1ybSCfK7grGSxKb7LqB/M7ZceSBIv8BvKFfj
	 /zAyCrhlaPMOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D107C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289799363.7412.3988331797490459800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0705f489bdd55b90bdf5752c77cd8456f1027bea367b8a59830e9f2bd9dc74cc
Date: Tue, 25 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742897993
