Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A071FDE31
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789866034; cv=none; b=KnkWtbRxCd2WOQRGMTYQudh1ncOsIdcIrtOA946dYovEG0NVOrhvCrqjoPCozNKmmxfRpctgdfxRWHUSf8uWU/KhFAETRHyFI3q5smjIGgsg8JqLX1AkkL6QtpKcHM1NHEC1T4IOAZico05hHhSs0d/XcMrNXM2VvuWJ0GC04js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789866034; c=relaxed/simple;
	bh=YAk3xtQOYptHn42BuSxP8gT6JOuL7bUa29SswfSbwaw=;
	h=To:Subject:From:Message-Id:Date; b=tcf+IBwCExcEXtbhvuZCm4ZvPZJNt7yB7wBma3wbFB4sRo3KtDcNAspeLqHAVuW1i1kNE5ntGuFfib8kLlw7T/T7crBV7nLZc7MFD40uegNAKG3BnC1PjWKVPsZDnpBnwfEFH56eXjho+0EhCpagvpLM5krtKoFTHxM30GffTRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lde39+EU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lde39+EU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A6AC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789866033;
	bh=YAk3xtQOYptHn42BuSxP8gT6JOuL7bUa29SswfSbwaw=;
	h=To:Subject:From:Date:From;
	b=Lde39+EUkU8L//mErQbUQyqNjf+LzK50gqJfv+QrTWu74Io28FTLcutlT4rzmgWn3
	 h+iONepT71vAW+SG+5RNI5EZ6Q43T/ve19BX0ikXF2fisQy/cUZOWk7R4Nqms6eOz3
	 ppirn0Usap7dnisu6o7a21IG5DDx9b3vEqGLGs8GkrZr9bWX5P+9ffcUj5ZUNSPMZs
	 gelwTXnMbrYlo0tCyaKycXx3GpjlkZREsDwcxUdoEVpmzvzOVCUfN0QWSvevdTVRe+
	 CCX/TUE/g++pgyHga40Bgn4ISK31lUnE6onofXrrk9C3OrDbzc7fnXHFfyY/PpPuTm
	 cyRK7veuhAw7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18DCC982D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986603370.31161.14155356009027539343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ee1164f721251638a70680a4c5e4cc2c3c0e110060c91ff3f88529312406de
Date: Sun, 20 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789866033
