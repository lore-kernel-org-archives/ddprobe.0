Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBF212C499
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735925154; cv=none; b=bZYMp6cuLWYo6BVzMnspJmGXmGIOsbHl8XT7PfmcXa99As/tVxVBIH0V41hGw0t9A0TMtxolprJ+URrPqe2GqJ8rZFr+y3tYOO4laTJBTNBDu7ZueDiJFz+CSmLZfm6dGYvVfyoc6kUIgdtswxh5Lp1W77n1+4mFClf/dpIcsag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735925154; c=relaxed/simple;
	bh=h6BBxXJv24LN+EqbzGOHqKi0TZctqmBfUawOvCMR/9E=;
	h=To:Subject:From:Message-Id:Date; b=hqz9sZPS/xRF56AMcLyH/WKANfcwnRryX1knPbPMunpaiglN4oZkYnHbTdFSw3gyZx4l+VSPlsMmFuEMucgMl7t3Lz6F7TktEO6I279Rr5larNeyKGS7ir0qPH6o1NhYZw4UtyMZI+g9I1JkW8/fjxl1Xyah+SkAA8InmCPbQto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6UBp0xK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6UBp0xK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7E1C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735925153;
	bh=h6BBxXJv24LN+EqbzGOHqKi0TZctqmBfUawOvCMR/9E=;
	h=To:Subject:From:Date:From;
	b=U6UBp0xK13K/9zRJTONlKkXOSJVANZatrFXLRtzaZMgd6mDeocIq8EriChvhVxn8K
	 HAtTAqqVCu8jSaGtTs1VBdmV3Kq4k+KPG6pQ1pBnCZxkJIQ3uI59vbtqtxpOQWd285
	 d3ORLYhACo7NzKqQgdSVMPHBhg/9NwZNIi0gfE7lxJ2JgzOkJDna1yH8ylOZyvjLPu
	 /c/1Xak/pOROqMfjDO4rt8E2vdTRNB0TAwaeeNpGhBgDtEXIiY3T23AJaPm1hJkLT0
	 6ldIf9JPAp7fK0q063l7WIcLEQN6abQtNZ/l3imVVaX9gfmn2Li8ozFvN3GHvYfvLR
	 rrXrXiSAPCyEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C25DE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592515362.22257.11360851168917322937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277d148dd06718ddf3576232746e420a1a11447a23a64ed76ddc2976cec89f82
Date: Fri, 03 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735925153
