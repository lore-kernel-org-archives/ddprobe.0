Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181403E7BA6
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779886954; cv=none; b=uoZxu/lVnL4qUFWYBt3TpwayyRwk8/D6iuGLqdBDrQns8jylClBHfbwlmtmD2eMCgS1X7rzFmTghvJtcq4G/p9vGCSJXw8tGQLENZCr78Pg3Di3979JO7FbfU/dqAJbIudPnfzCaa61hN5Dl9rC/3kaFnHQG37y4FB3XLpj/CLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779886954; c=relaxed/simple;
	bh=6c82b4qxtCExkw5S5oKMOL6K18l4AlgSxnsyG5WfULY=;
	h=To:Subject:From:Message-Id:Date; b=WD3quEC2up1LEHGaXHem+qwtOySwLos5C5dP/d5/o6WY6h0vY04HfU5zn6udVG8lXZjaWvDmtp4sGuC5tDiLg+UUamM1SSIYuwJQxdI9PDWOgWAG7Az8VzufdtpKBr/hXXQA0IQGMzv4KzLL7P5AAsSldtGHdjKuoflRJliXsSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIe81YNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIe81YNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC0DC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779886953;
	bh=6c82b4qxtCExkw5S5oKMOL6K18l4AlgSxnsyG5WfULY=;
	h=To:Subject:From:Date:From;
	b=XIe81YNbum1RvvzWglm1W8jxaGiPTG7yUt5WQsS57ZpefhZEFc6peOAOpmSYtLbKx
	 gqWuYbMxDMAoUW9zyvV8ATefdl+OMlVWgdXQYYC3X5FDSXK4GUsIU+1tswf5NGqA3e
	 g9FUakMkBF1Z1K4tzP5PM+TE2SmX31EAZP9GtVqsoH+CBOYR1TeoZR/lCepy2L8/zy
	 BrXxAHs9dYBjU6w0f9/+fZIFPmaNVJZYzeLJRuMeSUdA0Yf3B/3BDC3XPdb7CCU1Jw
	 hjGQzGY5PAlxGylKhyQkTYE5wKH+wOdcTbblmEQ4KEa9HUFSzbj3Cd4CjWxKoRBHNQ
	 sWjCX94c0y2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A893ECD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988695368.3768.14030911669895563430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c96cba0ae4c61ffb747a257ad31410684fd5955f62d8b099eb34b2fb6ccef2
Date: Wed, 27 May 2026 13:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779886953
