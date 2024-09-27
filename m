Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402BD9443
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727481354; cv=none; b=IlxNWMiNYe5o+8xsR3wNiXS3YqUQGc2AJO5R5xAaESCTB8MccJJuBO2u2+rNbbUPUo1J3pDrZsn88ITsN5mJE/WlFC9hDSFuaPdCNN2/qqe6en2KACKFgjCv7Z3lz5s4uJ0SNtdlgnF7HR4Dk4tD2Q0BwdEFPPplYvDbeHkscS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727481354; c=relaxed/simple;
	bh=6U4805Vr2nIqeCu8QdMwAKbyk6Z4nytFjCKrkmAeQJM=;
	h=To:Subject:From:Message-Id:Date; b=mXZIbXRJNHdFectU2dXEAZpGNLxZO9qaoV2cNO8/hT4srCKJ7WuRZaKH6gGg7LcqmHaTcbgKx2ki4oe+U0Twmtzd3/PLfxt6+59djDdx9o5N8WxNq5sIomv+NEdRzO6DxHrS9uWWvxy+AGVHSu/px79tpDDmXE/7g/P8hz9qm+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zc7Vi9bp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zc7Vi9bp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5272C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727481353;
	bh=6U4805Vr2nIqeCu8QdMwAKbyk6Z4nytFjCKrkmAeQJM=;
	h=To:Subject:From:Date:From;
	b=Zc7Vi9bpGVTfAi1L9ncJ00t6BASBn+WkZUng4xd/ULjOfQhysDGKVmQ075ed+T01Z
	 ZWgmTY63GqTsGEcCcRXvPG9yKsmTrq+acX1+nkJsjVlMhInHxdb3eUCrhb4S79Sw/e
	 JpDrrQ922uolUEf+ZjckQ2YBsTwMLcVMz/9cq6aWP0MOdh5QJHUn/mV8/omxav7KT8
	 ORHoV9dhOsp7gowxfGikFovMz4J7/WJLFXrAUmsGxdo0XvD4io39645pNDw8snAtmE
	 RLBF2R3b9Q8fvJiRvAEgdovunv6GFvUORJ5MwnXVALz6SHtUtnoMyk5eft+DZ/Xwgb
	 jt6Ya4rCaRXRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96292CF648B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748135358.12511.1008014364729448428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70124f23b32937b1a53b604008505532bda9d7c36269942e9fb24691df7dc42
Date: Fri, 27 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727481353
