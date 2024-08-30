Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6251BCA08
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725051354; cv=none; b=Ib+QyHDrqUYjpD7YyFRxQOJj7Gk/pDOC77Ok8b5lzJsXYoK60Yp8gPTnCyDG347iEW0Iu/Oe+RSe4A+WgOdkAaAXaJm/H0cI9Sq2d15VNNOqiHh0RE36K7Zn0Bx84Vs9+xeY8XqKZV0q5fliKsAPYTibBVkWUUu0VguWZmfp4Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725051354; c=relaxed/simple;
	bh=m8UQIEdBXsZwC9QYps7LZteRlrMt63X7eJ/yvxhmWsA=;
	h=To:Subject:From:Message-Id:Date; b=Yd3xCqG4Pum0vsfqtFQbhANdOy1fG1ySUiZgF6KHFO5VKviWxyy+lSduHPLvu18Bxmr/KucxY/Kj6EMlN6EVpI0xADirTSDN3kHFcj5NSLY5pvkaDI3mOZHdls2SWFtCLdajM4eZzEr7l/cXherXqAwdB/jXdyz4xUm3+ujmNL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zopa31FD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zopa31FD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A17C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725051353;
	bh=m8UQIEdBXsZwC9QYps7LZteRlrMt63X7eJ/yvxhmWsA=;
	h=To:Subject:From:Date:From;
	b=Zopa31FDoc5RsRLk/fKriMYEYbJ/pDpZWPk8hB5/WoQ+y4takODD86oKwvvq1mJ3A
	 j8akeIZHsWsDenBkVuI4gcEN916ADKTqrdkvJsOjkK/bUMDM/CfDLVIprRFBMZpvWT
	 +aID9mJnqzii57qQf9XSqI+LC4r/wyfm8XX3aR0JlKZAKBuQmrmv2c6Y/lSaNDBcew
	 qQiTmm8YOZU7Ke/j86RtZY/6bCBadvixoS++CLA0Ycb5C/yRmgpDSAcVVqFk2NNP5R
	 a8HuOXwp0jzkwlJjduN6cMeRe51Ak0Glw+KNey2K+Yd0SG9mus22LL6bgOBLO/B5n2
	 yxXnV9KlFdHfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DECECA101A
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172505135362.18563.305185952832151747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cc1610b99e488f50b135407aae86669fa0985b14026f23ad2f93d6bacbac40
Date: Fri, 30 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725051353
