Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AAB2DC77F
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765132974; cv=none; b=XEPrE3S4JDOaqzCpyJGjU9xgEteqB8za+kQgvD7UhW8trtZEAj9WWSyY1+dDHPmswD2UZtZ1TjIq8RGeYf4Ic1AQC9pcvSyg6Gnt97l4r7Z+HawMyI5JymHAQHScRaiGXPOiEQdBLK+7mg8fCGf2W7695980rckIoD4qpztRX6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765132974; c=relaxed/simple;
	bh=grzqzu1I9XJj/9RvZPvv8c4UWk9szNpLJd9mjKkEG/0=;
	h=To:Subject:From:Message-Id:Date; b=DfcYSBUJSE2qfi5x93NBPrC8nv96hscsZZ9l2/rlGKDza9JGcvef19mLUOPjq3nDOe16pJv1Z+tp+1eTTuSqnGRW+K1GWS43WQTKg7tB3T4HzOoAKbG0NMKGhipSFdLGtZxDqZGY3mdw6IUeAgG85Cj9sKxQnxbjVnOiFH06vDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m21tojny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m21tojny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C4FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765132973;
	bh=grzqzu1I9XJj/9RvZPvv8c4UWk9szNpLJd9mjKkEG/0=;
	h=To:Subject:From:Date:From;
	b=m21tojny1V9c0KjEJ6qcAvimAwTD+8Hveaxaifk790cM9uVoAWcp/q9aceBaHd8CI
	 p9Ctz8BS/Zfz8mMQxo3pIE+IZ98M12OojIo9M2JoGOPeHoB4Rju4jIsfZZ9yT+mazt
	 /62oR2vyYfoVF3t6wVbfbWg9f7JzNGHVW2w7bpmizuirVFA0QnDfyGozUfuK792fiv
	 KrTIcRwGQ5d2+jsSEpuqbeOb1wmNNA3rqDAHt5eVtgusS7WJ1kB8ClJWb07G8Up6QG
	 I+w3hmnA0f005nWELBQDhQujtEHAjQfnvCMOIW4Iopjq1q6c6H5a/833r6yNC1dMTn
	 BZg7TIhPW8hvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A414DD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513297361.22615.10231426861756134618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6333195d32084906d185e0ad09c9eb6c2095f2bb1a9f0985743c928d0630b59b
Date: Sun, 07 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765132973
