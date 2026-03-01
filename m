Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7F1303A18
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772332494; cv=none; b=PdI4baMNH5f6Ztwwb6wrCGJjESsygzrv8ocFa1R8ZpPD7rwlaM+jt7vtht4NjYaW6+G8P2JA6eEnnrfp0PKxs+XKdOIEulkVIiGD1jRMuBYcGcQCxru4wukyJY+mkpd3YCXsv9gtaOJYC6Pm/2KGtVCpk7ydnkRp7AXUSu+E83U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772332494; c=relaxed/simple;
	bh=zmv8ls2bIztJ4kZfQaCzl+/86A8Fnjee9rrl5NPgFoY=;
	h=To:Subject:From:Message-Id:Date; b=jcLoyY70p3kIGOoR70HeHshPn4XQPdlFv7mKO69oMfKh7JwAkPUA3ZGUfRJEd2kwnbrobg5668RQvZnJWEDMNZj2jlIRINvTEy9GcOyRUwVwC/X6CMxCiBwSSy2WhB0kcHA1NLHXTTlgJH/KgJ9+ydMwJOztIcXckOZl0Sc0SSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gaynezao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gaynezao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF1BC19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772332493;
	bh=zmv8ls2bIztJ4kZfQaCzl+/86A8Fnjee9rrl5NPgFoY=;
	h=To:Subject:From:Date:From;
	b=GaynezaokdWdFH0QEdu0qNjbznKDKhFuOrywztyARKErl4J5RqU1rhIkPBQtb/3Bm
	 8LCBhMikDim2nVAFMBqfGeLhZnDVknJE05oxe1ab9cxGh6mv4n0BdQq8As0m4Y3a6o
	 rQ6uzY/Dr3qqcbWMgOJPzs4KM0D6AfySOqj9xOvLlzcPadatYgLGE3Hguh2Kq29JMc
	 +p11SiAurvhXOgoojdf83rszlKvJgBHOsRlouG7bYOxgTv1teaUSril3ryEK9sdoMH
	 C1TmSHOIDiQT/vncLstLquoGeF2b1/sAqvquOxjqojOLeRwPo6Xp1A+OaqMXeWaB7L
	 n5EN/tyOuXaIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FF8FD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233249364.17826.11984063159553918742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36ba943f6b814793660d47cfdd7e39b597aa879fb9e59dda10f382e6e0e1c94
Date: Sun, 01 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772332493
