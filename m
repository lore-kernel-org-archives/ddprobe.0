Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B5922FDFF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752085194; cv=none; b=cl58vk2+iOLx1UYmzjs9c43HOklaPVfAc5lBRja86aQT5k+wiqFm981qmpbbRsoxMxwzDzryhiNpedUr9tJFplzrar1zSP0zBrhBhBK7gf5gDVI4sLDdqIcZ9b1KI99picoNF7lmvBYQ9eJC2Nqc2ffV0DQHuNata8Ye/ixZR58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752085194; c=relaxed/simple;
	bh=ybArCXMM/c5tfiRCdYPJuw0FE4v4/Y9cLuq3P0vmKhY=;
	h=To:Subject:From:Message-Id:Date; b=In2/R1vzbeSee9q6bkgsKiVYap9LG6k09pJHnY94MFnui67ePjFs72wUyQuT2HWvvX0IDRwhsZIgj+Ebt9sOK9KkTnNV18c4qo+Pz20Krwl/VSf+0+hFLN4FfVgtntBX+V7rE3Bc3E3ZSlM5Suotj9WJGoMzo8JDJjbV2cjNN88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdhA7aEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdhA7aEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A064EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752085193;
	bh=ybArCXMM/c5tfiRCdYPJuw0FE4v4/Y9cLuq3P0vmKhY=;
	h=To:Subject:From:Date:From;
	b=cdhA7aEQoniDDhWu3DOg+83F27czlrZAEts8KBOhVx8Bjd8zW3eIRQQ0DRw/H7otj
	 koTFaWZEY2FnZjXaVkgC6JkqLs3uxUR8fqM5eu6thrLhXCLtL+u4xVtJozb9umnQBF
	 HvUbKeg1QWtanPLsXmkNYToS6wpyiv3N86CP0qXQnsj8xix24nORJ4ZFTX6K4kHPEs
	 j2eMYOals+S5rWSsVKKjQN6e4LkviPYQYZYtKgL/mzvMc7wB7bn/A7yzWDn43yxhV/
	 50GCtvZTzYFbJWQcnempezYaxduT1bXSdABFvk6bNAr3GjpCmFn6/3PlbmVJWQPpbp
	 kzb28urQq1wVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA3CC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208519357.13591.92195420140217104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff62b862323fd6bb7848203e2cb9a28bd0bc8e6f3f3fff1bfeb7fa4c83bb116
Date: Wed, 09 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752085193
