Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C41E35CBCB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762899594; cv=none; b=sjOgauZXJ7r0gpEVZP8tYM5J3SYx/Sd98hcDHX+XPxs4+SSKJZrV37kyW3TiDvrX5Z2hDeaapUMN06A0evGcPDv5E2glYJ/myjJEkgcMJu1oJ2EkL/7p1Go5eUwn/tMY3/5UMyYiDg9vXe/iMsca1Xzg2c+NiCRTs6PqrxwKpto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762899594; c=relaxed/simple;
	bh=IcnQdGsme9nT4CJz2iPzcpI1DFO4UFYT8bygYYewSoI=;
	h=To:Subject:From:Message-Id:Date; b=Eu9+KR7ytT/+P9JMkDQlNIxzJbhNjuvQScPw56pvsyk1f/MjUXJo22EZNBe9nNxruI7iF1BSocaxjVjD7vOAYPYaMFG+GHMrVWSYlaQvK+7oInbjAGsGbHTK4kqeTMiX7kn3MbhsYQwCUSiXBNXwiUOAzLeovhTMkK+FDEkjLbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAX0vHfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAX0vHfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56DDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762899593;
	bh=IcnQdGsme9nT4CJz2iPzcpI1DFO4UFYT8bygYYewSoI=;
	h=To:Subject:From:Date:From;
	b=NAX0vHfO2gpY56XdXw4WUItsTjIWposc5sXqHEPxiZ7xLYcWFOCLSU8rbFeiSASDj
	 CiCUP0Jc6jckRI/t6EUt+NTpRDxhtzCzKR9mrKhJ7qt277utBqc7iDHEZFTKHOFUya
	 B+AItUXlG+bcTiu+V5pEZUpFEDGRMHiK3tmHnV0KdEYG1FD73gKCQmIs+ubOxJ5cOM
	 /v5kRDFmMz5IhabvO3YDLToECwq6xB+pyWQymP9nkyphB80+R6AXoVHlickICZx3eR
	 rSto7fZ7HlKMSPBJuw9J+1UntOIswS/dfMYk/mLMT2v0FR18wLJtnuqZBRnnq35p6N
	 0PQnbDemcVEZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BACCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289959358.25127.1625870003993270453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77ce38a00434055f58ca60de4db3a98bef0abbda88725ec9707804fd93c0f76
Date: Tue, 11 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762899593
