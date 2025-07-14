Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD7230278
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752493194; cv=none; b=KmF5klfAPxheOaDJC+Xw7OuDu7P8lGadQfBDZQwAMR3aCrPvh8yOsnlt0yKM1DfyQITh7Hw9Sj7fkuJPSfFCWjLVo+VYyu578oxLZkGmPuR433kNHkaOQ4s/n9jayVxxauqXLAa6lsH4TUksAkJQt4uJPAWWgJJaUyfsqJ9tErs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752493194; c=relaxed/simple;
	bh=0+R8wWp9qqGIiZtRVHhCJ92W0wFINeAVj9fl/pG5vCM=;
	h=To:Subject:From:Message-Id:Date; b=NOhL6Q8PZS25sgt1uoovQOIU1deDOzvO65iDXdGKPZI1+M9sDUAbT0qzlBVPyTmJvlyWIz5rZRmzZXMUkIqxH2hcihTl4qQCiEqGd4tab65FmgnxX4yz01Fay8N+LCfGGzrfJP1nNH65Kpuww3ETRLsovX9vb+loKi1qA5yI7Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU/4bjIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU/4bjIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C671C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752493193;
	bh=0+R8wWp9qqGIiZtRVHhCJ92W0wFINeAVj9fl/pG5vCM=;
	h=To:Subject:From:Date:From;
	b=bU/4bjIa4NvnD2TOwdjL8bUFIyLs6qMRMQgTyyKDafItZGXFz1/0UDfuvMXDc2SZK
	 TS57tzVjyg4ynqiz4MGFCwIACnzCeO+bnUoRLza3TbwUD8Zd96Of1vfaj1ZmmWhrWG
	 EpkkvGz5uEeo8bkXSkvuu6wUyOk1DOSdi2IAFkU9wDSsg80ef1zkMlexjeuS/Rg68i
	 8yX8B70NOvUtAFIl3Hbxw5u8mGJYohUcHZnlxEKIxgCinFPVjlv1j8F36gNB2QF4rf
	 Tj5ulO2tbVKpoEEv9w7juLQM8XJHgyLEnGM/Xn9BxkiVlZ9oJbCNDzmcnOW54VPNWT
	 kkHBBhtUnE8pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C0C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249319357.8005.7191091169037077652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555534325b264a6ba87b04ed82aca131b804c9abbf8fb54fb1492904543c321a
Date: Mon, 14 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752493193
