Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4573164
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784778574; cv=none; b=VcvI+HA+uxpG3JyojoXqeBf/6EZ67pjRy5Xj+AkVnbmmG1eEhDR1mRsHX5UqA5fCEYfXJhsACG2SELJLVSOoHC++Rcl0vGkgb6fnRXKYl7+ucEn1r1rjx8DA5DD1rbf0iAkG/PHa5gdMtyXl95EAOBqLtuQni3qq1Z+oGCSg3AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784778574; c=relaxed/simple;
	bh=4pwmQdaN9vT1eE0YPYVDQs0Xo8J9vnD/QaVJZ0Laghk=;
	h=To:Subject:From:Message-Id:Date; b=GcrWQ81YS0MjA0O3HjRYT+PAZTYnHHWkpctn1tGSwhN3LBpZCUvc7APMj5x31WQDydbH68AznVYSdpiuB35ZUO85tiax1dBBDXCo2OtRorqEL/IKodFHlTbfTIfALDVMu49aCuXSHFMZSac660Cffn9GKdhRaMRVrz9ghrZXM+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PL+th9tR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PL+th9tR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E0EC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784778573;
	bh=4pwmQdaN9vT1eE0YPYVDQs0Xo8J9vnD/QaVJZ0Laghk=;
	h=To:Subject:From:Date:From;
	b=PL+th9tRUIiq2+NO8+FDYgYIWHpXjZjK+4Bk1TIvGmE+2jUhTD2het1x6rBWizydg
	 fmwVkFQHHXJIKZsOi77m5jLpiS6nIAG9RYl7/DDZwu0O4v0wKdOKw/ZnSL3uNZV+Pl
	 qzJLDRv8lYRfDdnc3EEQn9erREebABUwoIE/BA/Ds51sqWcKVD0jHHjh6b2lHUvXcJ
	 zYi6/8MiCs7+sTqpFAYXwdH3DhB8Z0fPEFOyVsoWVrfQ0ET2KTog/8dt5sDf36qIne
	 B/TFpsBTFOSsWhbNzMSnYS75Fe1JcwI5lWA8M5FBAD+tYA8pF8MFzF5D6+28uPgugH
	 baGhJcxQNUOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3804C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477857372.26522.14354659211489731951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378806e717c40ba05f71fe73d0106a5c40ba0ba77f7eb2dbada4d2d439fb8af6
Date: Thu, 23 Jul 2026 03:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784778573
