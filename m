Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA0F14012
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714574543; cv=none; b=sgRk+ttiBfhyE5NfJ5jhJLnvZ5rr6/hxuKMXjs7rvCzDo64apFW13Qvhh42lpCXrlI+wkYJuoy3992GCaWK+2p2iu9UIaHtJthPA0mrDVivKiecB16RzEFqqqcaQH8dJld+LRuNyBR+vWi+Fa7diM11hZRil4sj4bzNvzgskwkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714574543; c=relaxed/simple;
	bh=Z41uXCdKMkmHlgzKVOto3jAao+DIQ6HIwRNmPq6YLSk=;
	h=To:Subject:From:Message-Id:Date; b=Q/hadaJ2+uk/NSNMWO/z+R+WgMwyXXAO5G7gtZg4bIglhC/VNjfhJo29NJC8G0Q8OEhlBgd1OuDFhLpriWdQxwLTcDNQaEWzLCRdX45dD0xUF+aqLdFupfG7xpwBASUrPEYYuGtl2UAOUHI+KrovVL5GlicgMArs6BSWaD4shKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4HA+28+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4HA+28+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21F9C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714574542;
	bh=Z41uXCdKMkmHlgzKVOto3jAao+DIQ6HIwRNmPq6YLSk=;
	h=To:Subject:From:Date:From;
	b=b4HA+28+q+zPPfaly8vcMtIs5YEV53aRvtcSDoDR7I/VQ0Y7BevChBiwjAZ+LlHbJ
	 wS7ULBozMnwL1GcTgoxlp9Q7vCOhGekv5d76E/9H703T2uSHiQMlC4duDFOHWLAcAj
	 eC9/XaFivIh7I06+Kh2GuIEPCMcXFRhGc3EfMqT38eoPcEOMjoUwI+GSs14vH4VUpg
	 lTxzlIY+j/xCC07dd7rfPjRsJQsj1xc70NJ7Y3Gyn/h4/FkRnjimuP+ZSHw9eWnoSc
	 331BcuX8IV92CB5YxhizCVWN6L8RgWGcHMCBaAhJi9vCDMhaQRzTt/21q9tYNYAl5y
	 tOtu2r60e7gmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD743C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171457454276.19250.18299363678926088245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b40fa610e0396764f7a01ecd55ec4e2a3182349cbee627182b7573e4132d7f
Date: Wed, 01 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714574542
