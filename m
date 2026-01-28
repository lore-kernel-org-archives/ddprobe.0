Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C17A265CC2
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769600034; cv=none; b=QtUK1hNMPD6Uu+VHr8GSSyVCikOaP/Y4gUICSl20g/RkIUzXR5evASAEzI2A6Wl24Et6eCWyukEebNg26F2Q7VNtcaPYkWUtwgOVie+I1z+e+XYLVbKbvL8vFhQY4/kpksZCi++ZxNwYb/oEwtfX7IQhQtqzgxC6TNwYZiO33zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769600034; c=relaxed/simple;
	bh=AVYzGFa2pW+qvTd6GgtLSiRQuwHCZmIbwJbgTUjF9fU=;
	h=To:Subject:From:Message-Id:Date; b=MjzbPI8m12933Wo+dkgW71loyw2CXAVXe3+Ebwb+gEK48XJs7o1DzPxQH9H4agm0i90av60LZe97an/L3hLu9pyavDblKqG+bl6GTnjKT/95DhEyxBlc6PpIMVZLiz4QL8/oZYVXEwjWsh/xHJ4ylBXfX3G3zhhChJGKv9ZyfmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdYh8yRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdYh8yRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAF2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769600033;
	bh=AVYzGFa2pW+qvTd6GgtLSiRQuwHCZmIbwJbgTUjF9fU=;
	h=To:Subject:From:Date:From;
	b=tdYh8yRsr4opr+Ybp+N4IpQyXOKtJhK7oX225gFACmkVjcwi5MA7TCKZ3fASBH+4b
	 EH2vInvKHgTBmde8FHk29DqB6ep4vGQlVnnnWstTFvFCyRiSy9qCmFYLituL3tbC+0
	 oM38co+W4dfD7f3bl+lNhWET7BuOYavLZJhgayvWozfGRnTSbStYnv9rw/Gc2rKdPq
	 UYXrZovvvROa/rmjASRtod/Cg7ho0EL1HQvAUvnxxorrandYEgTYag8yj5TZ71hV+Y
	 wiYv6lBXuJ+WWJdlQO7w112GVjIkQ4Fbx5Xjn6SObvoAxfWak4PkFDraP0Gl9beK73
	 n0Y94KZW86WrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089DD25B44
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960003358.21749.10525678835191333148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000333915fdbb1ddb5b99cd1147b9aeefdb04c77b9f2a20cf4e4fd236788a598
Date: Wed, 28 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769600033
