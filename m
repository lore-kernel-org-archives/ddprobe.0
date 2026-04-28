Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD007478
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777349254; cv=none; b=UgeUOwmJ6WzTjTRJB0Ujheg0D/20PSwaqykWxUlQ/6raqTdya35o30HX/ID74SsaW17mCFcdn2KYbWWB9zQYUgvR3yh88WHvZddQKhRMJv+MAHQ3iUxUk3ow9M+tfKqpPcLAA4iEQwu2hYJNaMvJiwT9PshTSNO+wLkzcxoEilQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777349254; c=relaxed/simple;
	bh=6yFIHaNUEDgDlh5Gug89dG3ashLozziCrMJvYpkSVAE=;
	h=To:Subject:From:Message-Id:Date; b=m04PZgm+g1injSFnwSURpxQp/Os7WgccfFggHvR/Wulp65w5gyJxOBlByndGjjerU0tDY8NuXnSZImDVaMdBfQyrBOY/38GvRfMagDwEmCQ/lh/2/hYCqHKA/t4ZZHS7hteYcqesq/b33GzIu6nx4RW8/qSA8YZ0dCfZ89HCH6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoqTZF0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoqTZF0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0602C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777349253;
	bh=6yFIHaNUEDgDlh5Gug89dG3ashLozziCrMJvYpkSVAE=;
	h=To:Subject:From:Date:From;
	b=MoqTZF0YwPeaqoBS6+lNPd1aHLVF/vXjnvL2mnJZUjewpuGNOmw/kXlSQbaYWW+yx
	 34VqXviTznOW1bchqvgUFaFzDMwEYKUEAnWOhwfhNotV+196Fl3Zkkt/8am6CxXgUH
	 RZLjP9MQL7HtUnvUPV2zjVq4mPkFTAE+joFUzVk1S4VzGAAH3TW1jqEbcmAgPKRpEC
	 OLrdTHtqTdi1gjLj0OGNsPsIaNMJrwnEKqJO2QFkL2Nxe5QuCdRMaKqFt90nGld8UV
	 VkXb/BGc0J2Nzx/sK7tSEDlUuDzppA+hRqHhDIt8eahWXF72OfOPB/x0iEyBTz3bX3
	 gsBZY0uYIyWuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC147FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734925368.23607.15081438807721016142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fda1cc1975d17184dacaca39f821bd1edb84805b6cfd56e65bf871c7c22ab45
Date: Tue, 28 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777349253
