Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8985FB95
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754665793; cv=none; b=P10sI2k1wpwB3m1vGnXcR66vUnmDlYsVqagWDgKV21UIRNAAFsJLkI9o69Pdv/+a4HQTHPbvxiJCEbBWiSOCTyZqv95RG5xNqPNJbZNl/GbSH7FYc7daSRtV6zwMMTeouHMrXYCJbv8nnytCHVNhfHJ1NY1TB0jLzkyB/16y6Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754665793; c=relaxed/simple;
	bh=bRGdmuxMeYDw+3DOaX7WwXWSPCZ4+/4lbe/auBL8/bE=;
	h=To:Subject:From:Message-Id:Date; b=tO4CFDEEJuIQ5X5f2jzSiuV6QmExhXwHz+cOY7sQTs20Jj+6CYHmn3IPMbQSmdxKiLWHUoa7FT/xHaft6LWHZbOekdCsse1Z2dRbkxn7AV1m+8wTRbadnLZkezGuMMODHd+xWB9sxcEvxFHwtCOcX4OyMOlXy4ylNt+wIooW1b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDCYYMMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDCYYMMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CD8C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754665793;
	bh=bRGdmuxMeYDw+3DOaX7WwXWSPCZ4+/4lbe/auBL8/bE=;
	h=To:Subject:From:Date:From;
	b=EDCYYMMdkr4QxnDvgIRW1YQwzGonR8ZIRUgdB95VppVWsECrh3Z5jHUfy9YRT5gi5
	 B4qmJO5MYf1SJtmrYpnW1LGJ/IesDVRXV2s7S6xkgKWzR20mOe7g+pQCRuh/kVHUVR
	 9wrfaumlqRMirTZMt+grP4V7iWQQTjmJvhYrNhEtFH3ZZ4L0wu48RuXv5SS85gEo1C
	 X+bRg4KvdISm0bClbwcszuI5BkkKYTmMPcAokUdO186DONbLFJA9w8XnHQ8drrpdUT
	 Ys5GqgRb+PR8S22b0wF1jZhOYc3a3zm0L8NtDZK3Fm4qwn8wfno52uOt403ww1uyxP
	 2M2FJEaLUtb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B60C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466579357.27684.5274468746921976820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97934256cad45de5ec7d29ccbd4b50c202f5340d6c4089ed6c4408c3621c1e4c
Date: Fri, 08 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754665793
