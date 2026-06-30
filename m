Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35600158DCF
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782840514; cv=none; b=Fp05dLdvlWpcjMinBpW8gc3CCwnCgoNYPeVDyiOeujE9zY2QI5R/mAwPVAT3ojZ5OnHyFlSuUj1urQJFyUqjr0co8cwkRecsZKaeZthGOLiCkJNes6FfvUhSBxU5qNxrUhF3Fy1h4ZxMjRrm+zH188VHRdu7l8GA5smlNtCOzkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782840514; c=relaxed/simple;
	bh=32MG12AnieupLJUugkQU8nnS/MRhu1OvsyhCjw3eOpY=;
	h=To:Subject:From:Message-Id:Date; b=jPUHnPngLc35ob0q54kFRjp2m56Kum8EbGG2LMcuigcymodrlrkGQ4a7uFY2yh63ifUtl0pB4zWk8qXH40tIqJCV/C5XPJ01C3msoOD3ZmyLu5iL9bnToC1nhJX/KBMF5PVcZkJKF09jlNIiAB7CimbgL41TQ4vfiU699+WkaJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0oqognI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0oqognI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5DFC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782840513;
	bh=32MG12AnieupLJUugkQU8nnS/MRhu1OvsyhCjw3eOpY=;
	h=To:Subject:From:Date:From;
	b=D0oqognIZGt0mQnojxnFEyIGsDRqYjxPlmeqOca0kio0X0yacadY+I2rk5lpwLxqw
	 eEaANUk4AlFANSReW1parn+dwD1M+JJzSzhq9BSSRhbT81+sPjYNrizVwkNJXVCr20
	 YmLguMh8p7Kb0EE2B6ezJJl4jr5CmL9UPBjvQyRlBnxIpEb4tUngcw1IQTATKco3pO
	 V8CwDSEsamhLRBkVl1aR55a3V4Yqu3bpG19pnBiynolOFBt+0iNtmq+IuPXbbZlCTx
	 e0qwKMPqZwL0cGKgCBhEW06912aMWiz+V5D+nUDvJpZ156/YmJ8gRWPloZy3ZsK5CL
	 be8WkNSs2+4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F80C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284051368.25875.2324235632396482570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff44d960e3c7c720dfe5b7cee337fcbe4ff3c777fd98693b1d8f7ae0978473c
Date: Tue, 30 Jun 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782840513
