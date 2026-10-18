Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE4A3B3C0A
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792312834; cv=none; b=CNFWbsNmwtSdKYIl92A6GiCbvtU+EWaOFxDS7wvaq9qSFTxhl/yYya8m3DXJlPoWPSUVW/8vbcHRyhgZYEwJGBs47OGzwrKmuPgEOPYZACIIpbKPiaBPRAbTmsQR14OkGZeYyPJT/TYmVltB/oCW1lj0DSC/SE0fvOUR9Y0yg24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792312834; c=relaxed/simple;
	bh=+HchY34OYeivyo7AbLoYj2XmenPMndLI70aM7jhNUnk=;
	h=To:Subject:From:Message-Id:Date; b=JZCvd2yzncAcIUlCY7Twbdj79IHjJWUHaS9Key2w6A7We5n1kGdjpWoxdkOvq2S2tzVn0U5aLORSoJ08qcJtLs2yHA4XKc3aQeMqTVk8OESz1Y98/AhVpAXqcJNisxLF8jU0xXDCC3dlG9rvOHUCFuYksWC9Uc7PuvHZdAw/eKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grv6kk7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grv6kk7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BE3C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792312833;
	bh=+HchY34OYeivyo7AbLoYj2XmenPMndLI70aM7jhNUnk=;
	h=To:Subject:From:Date:From;
	b=grv6kk7U8ZLN3ixcvreBQlY9FAmB2/dVh1EOBD7rleqLNXtnMXgsSLgQnc323SeS/
	 GbQLE6dw4tb9/HcHfuBeyzTEZ8A+U4GnlQf9TQRiCs/iFJvh5UDmTarJjjTV5qXJYA
	 POtMvOPirhcC01m0sxBdVcHuiZeTio/O92j7aDIViDypfpMmtz8ZZqMlGiby0EOOGN
	 nuIv/OMRANTfd1fzHP200s/+SxwBXLAin76t1sXgFsZ24FNyuNGjmDD0AApApKH+is
	 W7DZgKwxV9sFK97egAofJIinStLSWIrbHDLLE2VY9DKSS07cPCOP6k4PrxXAHMqeDW
	 4b8XfaqVHCnrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA415CCF2CC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231283368.29465.10743520330818432184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bc05bb32ba4dcb12188a82a6e914af214d4b9e73902c1dda9852f631470f21
Date: Sun, 18 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792312833
