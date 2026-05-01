Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1449920E030
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777611454; cv=none; b=vAeY7CZelNTJrbpYBRHjmholyu9cDiQmkNtHv8qSEZ6wJJZFoodfH2uGCIz8MDJargg2S3DQld0L5zBmHMALEXfztEB1MiP9fvCLGSBhSowZ/ZBQ9AWRKE8gGbmgEBhsNzvUj3UCJRcteG8rZE3p2l8sjFUDNqgpu//bMGn9kqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777611454; c=relaxed/simple;
	bh=55ugltO+YcLLo34kBGqROhHXT11fRJ1ojZMNNmQ/Vu8=;
	h=To:Subject:From:Message-Id:Date; b=p2/Ck/aSW7bg5VxVzVDoYkhcrwY7NdK3xin8bef1xg4yF83QyBuxf3k5he9ZWFTUotedTiWMRb+Y0E132szJjOKw30D7dkV72mtTeVV1ndAj9AMQZWxhiOyyzbSpypSth6mq88eGBM0hR5x98gYRptm5SLLGXR+oP6PDP+Cf0l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5p/XAa2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5p/XAa2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C004FC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777611453;
	bh=55ugltO+YcLLo34kBGqROhHXT11fRJ1ojZMNNmQ/Vu8=;
	h=To:Subject:From:Date:From;
	b=s5p/XAa2gLV9Aph+S2cY+Rs7bEL5+AB+klYeWzGx7b2P0Ze1kaxbZqmq/9y4sfCwE
	 C1OU8Rp1QQwTsEfet+lRmY0mHfPVO6+xarm3v9ecrD9sXr8jw1oYfz+xoyU3ttXCdY
	 DVv8+0pXYQ1JLxn+XiXX1Ov8gAv6+Mie7O1skqzjulPVtP+ICCsEBQ8MIEyWfZvfQe
	 D3qOZ11Thesr0DNIJE/yksKPv6e2skenssqbs6x1eq/q3jYQoUNW0lUiB/Op+faCEN
	 TGCtkE7aJ3xxltHvd1knxTigh7WHpGzxG17EFXlG68sCpNoeC8RAUPhLOuNOqjUYtQ
	 6IoDODWue0XoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBB8FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761145368.724.5995769934420489330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a970baaeb3306cf566b04526d21813f71e717e918b1757f6f719ed6e0362692a
Date: Fri, 01 May 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777611453
