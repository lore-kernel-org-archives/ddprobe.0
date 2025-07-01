Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6191F582F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751407194; cv=none; b=XfqP+0M15q9TRv/ZFvxCGjKLf6ur4n1BRstd9G80sbq33F2fJf6hXpua/4FhA7fY/zKX5dFYwVIopGUjAy3yvLI7/DOE6JDYjzOTyqZVVVFuOfIE829YNtSiraW2kwxdqMsaRiujaCvjqoYKbdVkE22+3fXtujZ1ugWidUU/IJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751407194; c=relaxed/simple;
	bh=Lb232rJCOzGowjEsIYazf1fK5xsAq2weassNt/FKnj8=;
	h=To:Subject:From:Message-Id:Date; b=rOPcelVZ0hM1T5GSnIcV1HyY0hArK6ropicc/4fwDYcbhmeusvrS1vo9U6d1IAgySdcIStDYmtsVvOO7iRStgWtgqlZjQG+FLJi2H6Zb/O/icITs3sJplRboxvPV9R7SmhsvWxWVGgOOilfnZLIPVIWNunqq9jp8b0A3F2m4cEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzgYm4w9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzgYm4w9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C0AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751407193;
	bh=Lb232rJCOzGowjEsIYazf1fK5xsAq2weassNt/FKnj8=;
	h=To:Subject:From:Date:From;
	b=fzgYm4w9SrBi/4BggNyM6ZXfsFbKfblSCq0XRBRUZzv4viqiIK/Ppo2Wt503ckYkE
	 Ia2YDPULIpQDd5s6b1FIxp1qTGPeT8HcyOM7GN+wvLR5S92fEJR20rWNy5+x9EOcp0
	 CA9E6LKAt6K0l8TuECVdMVh0qUUM8AyACI/HmjmmPxuYPfPS+uQeUnuOiEiVaQcrla
	 huY/wJOymd/TrOUgdsI4Q2AFwfld435ZdpRK8V/CVo2fzLEI1r9BcLpfZq6cs6tBbi
	 6P46+XohLKYbPRv0bH7L+RngHjEHLFQdTBFCFjmscbXEaY7wqsAA+3MleULpRnQOVK
	 H83BWCyGhpxEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95416C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140719359.9864.15488907022174949835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91484c0ba7b421c9afb2934acf3e355b13909d64627b16f4bed1d88f79940ff3
Date: Tue, 01 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751407193
