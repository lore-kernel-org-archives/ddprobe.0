Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3C31DE4FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742329794; cv=none; b=ceUuDyskFul55V9hQUtYvsCdouOs/LtBOp/Bd5EX6km+ucUPns7DxOKr21YOe0wd7HRxfMek7pl21AunH2MmMVSJcsd6C/MLacJ0yXkY3wgfKC/7XJsgnUMyMR2wrBemCPhdfFY5HJ5h4VBhxkr05ImdXo7ASzlujVL3pZVf1Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742329794; c=relaxed/simple;
	bh=TfFF9yTGBpGF6uDV6x+B19bXtAGeyMOXVms/brYBTRk=;
	h=To:Subject:From:Message-Id:Date; b=t+mYsRR5NLkZWufbhLFBRkyqmHSfjDtGd15rjvFDqPnv1n/S+Y7yByOWtbK+sBvoiD9WV057eRls/oBjOPNmsWNEL5L1IJH0x/zx5w4jkBzwXHDMltaWjDWrk3oPOqdA27EJK6DTe7rnHd8Ssps9XCkmixUiyqK0Z7j9MyboDxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMBmZ4Z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMBmZ4Z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9240C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742329793;
	bh=TfFF9yTGBpGF6uDV6x+B19bXtAGeyMOXVms/brYBTRk=;
	h=To:Subject:From:Date:From;
	b=vMBmZ4Z6TnqWCKQxhuAty6oydTNOv/i0cGR/ZdjEHhn3FjZTdMyM40gatMnNIzWH2
	 XnkGOtXS79+U04GjvmnSVGO4rCVbuRCBR6CQ0LYDT7WLsAnBBloHt1t03m+zQ05Kyu
	 AV3OOViq4fJsDUrduYeV8i/XKqHSukKC6hDbyxSh3NmKxASDBDyWeIl1Cv2taxHNYe
	 CnMEaWuvlItKkq5ZPJkN1+X/kjfaT8L7isfPxQbf+Fyl+UCsXgVBWkMUlsGhVUCelM
	 lPnoEhFA5NpO0JLC+LZ3vfm7oX2LBNpuVi9iYSRGl976inWT9K1S/pchJ2cVPkWR/i
	 XUHtg7y6ZWVXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B387FC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232979370.16935.11614016902449980731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e023a3a25e2b0e71fd882316856da39b266f31caf23c1e051ed7d2dfd4a6c3cc
Date: Tue, 18 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742329793
