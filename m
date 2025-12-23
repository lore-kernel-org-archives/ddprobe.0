Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EA5145348
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766514234; cv=none; b=ul3+oknOJ5vBUmgmkoBzJBunSORwUHLTVOAxWlOAF4myK/6a1tiLUPz5dtRVVuiv324TMAmESD7/hIJkuxbE9kuftFN8LsHSY0uyRKfiTEar6bhq8NvBApmwTRHVAI0R6OnKWUMNK/H5+c9b/VaD4lqnCggd8XNDfZxFOWZBCgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766514234; c=relaxed/simple;
	bh=sq2+XAT4sk8H+CtsZhA2WQlfAHE7SuPSh+j2JoZHoT8=;
	h=To:Subject:From:Message-Id:Date; b=SUK64vyAVF3AnUrhVrjO9NHNuyOA8VzCYns9KQyQr0mAfwaMbK7k9IY7Oz9YS4Iga68MrXZu+Fw9t6HrYVH5b33cV54aPVJytlgrWGu8ofkElTxozalF/Tn7e4qZEaYLurRtIvtuUngTWMin/Nh7GExD2cTkPqAYMl5PF5KPnDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdKKLV02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdKKLV02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E35BC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766514233;
	bh=sq2+XAT4sk8H+CtsZhA2WQlfAHE7SuPSh+j2JoZHoT8=;
	h=To:Subject:From:Date:From;
	b=sdKKLV02XJ0xBnwEADeniNVdlBIduPbDzrzfxrbYr/1uaSREe5bgbyW2z6rA+6EMM
	 OtYYBVr3geK+WA5VJ7E3uzK3hQZMZdVsBKgAPwIdjFUrgY+VU4veSY+AqkQe0y1QYg
	 6Yg+k/Y9HWNmxftHYvsuVPwlFxVC8udc3QAsYuI4DsNCL6TU4kgNSlYChALhDI0BPU
	 kAZFXrNTS+iFc7NCuF+zucvKnmMevPiwoguHzOaQYroUkPu1CaWNmGJnh0gALSbkIP
	 iIn/v+qIN6644TLFAMZyQfcfGi22cEwYTvHwox/2jAFsxGa6BGmBOSix6nHaZLjk9g
	 gSYEYM92ob80w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD7E6F086
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651423358.22278.3819827176305303533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd3816d17016c8093b242457f0d60dd2ff4eaed52b081fd1891ce4d0f98bd64
Date: Tue, 23 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766514233
