Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB9A34BA4C
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758259194; cv=none; b=XQcaB/GpzrpowPlxG/+H4O/wb+FgNmyh+Mt3Rg3dw2MByzzm25RUaCk9+y4uAMTBzbkU5HYYkd5lDkcMCBis7meSzHcRxhGLHbV43G6dE70k0kZaGkStXXOr9YxY7eoirHK2j26pjpG/HzYKqs9Me5q0M336W15ZMy8eC/G1cr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758259194; c=relaxed/simple;
	bh=ekPV1ZmGzK4EmfOFg7rTF69Wg9n5eFleUckN7Xzi7p4=;
	h=To:Subject:From:Message-Id:Date; b=s8lesKVCQY1vjbjjLwDe8t3o9kh6H838KvnSVVWLwxQ0y8CNePp4b42buNgbnCDSnZHqOzeNNqE8b+NBxblUM9rqzH/pSkWLYmj8CqhTlx1fakOF3caF+v0Nkt4J+hegvCl3utx+AB13RmKhlMsyFaH0lUKuLIhdnBWtJcvRWzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOXlb+aP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOXlb+aP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE86C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758259193;
	bh=ekPV1ZmGzK4EmfOFg7rTF69Wg9n5eFleUckN7Xzi7p4=;
	h=To:Subject:From:Date:From;
	b=jOXlb+aPrHZ3cybu1Uw86aVgbQpNsYOEfcqBu/IF7iSGqeIldyWErQxmBeWFGnvQy
	 tzrbWcODX9tjJUwOxFL7GxRocCkei/WuYL6ma9HE9neuDL5NIbtvqRMsMic2X2mRyw
	 //Yy06bQYWdW/ZsJBKDRKID+k7mTXqN9jlnw0T556v4K6whxXc949TnfbgUAStLkmk
	 oJaG7ScIxelwXIlsG1lN6ne0sIAccw5My1ZeAUVqElxMbI+26mj5sI9gvT5CA24Vx8
	 iiQBYLoryOx85ARfE66eUbGLEsfCwqAeLuZTz3jnbHHPjEDsvjreTX2M26c6Z5Fjs4
	 xzdAygAqTj9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96314CAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825919360.15353.9002150806553072508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c927acd6095e344874dd2337a0551df81c9435efa3a5c03cf592ca99ff48f76d
Date: Fri, 19 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758259193
