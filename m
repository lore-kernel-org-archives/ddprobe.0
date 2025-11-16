Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C3C156661
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763290254; cv=none; b=ALnzh3hFbTdYZmypNjJI9N1Yi7MtLrk4/kl1nSUMPznoDo6n/1wfn+JzAQLmfB6ADNtWpU00rNuol4Qg/yqJFQJmMPCFoqAjvd2b2jUI/w3Ut09rdElfnjMNr9s/FJaGcOIb5ilXtQnv25P+rmjMfokB6ldw/GmToCj93kaO6PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763290254; c=relaxed/simple;
	bh=wcCUjddmAM+UL560Ln5OjHQfgi9VllnFxh+Eqs2HKF8=;
	h=To:Subject:From:Message-Id:Date; b=EWG3LIbsIj2Fzp+2Tv+V5fYkqryM7mvgTV56hKy7MQwVFCWvFh8sB5FUk86oM0VVdgLJsxqT3bx3YnK6N36Cwhy0tzI4BdkuDuAtjEj+dsNiW5SCptyya5Od6Uta+Yf5Md5VnrvbfDr+LXQH/+/bTtwva9Zk9NyPAnJNv0vWlVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdiYUn+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdiYUn+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A484DC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763290253;
	bh=wcCUjddmAM+UL560Ln5OjHQfgi9VllnFxh+Eqs2HKF8=;
	h=To:Subject:From:Date:From;
	b=gdiYUn+WxXHVVUfhE89F5k7oObGmIxS7G2x5dnaCgDU+CBJsnFyGyF8kMDNCLvhK9
	 yfJIF11Stp/ge/aewjlVECm448xiVq2x8oHTUV9QNga4YRil+fjfZaZPOakHO4VKNv
	 J/AZEdjOvn+CBNHUphjdNr7yhNRWBN9iBYPVsZz24IMflSgQb53VodNPBYn4h6l6By
	 TfJ+GLP1amwtHfTvZV1NDAB6s6bjAwNajwux5oJjd3V08gRTpuyxqBaK+LLVCJgoLY
	 A53YPqKfaAyxVykViasG8g2WFZXQn/9iA1+dfPi6EB50Jlg4NQ/QZQl4Xs9bBCWwWr
	 T0+P/nDd0VQYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B82CEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329025358.25095.14647523527328864190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fbe250023a3108de6aa861d196013760404a5b6aa66e608468bc495168ba19
Date: Sun, 16 Nov 2025 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763290253
