Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299AE3D091F
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777036054; cv=none; b=dNpbOdtKxOWL9e580iA9grh9MDKzx1PwBVHj6BIj7py9N/veVAJpqhOaz06aXLui8s8Giq7/W4EVdF6IFf8P+C357Sq14Kbq+J/bNTrmbhuUhm9Q8tD+HGW53qHrBR7izlTQDGpVl2RMud6Ha4KWwTVnEN0kEP1FgzuCEtED+NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777036054; c=relaxed/simple;
	bh=xvbT/5E2HhVtWapHQay6bmdjRTiAfedbJHlDqtPjRyA=;
	h=To:Subject:From:Message-Id:Date; b=KUn3uB1+Q+B4XTzU9tSz2ggOTlpOaXuOFmLulreYaYdM1/sM9Fx+95pdTf+OTZYtkiLTILSLge4m7UqSe0zvL0leOtwKbbSghH8Y7sPBF+TTjUFbHamwFOYmf8UGXqEXwv9d5WhJ8OtAfrKkxKuLfvH/HsKofwt8/7u+A3nRnvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/jenJvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/jenJvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD79BC2BCB2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777036053;
	bh=xvbT/5E2HhVtWapHQay6bmdjRTiAfedbJHlDqtPjRyA=;
	h=To:Subject:From:Date:From;
	b=u/jenJvrZK1CXVhSuqz88TmTzdO6X/RpOYIRFWcsigbu4kz5X6ck7UNLph4f+UE9P
	 oRPwSPSP/UXrg8NtvAAtHrjm3dXJw6YbZg5UxbWPxJr7aa6b1Q8Z6CRxj9OL8P8PXX
	 IOcPSNnzDQZbeNFe+B8CeuDtBg6xmqFdziisfo42sJoAgSuC+r1i5hM9t3fb/udkxJ
	 jNG9VgtprGGfHgtunJHK5kyQqQUllI6WwcOjXU1ARzIip85cuXOLANuDs2E3FkjGS6
	 HX1nRZutEefy+tohg+j+NubBjVDRMafCESLG5uiJ+pXtXJmOuqadetXtyDPWGMoSwj
	 E29518rOE6dBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB8DFED3C0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703605369.7975.11146346551663160426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35627db01900f8069dcf6da38ef83d20db29d6f920ca0a7ec5d75e28b76ab969
Date: Fri, 24 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777036053
