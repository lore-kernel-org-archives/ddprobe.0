Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38117293B5F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775608534; cv=none; b=nNAfL/0xMHBe9VGQLFvF5rujpukiqU9fVBoYWXBV5DWW24rfz1YWksu3Efbau4xg4osLAUmK6CU6xnf5hI90SwluM99ZhZMryv8FGoMw0zksPFd0FCMpxFNUrStw088Rm3QgWr2csVptwWUvctm45kfZklFWu/Z15O5T+u/MklA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775608534; c=relaxed/simple;
	bh=z+p74r39y8LK7yh7kS/+tRzlI6ZBPR/N35en+IiYZ6g=;
	h=To:Subject:From:Message-Id:Date; b=tQ7O/bzl1rqr3yuWFsKYTm9tHas9uzpUA7DSIDrnE7xpsnIq3KJxpBV2goiX+e/VrbnyNFOflV3thN/9LHgtwwApdcnh9rfcWNT/VbV7DfLsqTd/UN7JSZmjSUHVMmuvipffIkPLYhN7FDhZS5Y47cw21SB68oGrHFTj8kXf2ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYeRyNPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYeRyNPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0FBC116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775608533;
	bh=z+p74r39y8LK7yh7kS/+tRzlI6ZBPR/N35en+IiYZ6g=;
	h=To:Subject:From:Date:From;
	b=lYeRyNPGtnj6r2CTBRUkDhfRHs8WYD9ygzmm21Dzfx++9BDMVE8FFMgtwjo6eJuXY
	 E8mVVdskMxVsK61evL8puRdA4WFTBWdQTIqqiTe4qNeiB13RyUuEWct990Teas6kSi
	 yJh+wl3mnUNwdyatJOsCsepTNN9XBCQfVR2jglBf2XBEFm+1RSt7ZtO3+7E20X1e8d
	 aeiadgnf0jM/pV/Sv5g7QPeoht0IXOC8QOicGmzj33sDzNybVTlZHYdfDseya0UvLl
	 +b8eQSHb5DpCU+tiC5DYKtX0bk2tLooflg8Pm8w4s/+mFaq9TNsNQ6cCe+u6FncWbS
	 hasWEIPVOM23A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B784C105D98C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560853373.10362.13534749640372418827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a617f66aadcb3f5e50ddd4ffd788ce6b645f6a20b933d1de6b1a022c0d8628
Date: Wed, 08 Apr 2026 00:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775608533
