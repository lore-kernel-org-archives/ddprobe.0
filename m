Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06627144B
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757861994; cv=none; b=DQHEQbhctLb9cAHm5TMrAD4ucHXgTxiYFZoYGuCDwV9bl5PlJWG2IAJkzrEgCZbFO8GqH5PqVP2zQLYOTsNmoWhdhVjmolT7VA3NmxiHEzXTHfteKaNhP5jU8QTts+I749ypZI1OIiCAfjMvxCuIXca7F1+cNsRM8+mN5sFrycA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757861994; c=relaxed/simple;
	bh=pfEMglsw+SjjBsuulzbMRf3alZhkmO9B3IwWC+yCFG8=;
	h=To:Subject:From:Message-Id:Date; b=QLd5nMa6i0QjEm2/fR9h4OL9JQl8buXfR7Oen/v3r79E8VfUFnv8MQ9glr04ZviYfVhMPCNd4QdSypiebnM9d7JnBiWEFeuCq//hHtUGEHJy6PJsHB2/XHyt66W0fgQUsWOGcukXxKxWCi53wjK1zZiQ/Kwy2eApBiVA7gbNp4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuHDrxhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuHDrxhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B50C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757861993;
	bh=pfEMglsw+SjjBsuulzbMRf3alZhkmO9B3IwWC+yCFG8=;
	h=To:Subject:From:Date:From;
	b=DuHDrxhIvBF8ITQY00cIkOQlMvxEyouHgQSflsSt9kJErrX9Tu64mDLk2vyXsAhpC
	 W7ohTNt+Is3R5pmqQi77lNEzQ99GjRKvQtiv8DWxy6BcTHOXSKT//sgs48dJRJiuRb
	 2fX/n2XJq4678dEGPVSRngT236ga3j4j0WdxDJzJ9B9PThtQWtqEUrPjx+TT+tza2h
	 Y08a13yFYEySsV4HnvpDlvwE4zkztxKPfud6lbLGQqhODC8GY+NzR+0YlHzankcU+X
	 Srsg/SWoZwWgpZA1AjdkUU9IfBnCiS+wTaDyoQ5tyecZ4TIsQMwRVAUxuvZ+BL5Z8K
	 L07T7kDrcZSpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91250CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786199357.22641.16394366677644580560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174bda687db3547a525f0ca9a0b41afcf2f70d84b9f9d7186dc42cd135a16d33
Date: Sun, 14 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757861993
