Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F222D2C68B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706374697; cv=none; b=cu36HHrKc36WD2aLQlZFYE1G4Qdah6DQA8MyMzeBDBvmgNqm5TMl0i1eWP8Zilmshvu4VxmHbocmzqZ226kksdjRybDDROhwepR95+38Cqq5XQXdM9hcFSoTY2s1qcLvD9tO4QrD2fCTAe66VEZxEcWhzEboPDcfopFcgIaq6Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706374697; c=relaxed/simple;
	bh=Oms8I4/6HQaxXo7TJb2k6ajmliAGPSRPLchbkrH6J20=;
	h=To:Subject:From:Message-Id:Date; b=nFROShMxUeNLQlFPqRqJjzjQvG/0Q4YneyZF90pc4q0bwZreJwMP2qHn+NzEpZdg4LTZJjQQAZ4olWIn/BHhz25Fi2dgKcsjYCx5CTirm0lp8WZFIjdOZLNd7GYnQJkn+4HsJET5tyGkAqgwDWTbQD0vk/bjgRFM120cvLAgTbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGrATbW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGrATbW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714AEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706374696;
	bh=Oms8I4/6HQaxXo7TJb2k6ajmliAGPSRPLchbkrH6J20=;
	h=To:Subject:From:Date:From;
	b=nGrATbW3HIuxxP0OEC3Ug/R4TgSu20/KGzzcTzlQ0krRpyifr1C9ocFIaOVmIpDB9
	 o4nJ0/BHz+7z/2yyWGmzqioNvr46EPjdv5o8X43HAKLkbnxFUVlXIX1eIqNv7n/1YS
	 zLkXUoCDzP9x8ZgyUNtAv/CU4AFdT8jSJWxHUkii0LrWf/ScC43++fhp5Ohxnr5acN
	 70fdsaOl68sPZBxOVgJLSjaAqe1JmR06ARPUuwp2WS9w16dMBYh99nixtcg4B+oY56
	 cybR6OwtlHOXAoStoIO+TH/L/nDk6p7vmdSp3+W9eI8CWU8A15CuVRtgaD9Phl415u
	 Wvcy0P7uFxKnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A64FC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170637469636.1997.5178081867316399745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c106f77a713e47dba403e7d82981cb273b8e70b4dc4ecadbc64e9050692d768c
Date: Sat, 27 Jan 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706374696
