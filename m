Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4AD81720
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732599954; cv=none; b=YPDdaBi1eH/V0rPwJB5RA7suI15aXWc7PhkAAIaJdrI/N+cHwtPpqCD2X05b9YpmKMILX3bJQnR2VTPSdz0fn8QHQm0Mo08+i1uHqRAx9tiPSP5/vB7Cl3ygghRcjWhOVDIf0Phe0vilIP+FbKk0cUJ1OxWC4mvVd0/0hWadmng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732599954; c=relaxed/simple;
	bh=QavFnw8M5xcrJ5Tk+RAssHmS18HKy2qNMPmsGCJcDLU=;
	h=To:Subject:From:Message-Id:Date; b=k0tTxN6brkbZVWWMhZSmudO/LLAYRNs5BhJ8qEF04lCMUzyknPZJZucPAg/2CT3tqrfB/7pPA7JahphkBfRul1v4YG1I5RjqpysEHZ7lIs9KdwmfM36D+DN++xU9FNrwatwAi9KW4tTsXozzq/3Rnj/zkG0jT6a8qwxJMKRWH2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbZ6uQej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbZ6uQej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C80C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732599953;
	bh=QavFnw8M5xcrJ5Tk+RAssHmS18HKy2qNMPmsGCJcDLU=;
	h=To:Subject:From:Date:From;
	b=GbZ6uQejb+6wm29o3RdFLpZh047X+hf+jctZg1f6gKyybTCMKd1iUJYrDtEX1+Gh5
	 2KpDIVFkbBPO0BJCjgS/D1PVL6pMQ5fFHH0HuoZPKywLUsdDSlu0ylbdOVJ8CccY2j
	 twbzayP0T4/plRXJhnVoe1pRepjE+lXY2Ci9UQDBW7ZElH6ugMMAwHmsGslzcDKGE3
	 8C+cLcR7k/YFy718dXe4GrKgqSPBdVWuJcci/xk33bPSydjtpeko/r3O7RfmjiViHO
	 eY7licbgw5WXFcilXWcDdLErFLlkqdCaF/SgfJJSGukc7lEYqJYiWa061lKfJL9s4t
	 KZVC7wYXO4s2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9238AD5A6E2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173259995358.3253.10434891441062847475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59a81835decc4a8a48b1f07d4c352f4aa6fe926214aacf57376eb9e2efc7071
Date: Tue, 26 Nov 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732599953
