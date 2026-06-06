Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164FC199385
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780705474; cv=none; b=fblRykrTTHsBumtNffi1IokfiC4mZXLR7aEe6pnm+Xl4XtTW+8hwnlcISBt7Dr2zQHzQWKRm0UUXsBVmoD9lwPE5ldlI4i4a6z4WhejUivW2D3ajuNBAO1n/SM7BAg130eDEoRnrgaJKSUPlUTVr+soUKZ3cWQISBbq6zYw1Sb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780705474; c=relaxed/simple;
	bh=Nhm7dbjBITEN/5FxDISWTaKraNjgUgkrGi1jWjp159c=;
	h=To:Subject:From:Message-Id:Date; b=QD+toF4xPLiH6oQxe26vsxG4XhqKQdF7sih4njUOoeXa5EKwXxpODSmAOGitccBdpWdknyAC4HgreUgmXAsqcyUFej/LTAkeCb8nhVbCRqQAAoXELB+NkYVyv5jWZuRGRKscPAXXaxOSgzGmQ9/AqSwnoqTDJ4FhlW6wjpYkSng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJlUAyFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJlUAyFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89B0C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780705473;
	bh=Nhm7dbjBITEN/5FxDISWTaKraNjgUgkrGi1jWjp159c=;
	h=To:Subject:From:Date:From;
	b=lJlUAyFAvvM0m+XxNJiSFbhAGf3QPuJCEcNq6T9vEhCiQP9FCtphRZHIDOF2U47dr
	 3klb+YE9iBse63VG+rR29d4Uuobu17gXDjWaRrTJL/XYngHtNFf1ELA7Hlb785dgeG
	 zkmsBToT5Bqiw9c1UOR39u9dKOjpVEqL+KUzFGNYprUlrhr9BWSpirxKKtHyb3w+ul
	 zi7wvh8IaO0YhFbL65LusiNXmQMo+X4bQzwSLUAvTqff4fkrWunsW/tnQM30jPhQXp
	 9cx0Aan7bqipOc5VfZbW0r1Z5SvBblEFCX8Rgxy5lCrvsEB6DmT4nIVqTmQG65oqmq
	 xCl+En1fvFOxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA78CD6E7B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070547368.24094.8164100331376437553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca17fb94e55c172e72ab72f72b82f831ea5318aa99648fa01b188a2729f77c23
Date: Sat, 06 Jun 2026 00:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780705473
