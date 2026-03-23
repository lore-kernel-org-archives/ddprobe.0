Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E661DA0E1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774287894; cv=none; b=i10fvsyMIdFdkbMDrY/Pur1wqxE+4fF8vQOKnkbFxVsofEKCIZzmfv/HZ6ss+cLbbd+kfLpbYbBWFozZtvMiRGW+JqBC1iguPCvHNy74Fa23eID+uksbW952QYo9SJwW4859qjKMsrSjXPL/yua2f43EbcVpsAljXDWi05fmngA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774287894; c=relaxed/simple;
	bh=TvSFE1DS6vmKf/1g2E5tR0SPG9TEPjKWJojBptVODTM=;
	h=To:Subject:From:Message-Id:Date; b=FyqhisHGjHhspX/TuRxLWCiOv6CPnXJm36dtVahigXl8vld7wI3LuNN9sECWCoj51nhcwHwIU/qaIKgJSQpvgm1r+oQKVR1c3lELfGF0O5bJfvT+x8YfnSodmRjs0/t4pBIYUwONppMdwfBxKLrY7CReN5ZPAWWXZTSyO7wGwL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdUkLXUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdUkLXUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91AEC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774287893;
	bh=TvSFE1DS6vmKf/1g2E5tR0SPG9TEPjKWJojBptVODTM=;
	h=To:Subject:From:Date:From;
	b=MdUkLXUp9sC0pvzPRSCadpfe1q3L08xYbt8TmK43vbCQh8w9Lgos0q/MXuqduVWnz
	 86bAc4xlzc7a+e9u0J82r2JG6k1MMRpq2hfT0MEjeceUYsNMlGdS58FPliXYVdJwnv
	 c9LztumpM577ryP2NNVyEt23nbzpYusUqvLAVZ1IV8cR60+0qas6zD3T1hILq8RAZi
	 bITionxlYXoUcELyPatEiqcqZUqEpmrgzu/A0rQwXpWC+YJCKg3L8EeVy6Hwys8mI/
	 Y4KpGnPpzUpw193Jdsa/pj5/YeV4aGNo20Hx25Mamc2Zq2DyripQyS3LhcyRjeqOqj
	 O4u3tZFSpTCJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C39F483DD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428789361.22965.13797264910423725989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae09eff07610130257d7e8e9f0e965bad2c166baf4b64066d0edbff2c6fb1ff
Date: Mon, 23 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774287893
