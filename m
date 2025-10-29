Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C6D31A051
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761736794; cv=none; b=Vo4h1rD6F1fErCiDFw49UA4prjJHzASvIBkSdGIaUt4ckl0BXzBHSZX/EyMWqS+b/AIWorR2VVMadvYWBnCop3j6wsnk6yW4vdxYmVBuITXB60ttERwR/y2wi6pmhZj0bii6XpXuzwSEadZyPxhO3cwniTBGsIE3tNakPArPCY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761736794; c=relaxed/simple;
	bh=ZoMbVg3AsbXAmhjfY53wo1KfH3JYQU9nL2LhptQtlRc=;
	h=To:Subject:From:Message-Id:Date; b=CFfR1G1ZXjutCR/J0A8/Pp7zXjhOeDgr9U95OKopTUaAvV3eAvrxYVT+caF2wqndNTr/X4YISMo5IDaMuWIBPpjyhPR2axHHei7Qlg7JNnmXT10J5Uyo39totGFGXr7kbvEWjU/53b6QoLmI4U9VQlmRD5gx0gX+QvQJY/w7rW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQLtqoLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQLtqoLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4EDC116B1
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761736793;
	bh=ZoMbVg3AsbXAmhjfY53wo1KfH3JYQU9nL2LhptQtlRc=;
	h=To:Subject:From:Date:From;
	b=RQLtqoLJJtckRp0Ho/NgA/koDeNifeHgvyzT9YANbduV+WoR1ph2q6AnSgiS0HU1Z
	 4MH02SVzvoqA8F9YEAUI2T4/1gHEWY2F3UKBnoVXfOGxAmd1bGoTxweUuG6ZIxh7ZL
	 KDOZpPtJQ7wJ6DInNxztC3hkOej5EOQKf8f70exdDsVF9ttpjz3oZ7CsfUX6GN9iGG
	 Pxs7fbbzArkmmdfWJ99r+g6XYnUXaexIqBuPREE3P9NDYra4du9t8Wi6C6i/Nxqo/p
	 vIRo13jjppArhMBtRm05RCvVTAEWuyNU6RkGlgstgGZxEk3VGDf3frseveHAJO/9/G
	 Z121dq7DscwTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90047CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173679358.32269.9378009208898446135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4698e7b579299cb912d9df2e6747b0965aec1b950527b8216b8130b431fcd555
Date: Wed, 29 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761736793
