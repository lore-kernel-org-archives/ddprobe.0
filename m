Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151E413B2B1
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726748754; cv=none; b=fjllYLnFEVa3X4SubGxFgX1UxuitWLYgId0SRIZXGC0DofdI5B5KwZKRy1n3fCCTMEdxuJ4B6rlOgfqhw+CeTtbZz49ZkxIU0sLYpdcTGx6L+7e2knJ2jllW+xs6F5AmDrb6crzimIzBeO4H+pvEvp6FGyFHd8N6TSiibTfwJJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726748754; c=relaxed/simple;
	bh=mQDur9fVqByhEDuCq0hoBiXL1oGmFWhI7c+1YMS9tNE=;
	h=To:Subject:From:Message-Id:Date; b=n+JzjaaNPrkLROsS7N4/mKQ9Ik9SOD0xv1+bn6465fErv7fGhS8qjtcuwUR5a0E+hlXLA0tHfPqNHIa1gS0lO4HqbIjs4HB23hypmh6XUQV4Dgcvbgq+CBa52REf+8ekuYzmxewfw1sYeUqV91QKhZYFi+jjQAfpdrdCFEKRyLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVNoFabg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVNoFabg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C56C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726748753;
	bh=mQDur9fVqByhEDuCq0hoBiXL1oGmFWhI7c+1YMS9tNE=;
	h=To:Subject:From:Date:From;
	b=sVNoFabg/wjQvKVG6wo629QjlgU6rh1IKxaNIsZKRuut69NLn8stRp3PzMU+lJGGy
	 XF8CTHyBwilKNuSkylURfmE3g1simK9ZBQfyU9gF9umWJvNsjVaK5NnVj6F4y93tKB
	 29Verqruc4IYXKEKBGi+Sr0aSo/SjVUF5AtOLDxPfj2hrgmWkMwPAj9sbM2n23By0+
	 VdKQc+uxeTOGq07scU2097PUMXmY8qN1ya8Qx7VV+p9qaKp8/XbpGbjMfO5FKbwsoP
	 KzqlgqpqtNvU9LAG0uAzEQHGkUehRx1ojrag1ULuH6aQnFMYsSuGA+SSf1hoaLtYZC
	 u6njyj0g/auBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FBBCE8D7D
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172674875360.30053.8526939296915813711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf100b9191e55dd43034df16b2e5d4e25dd802688a896b913fbc6d750b8833d
Date: Thu, 19 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726748753
