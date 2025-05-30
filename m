Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4434B1F4727
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748591394; cv=none; b=d+zayyXCXhihC9XGzet56dDYPD8gyCgNgG6RAL04ab+anECwbxoZZ4qzYexRbSQGY6gUmEmuNyCro/W2JW0PVMk2DZdC+MXv1kKE5UC1a4kEyG+Qu3d6Dk/LigoyBIVv7P9VabDqxJHKj5FtcX/LoXjEVkEOAROBwVP84qXXTDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748591394; c=relaxed/simple;
	bh=0l/UWngyzwtElqAC/SQ5pOMf4fayANVbO0dOiDFIbo8=;
	h=To:Subject:From:Message-Id:Date; b=Hy1zBE8xkknN0pCIC4xFC2AHtHZfCkrHVZEPnNU3B2cu7eDt/nr/fg3zDjiLg2kl4OgPntEPdroH5keikaRthefrFK9HIXJB5cZO98/7ssOtWvKVUc79uj0/2LUuuIoxeRm3Dv+x6j7MJTry4dwu0FJRoDgGGGD9LErZ80XRAuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNrHN1Ab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNrHN1Ab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A430AC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748591393;
	bh=0l/UWngyzwtElqAC/SQ5pOMf4fayANVbO0dOiDFIbo8=;
	h=To:Subject:From:Date:From;
	b=UNrHN1Ab82QrxMmIaKVESwanT2wGboQU5BXQjY7JcqnjsVbHP9nwwi0qurt8kg4iu
	 Q3Qg+YFyOT5aX3FMsyHRdDZccJmMATFhXQ2gY6TGheq6f4+41p9u/pJistEm04s+js
	 +bLJ0CZ13sThp7hX59GU3FFBdep89Ax/QXEDcRtUjYiDldQt9/+/qReyek4trhOvAX
	 fCNfFxUldXirqgh2K+4mGcGjfXqbyTz6lRGl2wYM9d+2q9qiQXaTUND3XAPJAVVTRr
	 Kjt2az5BsFT5Zyq/jACdC4SxVXxX5xXasGPKbN32c2B/fWvGDvwGG6fcRp+JqRjDMW
	 YQ7igePuOk34Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D60C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859139358.12382.4971359954550157602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407a9e8af2b3fadfa7b88670069d357c907f5c9e4db53fa0ffa28111095be4d4
Date: Fri, 30 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748591393
