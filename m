Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB4D155322
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749765594; cv=none; b=BfmAun0v3a0WwLcSFFHvqJ0MCZH805ky4g3nVMwXjAGYDWU0fhqMwOsPVNkP7V2kIBUEMnO3tY/CNGGSNPAAM/lP983Suwjn34N7Wyt7bAo9fhOKDv15APi3Gh2ahShJs6G1jHArgSEHMbVf+weznZbpZry07HCqMortpqdWeBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749765594; c=relaxed/simple;
	bh=wQ6EI9tM7ki0J81xwNgjV4qEXpVeD0RnfIUeQ/BVinQ=;
	h=To:Subject:From:Message-Id:Date; b=qMAID0yTpy9nts2HUpLrdgW1Ru898zqzTP+2RCD8uxAOznWjPKheT6gHPbUJxpb8E621rQ3ZnfpCglIoqhDvaNP0s6AYyXtc3chwApc7WNwlx1AXlmfvqe4IFATwz0OG/6JlsXP5kg5ia06vRIFv/AMqOdLbSL8bmDxiO0dVbI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7tDSRMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7tDSRMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C5DC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749765593;
	bh=wQ6EI9tM7ki0J81xwNgjV4qEXpVeD0RnfIUeQ/BVinQ=;
	h=To:Subject:From:Date:From;
	b=i7tDSRMn+jy78Ka/KAjrsSevX0ebdDikJVazqLRQDlXQMD+QcbtDOodz5H+j/xSpG
	 P29L8mAT8Fd28J6q72qSNUbbHy7WOqh+l6ZI3Dbu46wQESEMOiQE/AWObTkpGbFl6p
	 ILrbsAlHYJmjVccxvEndvvuTutvfrj12XiHuPWQS96nNg6iCWe+KgPPQKQYkxbnMc7
	 66QjhF0GPmpdRUrKYYscOfZf2IVqHtztFV5PPR1tN6F8DyvesY55Nuj9o6I4Tltwz4
	 LRZ+WLaHajZrgIFCxHYQeT5H524lnchPuAF9to7KNICKMlCQUEzXxCeMyfbIHmA21u
	 LQE5DhYywHysQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7CC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976559357.23421.4064520340988157746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f206d085f26a14814fd1868fb279bad2276795078bb0e0f08c129f23a4feb3
Date: Thu, 12 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749765593
