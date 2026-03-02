Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350C5319871
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772491494; cv=none; b=pPkujGALfDUqb68Z5ajkfAdTPqIZ6qIffFcADFHnh4zDSV0a/ODZkL0Rte2spTCyp6t0+nHmhG/c/xEyRI+5Qc1kAbav/x5Ara/6kFWTGitDlcNS4Kmxe2n4PLTeQiR7WED8FY7J3/+fI84A8pIuX1/h3tr+dSH3n5dxLIo3b8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772491494; c=relaxed/simple;
	bh=0mnegTsvTv/ZdIX19AL9+pMyLWPnMEnW/Hp2lHxXuzQ=;
	h=To:Subject:From:Message-Id:Date; b=ES4dy0fngEmYOwan56Ki6ANd3h9MG3BaKRk2L8RlzXM0Cc9whfxNyAJJ1FGM3/3Oe73tFpxqxdsj92Gn0j/cIwuQsIdy1OxCNvano6wPdU8DW0VILWkRS0V0AY6t67h0JQVvQa5OluN59UOuMyl4s9mJfVcNPrDwx1jhTJNNUCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6kOjT3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6kOjT3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6058C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772491493;
	bh=0mnegTsvTv/ZdIX19AL9+pMyLWPnMEnW/Hp2lHxXuzQ=;
	h=To:Subject:From:Date:From;
	b=r6kOjT3dxuqpVw1KWTFc2nyNlDI4iJ3fwtqdRh3qTHW9h9vAPGhlRYqN9xdeL1Bd1
	 cLR/8ipo7wM3TRgx5nIVC05jweDqddv65NAgcJMdrmFhQyVQZ2qtWHFih+0Z6nwarC
	 yfUIvx5B/W6Ohb/SoO95zywzUQCJd1AAx+9zAEaVr7BOv8P0wnDePXAN7fX3IiN0vL
	 ZmMndje0jEd4QqYUJpPJ7BJESDnxvnr6zvGv5HJBWIcvcj+Yiq0eOFhjteuFEgAIw4
	 2CvofvHMj//338Jq+uVCn7sjwJFwy4mjV2pQBQ/sOFlh2WHP5zSuKhgbFcuS12eiWp
	 tadZPvBJzLmpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BFBEB3640
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249149370.16594.8804424173023991489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccec6b055758847493fcc2095c68887b32d5af2c0778f0f3c93f20c6ff379d11
Date: Mon, 02 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772491493
