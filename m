Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672D715FA7A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718589503; cv=none; b=dyiRUe4ENX9HtZ9yaSbuoRdmwhHGrFW3/S97SO1cFdm1CK5UQJLUNZrKDcU8TEQpdjdTvrgdDq/SlNNaBQmEHDnWAmiTOblBkPLYX1EdSvmMuXtJa+SetZgYviA9SjGfu+i0qyOzbbizH2oXJpu8240RdRCVk1eqz1Gwrfy0T4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718589503; c=relaxed/simple;
	bh=pJK+GWIja9Iy+ZyHTscKrvVG8aVCx2IVSl9d51cTyzw=;
	h=To:Subject:From:Message-Id:Date; b=L/9m6mQZoiwK08kTxU6p1Brrpz7FiaT7Y1zGjk6rcDfHi0cdwVRcaRR0i07FQ1x7u/H/AJ307V9FGDSb2th4KTx9dnRU4WiIuZnYGx3P61of61iRwR02P54VnKDhzj+sJbZg5fOoX8wBcV4mry+wPRKdYxxOkLml31t4H86zPXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2T09sP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2T09sP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E03A5C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718589502;
	bh=pJK+GWIja9Iy+ZyHTscKrvVG8aVCx2IVSl9d51cTyzw=;
	h=To:Subject:From:Date:From;
	b=N2T09sP09wA2JcXlQP+GfIbDqhYY2U00+RloyFwLIiIvwoMZ1o57WM3mTLNh8Xcq/
	 tTrTUAgQb1qWyKc7YXla4mP3g3iVqXV8anClCZUFZhUZQ4l2nxFx+/Q3noudJuJ6md
	 FppPVzfBI1e+O+o8j5d/nRCyga+OgsvCmyuXriTv0iMSKSX7CNBB7FkGpxfvr9A1vU
	 Uet6+sNq3d8zEin4M+x7B+/3+UWCOfb3RiAIYZeMuz4Y+XhCtaFOuRJOSiqGlcJ96n
	 zPrNtEp/D/An43AHa43LNLaabcVI36beiZtQ5CC4fEBihu2w2EE141kLcWtclrz7BQ
	 RuhW2qFCEiGXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5439C27C53
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171858950279.16445.17883416108440457576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15d7cd2fc6f30a29eefb2de8b4552ced01c282a484d64e19799d083d351925f
Date: Mon, 17 Jun 2024 01:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718589502
