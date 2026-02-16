Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168642C11DB
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771260894; cv=none; b=bazRVosZ3F5/Rbdck9L/aoHaG6DJAl9oOOBWU1a7UV1j0zhPG+acqQD+RBN3cmkPBRCtasH7gi6Rs+6lw19c4S1eC34//8LFPlvifSKwfO7XuTI/PYCrr3Zk9IlBNpafo9gHmliOmGSbAbu0bobaQxRL1dfD3Pr4yK8Oc36Kx6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771260894; c=relaxed/simple;
	bh=+QqeERK1/B/W79/UmO5lGa5h/h58ocplRe6fQOahAME=;
	h=To:Subject:From:Message-Id:Date; b=f+HWfPqJwFRemrhEkV0+gbNNtc4O+0kL0jZZyWxF0RC+wxDivtQsbtC5py4+P8M/IZJpi3AvvoOzFCY8ZTUzYEhmg0WTq5RUpbTrg16uVFJS3WlDo6SNKtAvOqm6T5tzFat42Cqp5nc1NaiLyKFWG1GqiwxvkGq0cWvrOgUagkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSnIfClT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSnIfClT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A18C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771260893;
	bh=+QqeERK1/B/W79/UmO5lGa5h/h58ocplRe6fQOahAME=;
	h=To:Subject:From:Date:From;
	b=NSnIfClTUV6xgGrzkjiltsHT0RlynMB++fILiPps01ZVlJLsqtTo6FbTeDscfvCmx
	 z3xsNlqZWt2S+zwx5EhUrKiPG49q7DexApakYnd/TbY4Mp5l1EfmSram+HM0f7JvUP
	 mQ/yTXx5docYkzKPZyFkkJejwxtcJO7S7S+JfgshVjGHoL3m8gA0IwmRZOMkIWs4x5
	 8OKJUIOTypeNK/cXqgCxY9QPBwgfw9RLoMi58nM00nPTrr8sgpUDz2Dh53XWXoKN/e
	 JqVf+t9PDiElOxajRgvfjD6iQXdwEQNmI3SJZ+/opu2KIJK6Oh3idGSwHsusao4+wr
	 D/0L31KwxY0NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935C9E81A48
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126089359.11366.15577142680492837284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696b73c24bc8852da0a033e50c3b5ea8fe8a77e2789fac521c984d8d34eb5faf
Date: Mon, 16 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771260893
