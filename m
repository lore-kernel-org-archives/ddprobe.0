Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ECE25776
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771287894; cv=none; b=Bw3f+Lsgjj8wKFDmh9iBs/WOekTwOMigVvjM59rzBH5c0PH92BXMY/5mPgjm5jraTxKUemxhEOaHYAvpR8JxVz7TaGrCSSTxo+zOaEtmXJUfIU0O6pQMSZTS885NOowLuyHEDqTcdZTTdBrC2MvLIUUnm4qIS7EJtS+XNEkESSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771287894; c=relaxed/simple;
	bh=dnfxn1r1zopbr0frBdNo5k8FvlFjota2H3NiPU5mQrM=;
	h=To:Subject:From:Message-Id:Date; b=p3o3aZr7UV5WQyF3A+5n2EgopRv4nZzYygHbus8fnKiyHetw4fpHM/+4G+HO9IcUvcY2OHMpDhIt5SybvcwB4C3OloZyDed0JaBlAsvB/zqaGC2Xjb67tRJgfXCWNdHoK8ZC4ibQ2KWfNNrrdgrLbSgCXq9/HKtA8K4ekK/ZDyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTqFlc1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTqFlc1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB93DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771287893;
	bh=dnfxn1r1zopbr0frBdNo5k8FvlFjota2H3NiPU5mQrM=;
	h=To:Subject:From:Date:From;
	b=uTqFlc1HDxwwv4wyFTG6SHjPT+gndwIsz2EassFjMuMkwxrkrwng8XkWp14xl3yq/
	 whj/IXKW6GdGGY57kGohZslr/cHTDqM0NxauAnZbtKAkwp3DXJhII1UQYVGZoqrE3d
	 jkp4/xB4cPkFPnmc2LJlxiS4kInlA8FCzsujRjJLGiJp14INHeHg9+O0gKz4QJT/Tk
	 rYsaKIjoo6lIVpkuu/NPW6uFbkZVAXphcLoRGvHHd9vAsId0++fwIfLaHoWfbk2NBI
	 XI4WEjUo7k8+XPFBib6bxrFbH5aQO4Lan9DKouE4eCgb1vkA08uVSliW611Jtc4g5h
	 ++1WrFgrCAegg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9753FE83848
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128789358.15734.864410545782324393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86a6a1a5692181c110e32acd9568c2cbf420df5a88228cacd686bc47fe1986d
Date: Tue, 17 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771287893
