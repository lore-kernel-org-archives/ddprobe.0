Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F491448E0
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786935634; cv=none; b=LgKGQG0bD/XopxZI+jzfEIGG1drvY8WOMehZsglUrXleFilSuJ5s+WHjSo5+kYE6u8gjp88YgNJrk2hw3ONQYf52pTss+RHulfH/eZlSdmiAFBYYPbOnRsnEvBCKEznVKcaCDo5UnfiD21t7e1PwXszdQH0gXPEYAsuT7dSIz30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786935634; c=relaxed/simple;
	bh=vmAgSKsntceOjtOB+kP/e785HirPw0cSoLxTXUYXHVQ=;
	h=To:Subject:From:Message-Id:Date; b=FVzamtHXat6Slg11tagVIeQgXbhMNElTi/0532ENmEXB790kVcUIf2cq1v7rDtwDQ2TbacGz124bOXxHM+ninCLv/6w6exMU8B7y3OCgIoHyEg1CmpLn/Dr3tP9WolyUwMCuJAzIH6OO0kipy48UO1zA9zE3cKmWK3GMCIu1pQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NM4AmNia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NM4AmNia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB09C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786935633;
	bh=vmAgSKsntceOjtOB+kP/e785HirPw0cSoLxTXUYXHVQ=;
	h=To:Subject:From:Date:From;
	b=NM4AmNiashqo2GNRGP742OjYOdUh5ksdLA+E5bHZyE6XJsVhrgtXAPoGLXML6snOJ
	 XU1fVDxwkkw+AijZQu6dLUJ25rFcRRp/8+xTt0OvbtDFjVTdP9NSKJ3w8Eeu3x6Sz5
	 SQ6XPdV6HMg4BuNuvIcQWRmBMw8ChFTXcL62jVhju7tQrt5yIge21j6ksU3hJ/oy+j
	 i/8Xnxq0t89XvxCQvMoo7wEP1rnhxmVjWw5mTjkTGnWPPbas2hT0dA9IsX5VmvxNoY
	 EM2eg+dPtFLN+3ZtDibs+D/byd188/w4yWtj+55xXKcpO/sriIj7rZY6lg4xoPpJIi
	 +KCtOaovHYi1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB08CC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693563369.4276.11108157506063728009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13492877ac53b7df44c45863d68175465c8f71d2a5169cb574645276132523fe
Date: Mon, 17 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786935633
