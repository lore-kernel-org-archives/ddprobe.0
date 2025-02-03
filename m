Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2731F9A83
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738577754; cv=none; b=TmgETuydn93GqNqDdncYO/1tbLdHm4w5R4dNtiCmz2Qlg4iLGANlYTkxNgBXM7L+NPd5d4VfxVOpbzjv9XiP/y94Dym+NEc4C596/zy+I7Q/7TMign578HVOR7vrxT3Z3evijiwiN2YSTF5DgLDyM0tzs07s1c64CLFHwKsdkEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738577754; c=relaxed/simple;
	bh=RCX5hsunScqGTCvzk5VjETfX6jsXQE+x9idTjxQmozU=;
	h=To:Subject:From:Message-Id:Date; b=XuB8ne4+UBUN3V8Y3yfJcAoN0yvJ1KSiRyiEB9KVvR2n8Auc+wY81bPBHN18RQg1txUTnZ5h8v337JBteBuT58X6eTP2SsVl7hEEozMAbXYXSYrQ04JRxVXDqyBkmDdQpBcmEGMVvrz3+NieK8GFe1M+ZKMzOXkB8XxIW4c5K88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxXlWtKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxXlWtKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA77EC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738577753;
	bh=RCX5hsunScqGTCvzk5VjETfX6jsXQE+x9idTjxQmozU=;
	h=To:Subject:From:Date:From;
	b=UxXlWtKlE6eSjcs4AERQof9B9voY/TPRBn7kAeQeHWGR9mXkWZEU4dnvGVTFpDNus
	 jROBfa6nGUEf1/fcUcDDFgk5g41l5rE354wV8MTua25vhY22PgOHApTV3xfURkk8Qo
	 LYw8KqnsR5iGPjqFmHLzd6ZeYrxKjQNlBcXojvCmQ5SKTzCsXrPb3YA/xWSX4OkHN1
	 gPZspoD38HVBeLbfPbEiEzGQwcyINDpRx+1CzFBxpYNFNQSNy80mvH3mL3P8jf9XrX
	 FcjWebRZNG9RVAlYyMlnDy+zn8dx+orM0qiKzNpZwmSC2SGIWUqfkeEeeGMXXjbldA
	 z2Lc0NSNCZybQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F49FC02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173857775363.9259.12438598151159327496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b94a2bb96d1844a90e06485e2abb4aad2f20282f167fb832ebc13892352f1f
Date: Mon, 03 Feb 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738577753
