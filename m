Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304E2232785
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764112974; cv=none; b=Kke34fjVDDPGkZDfxJ4z/6DPqkI6V7JuPlOivhloCTYTXR2e5WhqtGrnI1JTlFChsODwOt0kO+Ta95V39Iv7zAjSepeen4qcdzEnZLsvYRf8xodTwrpgMDpxKCBMjZgm5p6b3WPQXoZAbimhnUwe0t9ab5FmQRmeTtWJQNfaecA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764112974; c=relaxed/simple;
	bh=yRnOw5Z/EVPsw9TiUI0Qli94AjpKxMt3Njy9Amyoi5Y=;
	h=To:Subject:From:Message-Id:Date; b=aU8vx096dkt93Ik7X9kqp1gXtNQIxaeWNWYA6Hx1akpB5FGWXVPUQ63HagLO3UQAq+VTX5HkRbTpf+nEZJ2Xo97jvaDoN/YUfiSvZmyyKvydmhBRfjhZLiAO50lJSQ+R3JagfOar92YLaf5TI75lWy5y1BipDQ4v7THqSnKQ3QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpzkKolL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpzkKolL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA4FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764112973;
	bh=yRnOw5Z/EVPsw9TiUI0Qli94AjpKxMt3Njy9Amyoi5Y=;
	h=To:Subject:From:Date:From;
	b=bpzkKolLoeG6kAecnjdjaL/IcRwzd+I2Y0yjD1bnsKkVOBYxYnQqEs/VKrz+6BAK5
	 YXAWfjGIdtVlYkLIR8F2Ju2HC6zhsUZupq5VsRdI9c5bT++GnpryhEn+ZhtnLkB2Xc
	 F7sgX2v90RA6EU5ISWE0au6XN9qP2unMCjexe4vuuSgaxHdqAZGAmZCtJHxTcYfnjc
	 M1j7Ka82LuezWeO0UUhGvKvPZhRDCtFh5s+tWmY36vs5DrmWoiKKhiFK2FG8O6LK+T
	 dbrIOLY7UNvnh6AO7oPQCZOxMkH5Q53CMMBOuYZhtO5rsKhbt+kTrY+bBtkI1T5wN4
	 96YUnM5ktxL/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999B4D10369
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411297359.1342.11830410962936531385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7134127ac009242eff43bcde3a31360d6a4677e56e1660b714496398da44b9a
Date: Tue, 25 Nov 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764112973
