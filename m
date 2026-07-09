Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412FA305665
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783608514; cv=none; b=tYOHj+ErTJ9vyOhC7qrHvleyi3N9nKKk7JyEeJCZYvlfMzVGm27g8BE5aAQZ4lRkfXwlOMWN/jblphPptppBuEkzlLCUHtqoreLL1mTINtfwNKNXUgrbMq6QLDebJNZONmeom0Zw06I/RhboVr/mDtFaekRvc7XfUBxRIUiADwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783608514; c=relaxed/simple;
	bh=qWDLW/gJIwAhOdXehvqWke/phesIgWwPSumif9LEcD4=;
	h=To:Subject:From:Message-Id:Date; b=eA8xutp+fRwka5HJWz+WQNlXxPhkdaO5YHm9pI2++tvVJQdTj06u9VJAzCBSy2K+RPocOL7AcWg9trU4AuyB5vO9n74l5wkfZhv8TGe8roUv8oKiKEMa6oliGtIApCNcBGMNpP09V//7CllPjdUvawE5P4UonpIoMll3hwz+unk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sy/gq5U1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sy/gq5U1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88ABC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783608513;
	bh=qWDLW/gJIwAhOdXehvqWke/phesIgWwPSumif9LEcD4=;
	h=To:Subject:From:Date:From;
	b=sy/gq5U14Cy7RK+bDiOCeubiVWb1wA6pUtKtcE6ojvL0IL54ygHe0k/qEUZpkMHoh
	 dMbc+ydFek7T4u0WeGo5lvZ8fLANIKSOLawr571O1Ry3lIUp/2qHDG6ixpI2lnzi4B
	 x3ZWkYrlG8z2GdIqnPy6FCLwcT252q7M5utgvFk1zZj5LKPqVqvt7B8cZsPDxixQCs
	 GEERciS6l8AF9wIGevOUCLerjgK81uzFm/cryBFbIYAJYJBegtB/+w8TJwxCCpadUr
	 35PZKwB5ms1dhNzBOvp+bH41HtXm3qWnSMDnsKQZWxOHIy4467cVHCCNPZwURm3h2z
	 fEleFcENU1Zsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9442C44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360851368.17012.14307619293847620586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb35c0aa0fcf4fa24340e48a42c43b80a9efc527450ff3b466831f9503a0ee47
Date: Thu, 09 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783608513
