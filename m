Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EFB377EB2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790863234; cv=none; b=mMSxorbrn9EnwDMdXPm4cb0rk2gYRnSfUbYIuRC9jNeNrSVm7M606oXtX39XGWWWMnXHZlsdH1zdru2/b2H/5a9eyWiQv4G8YlY7oWoxhhglDBApT2DFm4fN6GLxuNC+O780G1RAJjzYLRMRQag66AmrnYAOvowA2h8uSHNcB34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790863234; c=relaxed/simple;
	bh=oizZupZc3/AgHjfFd9rZmvI8CXzlzIB0Hkpv6aMXwQk=;
	h=To:Subject:From:Message-Id:Date; b=WSIz8G8nrmQzTe5RuxrgfRPbg4SCSmBwttPoOoS3yQ990u44WYTyG0iQ7wlPsc4rmmWnY5b9n4ceNLCQbGZir6l0EP+lSYVMcsySyDLDj6BOMSzqyt1UGJAmv7pTWyoGBVkPuGSKwut11o9zKj+rANsuWkb9R7Y6VY6SpZh9yfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffddRzFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffddRzFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E185BC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790863233;
	bh=oizZupZc3/AgHjfFd9rZmvI8CXzlzIB0Hkpv6aMXwQk=;
	h=To:Subject:From:Date:From;
	b=ffddRzFH2ybBE3vG/ppUwf68HOp+wd3YaBJGC8CpFznBLVvidFCyOck0HxOX9/wjL
	 CwjkIUICgF53QqunlHsrFSx0mBxiNjVil65qG3B/DwIZTvLoydrFupWp6UU8EAVWfp
	 XIEnVqpNY2NnvNw3HwNfAZHwlu2qAaUkZ/uGBhIN+QxqBhgybVHcYuOuTcwJl2m8oW
	 4zhsmh8yjjIj8NXFRGIOa16vb1T/NyPCe0BKUI9WGvOc6W6v1PEGv5xFvBhc9+tF3r
	 mBbbaaPjILCjbeuzYtrrpKDC3UJ1YYcUsYTiTOoxmDogZiDMdSbs10MtotO5O4CCx/
	 8mFHWZVgygGfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B56CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086323374.23787.6972792296028290358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab53c65fbc2c7109afa0be70e3a5f73525a674ecdfb21bf1bd0d1c9d91f8dd0
Date: Thu, 01 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790863233
