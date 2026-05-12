Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AEE395AC3
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778581234; cv=none; b=WauYUEZ4+b2pBcFVX8Sz28mETen9wxIL7jMBMOaIeEgjiqXWHVWEgali47aiGuNMd/DBZfS1xfk7/QXqFRXcNc+ZNp+GNyiHoU97vg6aSNvJH5Qrgre5w/5Ik52cr8sDibi9Lhy9CxM+VFrCQySmyMtYargUx7CPg2R589kwjrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778581234; c=relaxed/simple;
	bh=POfqHeeO1eJ/Ftd9wGC56HwFIfaowXwrwQw0/Z3wV+4=;
	h=To:Subject:From:Message-Id:Date; b=GXoVV/DFN27xfLHZyz0Vx/JtMwNy50HgJtZ9JEtbwd+sSCu7zmWRZxWdc5bIPkeBWsQBdduOrJCTtYeyffGYoTuqcEj/6bAOyAk7ODUrStjMZxgRBHV7LrisnCF7rSepAEmCqiMImp3jcCAObl17Q7rMHpCbC/nOuDAHl5FNQz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HI9lBu3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HI9lBu3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7263C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778581233;
	bh=POfqHeeO1eJ/Ftd9wGC56HwFIfaowXwrwQw0/Z3wV+4=;
	h=To:Subject:From:Date:From;
	b=HI9lBu3ykvcX3+xN0pANTV3/S2TGwgseKhVT5q6fv+lYNvJaaha5pCUaJozb5O9Sc
	 eRgEypVyRRoqFxWnaLIfdMOJ3GJr4Xka6zbOtrSt5DAKcB5ydxtJ9SeCRf4iP6veBN
	 JgUzYaH1e4MYctPZBwE66jiSkNT9NZ6OXWL3IdKXs8hapdvbFCd5//PqvtNgtcnKmC
	 jUPb7S9wFL0Lqpt9SceSrDKic159pWPKbdQUyP6GmdcqpdhgktP3B1LklUaXQ15Jg4
	 5z+SlMMCfi7hqKIrpz8eeyPvysJaNTmlcgPmbd+4RlsV1Jb3+FuyN+oUJDpB2yeC1v
	 KTL0Ir8YhHKwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED71CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858123370.24669.10536050182103824922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7f12c2f8d068b11a8314c9b5734665b01a9a4ba63e8c9d59e3fa77d1663809
Date: Tue, 12 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778581233
