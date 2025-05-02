Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E6018CC13
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746172193; cv=none; b=AuCHzO3VWxKbExOw6G/IL+vGw+VkSIcGZ0tBeWQdyMDJLKexP5ymBoRUP5thguR0F2/DRO05dZtTfRF3FVe+1242aawc7ajmg/xbSXbeYEdl+s084uMEhn0LJ2pillfltPNoJxmCs46e8OKhbWTWO1SOz2fNBXwUs+wiXz1rxOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746172193; c=relaxed/simple;
	bh=ZGTLMr5HSYvrxHzSDqQBDYz35ruhg0Zn5i6N1evKYNA=;
	h=To:Subject:From:Message-Id:Date; b=DEMYb3WYiED7VsHu5tavAjVEDE3Lab73hLurY1rnQ+u50zPP47FSW2vVlxxKmr2t6mthAuokcwGYm9dUF4bH3DjniWEs4vMT46U0UWlQ9bvbsjOlJ8TnW9Hd2Ax6vfyXdlmYOs5ACL928nKZ3mHcJNbTtHq++d42KJ/uPgR5G+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6lTMYcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6lTMYcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF6BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746172193;
	bh=ZGTLMr5HSYvrxHzSDqQBDYz35ruhg0Zn5i6N1evKYNA=;
	h=To:Subject:From:Date:From;
	b=I6lTMYcS0fOhUlQpUWZglVaZXV6syZZx2PoUOF2HjnWG2soORtzMD13DL2JTbA60k
	 gDn4P7dgdcM0pogGbbAl8po0vHK5Ca3Wf1YbkN+kS4oULGWgT5Q2eKIjB++AkvpUSt
	 9bK2b6C0tppKGbyPKpT9/7b0yTEmk3R6zYAatDq5OqowfP4N1+8ZJd/VZHVKdIm6s1
	 SKx5RksHuYnx89Lci4XPbUlR9/oWGDxtNuekmDNPXPwgbWWFPhHn0ziaSe4ixTVJtc
	 JgvPP0ebjUl1qK3oIrybbmip4VsxA9YoYxPbU4jmPg3dySda/14OBedQ2RwLpQjm2W
	 qVH3MODJrQo+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D972C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617219357.2593.7866106405326615146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7852a1d1ca6d7823e40e5b627e915467dd82422c28fd70dbbd09d0c6c7a38cc
Date: Fri, 02 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746172193
