Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48818199E9F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 17:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721928355; cv=none; b=PA5NbFc3pp1SaJ58cYrRTg3g4NK+/o286HDhrm/NRIsFFDbwUAGRZVBx4GiBhVKciwUJIfflpRCWtXCBy+ILt1OEVsGHIVBA5Y2WF4e25ekScvwVw0rK2xdgTeLcI6Gt/RT9rLw0QJ633w4aZAhtR21YGUkyF9xsIN+3tjxGQ2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721928355; c=relaxed/simple;
	bh=GF+n2xjKY1JRjAjZCCFuIKlqv1PXj4//+BWmRqH90r8=;
	h=To:Subject:From:Message-Id:Date; b=jcyzXe8N2kSI4mBKdHZnjxode2+AERVFia6+eLiAZv/Dnh5SDJ9MAzrXLT9Yxg7Gxdyf0H78lYfcbvTIlXsoQEF6K2hgUA8ZJhY77JdySr55rnWw++FOFl3KSx9F9RS41Rsd48ClPiSsVwdEFAJ4CCuvJZUvesKYp7afZPkiJf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ss587q7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ss587q7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BFDC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721928354;
	bh=GF+n2xjKY1JRjAjZCCFuIKlqv1PXj4//+BWmRqH90r8=;
	h=To:Subject:From:Date:From;
	b=ss587q7Di+n7pldrOQ/QuaLtoaWM88XT3s9eYq7wJx8dIC6PO2O6kPgAUoAnj8U2v
	 KqQbI98qC7YYrxs89lKV5CFitsIcXHdbGvD8oKzdny9QdZuzFGy2s8U6DUaRK3Tq1U
	 nUl4EcUO98+f1mcWC7wSY5PqgJsP99INMVGojmeSMmAigNG8oJ+7+In2Pj5jST1eiE
	 Bag5norJqD/iAR8Y9N/e+PbUOCwI84UroyXLmuhTAvJWpg4txurK2RvJZWNkrNrcD+
	 CCcpZ1uQYQ9FvUtOreaLB2/uXKldw1/vunH3zXdFIBfodlz4KYbwj4BAxVQSHOkXEn
	 CmwwNZDvhpHDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A504FC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172192835363.23489.8603848552160240390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f8dd6c81ed1651522c505aa0166271bd973479c1553e7096d0453a3e56e94b
Date: Thu, 25 Jul 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721928353
