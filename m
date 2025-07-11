Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2415319D07A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752277194; cv=none; b=XOIvkgt+brsmmKcQomT/y4aKIjy2BYUH406h7FjhwZpgWY9FdEqyMhfo2yMFWI0T+DgGT9gRqN1cHIIg60Ygx/ly7wnufbIXZbys61OgrWkXYCo8C09D1rnshjoglz93+8L1qj8cqh9UqgoXmwxLvP/+6+nm6Ige2123Ub5wCJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752277194; c=relaxed/simple;
	bh=FrezANuoNEE4nnuqudmKJ4t6XCt9kLLZlM4zIhpbhmE=;
	h=To:Subject:From:Message-Id:Date; b=uCK8s71fa2mTOz87AEG0P12Q27Db/o9JTDbfXcQI6YTlGgPa31EdIWUikRIi1/40yUOXyS3pgo7HfixvVRbigV8BFsEqR07XQvtPewC4VldfkjDJC3myFsKOQO5KNIDTyduPoPnikjxY50rtDFlLzU0Q7un0FC5nr5f2cDAmx/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DO7Pk0SO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DO7Pk0SO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0303C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752277193;
	bh=FrezANuoNEE4nnuqudmKJ4t6XCt9kLLZlM4zIhpbhmE=;
	h=To:Subject:From:Date:From;
	b=DO7Pk0SO9MUKj7Ih8rFV44TPQAx4UEGQLRr4mXFTIYbvLhJ9EZ3IozNxb9GTPZxF4
	 4hgFN7wvphoeEd+3qwyfzc5hEPtgfdlr+wPRmfspsTYT4102GXB0mFVTCTk5VkH0aO
	 xtYz4KhivkFzKqXRzYw+wa59KuMNALFErggEQDHpK30RYYUwcRjYKP8QFnU1AppriW
	 75cTbzo5SgghcXy/iK0gBKiJTC4/sXCRBS4GgKiqlPFFaPcst2opcrWe2rxwRYaSnN
	 tkS9XSyyG/GGMQjyOLrSDHcApswcesRRgDjZYKnfDSJReB5RtSJPosk8D2wJn9F6rH
	 vGn5REgFMa8Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F4C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227719358.16128.1670590250711678438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165d33703d20a796013586144a4273cff35a3c0fc902de908c197ecdb62d1a87
Date: Fri, 11 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752277193
