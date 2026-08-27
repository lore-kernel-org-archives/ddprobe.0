Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B540456E00
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787835635; cv=none; b=lxUn0fKksywQsqh5twRDQQ00r2LSA/4uHCkACVKu0n02b+UCI3uL2PAA8ENrt1UeFJqIQV/euv45i5tiwcUaZ1sYBrveEKz5wzt4CrIPcdV1r+0PFNJWMQamvfn4gmf8Agl9UkkDPKmUSdWH/IhwACu1N70XTyUsvzCD5X44zlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787835635; c=relaxed/simple;
	bh=b3p3sHCs2Lt5yqggK/yhIKbbttPm64rFj1qchUj22Bs=;
	h=To:Subject:From:Message-Id:Date; b=B+/yMKuXZTfWt6VIQTYX5JTv/RenFoRCQ7D79TqTqIa7kphaYH5OPe/6yZquSXgU/GNrUFQLV2mUq4W7c2tgDPEyXAybTS345+NgopX9+ZoaKGo3sobebMiMtGeV9gaP3efEYcsLuuCa9YOI0mq5MVGxN6Akj+sIiiCpHTcBkR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVPGvdq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVPGvdq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA64DC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787835633;
	bh=b3p3sHCs2Lt5yqggK/yhIKbbttPm64rFj1qchUj22Bs=;
	h=To:Subject:From:Date:From;
	b=XVPGvdq+AdtoAI9Ws4FO0HHBRI/iARs1Onr9dj3QgqHJ/yfgoyL4zB52qA1YhXp7u
	 /cwQZzw4tetKAqm4/NvQh+Xh1izq07HZ5noGq1hYkJWOnI/3h26G0CeXBVwKyH0G8y
	 DMVgG3PW1IdOVR5vETs3n5Iurjtm9tvNbdkJBQj8WxsVrIC2CG05/N3opQuHGxmsSu
	 RLQux65DUZzDp4yLRSyaMlD6AJuxre0pMabF9nfm3NCheSJVA50UwA4BsfTs+kriFI
	 XMj0mfzMvB5K81u1mVwyEtOZbSnGsr/ICAXrwiTqcETc0/MLMMrB7TBBi9+ZwgJIMP
	 iPgpN8I35sx6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1504C61DCD
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783563371.20775.1955891150944428727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1a1d54c2212de4c6427ae540f9d6ba86c93022da1bde674915b922e25bdcfa
Date: Thu, 27 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787835633
