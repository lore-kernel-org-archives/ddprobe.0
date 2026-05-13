Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270A0146588
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778638834; cv=none; b=e0lf5DKc1O1AU77uOzgvJKe04G9OESzM3fBMjuRmW9GwHT4aLPloU91YkcMQOn4btnRFIlYVUCv0Yh8xXNJMDRn1xd51ZWo3jjw/EK5tWiu5aMCt/twU7BPlQGLBo2dLN/ipA56IrtBEG9p9yb3NbQlJ2nGii1rHzUJ9Ocq91Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778638834; c=relaxed/simple;
	bh=qI3rIueccJr+P2Xj/waJZr1Vntlt+Ntqq8e47ALo6Nc=;
	h=To:Subject:From:Message-Id:Date; b=GOj9Dgg53FhKxZdWsV8AFrDQD8lCbE6ZNI7L9HFPI5Btuv/JasSuNJfVCwS8rvkuPXnTJzCOHE5SQxUltIBquwRxG5RIBXRHByt0xJnjNPtfkQkuefNpH2/6e+f6fIClrtRkO49Fg9kGSwQE+LG6PgrkXRUPP+fk3QhtNq30WiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNwmovqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNwmovqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2069C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778638833;
	bh=qI3rIueccJr+P2Xj/waJZr1Vntlt+Ntqq8e47ALo6Nc=;
	h=To:Subject:From:Date:From;
	b=vNwmovqyfxoUyqi4LOEpItUBBH9dcw32sQam4Y8ocaHVTApD99IIvPgRvtSCf5eFQ
	 3Rf8Ry+ZZkKzjRIyrq0zREaEBwPPcqaWaxl1N5S5jGpPdDUKr4hFb7ooVxuc07Zwyg
	 DdlauHtUMSbaBcNMP6+hlBW/RfBq0Zqu+l5CYdbLm1pko/rNzfRBpuNBmeRZU3MD7s
	 QzJRwkCH5vCu4/hXBw0+0N+dzgOLulzQTZvR89lKfW2u6sMEAWAT84KMX1NxRfMwIp
	 IEPe1ybivUGs5SkV+qh+G4Rlaz1rcUKkT+c/gW41nuckynN4UQwhvJaz3fOLsxn2/6
	 D8kkToJN0jJBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED93CD343F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863883369.16977.6743212261945406359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db28ff0b298b68db7c3791ad616f8c2a5b8088c85a14ea24dde5af55057d64f8
Date: Wed, 13 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778638833
