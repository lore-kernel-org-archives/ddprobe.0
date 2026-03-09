Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24803A9014
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773074094; cv=none; b=mQi5ojNoCiwGUN7IhdjU/TgwdSTOhstnczpI22H/ow7r8OWlMu/2LE4uU96dsyn/34MIBjEfQE88hcphJ2m9Oil5CinHNspttHvRbAGUkiNilJuVOtLzgEsgJjilRZ30jKW//7zY//FM+ersfg4H98a6dWJTcZDiNVmVvZPa/88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773074094; c=relaxed/simple;
	bh=sfDoMisSOESb4jr2Guq0lKNGD+lDS28Xd6xDCWR5aLA=;
	h=To:Subject:From:Message-Id:Date; b=j6Q4/3F2PwpaweKToesB/XCIYcF47R0emVUUD44Gg+aHOIQzMAjaV1t+Sfbh5Rmxt0L0+xkE+vs9Fc6OV/xo8caage1sKU3WmTiBRBiPwEvD2nW5m4g7lhiP9InvvKjndmPAospslbyfxkqCq+8loO4JkGtgXZpIx4bqeOM+KTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx3JBWxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx3JBWxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A282FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773074093;
	bh=sfDoMisSOESb4jr2Guq0lKNGD+lDS28Xd6xDCWR5aLA=;
	h=To:Subject:From:Date:From;
	b=dx3JBWxGwuyRC9Lh9x/0Q3FBfQOzmCcFJJZPFjFi4MRSf3D12tGSANGCVWtIdQ8KB
	 TUxTI/9GHVDhzl+wPTiI5iY7vyAyGm/m0aHgyoeEcqvh/uVlqwBr0SUGaIwGDkcHGk
	 Y6Yn6iJcilfuS7ncfV47qWf0qDy8Xpi3AMfrZq9ZQVQK3ginJm1EPQrBNA0kYcCzo4
	 cmlQl0X0AFIc77q2HXdXL1+6UClMOo9pCojItE4M8Nay6i78KPI+TNzJzVDknQthmU
	 ZB2XPXFtRkp2XhZu8E+EhrU8NMa8djhuHkoOUtaA72Kb4Qbsq+SIFYQ61awwpoXvdn
	 VV+xtYvWmuwQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92864F41810
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307409358.13684.12908309936194357361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef482e0d54c0032cef89714483453a81f4f8622d09ce3037dc3f1f4ca1a01f9
Date: Mon, 09 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773074093
