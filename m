Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4BA267B89
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755625795; cv=none; b=n9/d9FkU8C8cumyCk9sVP+20R4SzBxIJxd3cilKq/lXiVCEV97XlU+Bv6bcLYmkzsVNU2fArsH6vtKb3RccTzBlGdqwHBE0wZ9DHAGn0rjN/IgqPfT57twoP/hXLVVTzZYYiSIBiocZLo2olhQ2H0RhNvPeCeBaSdJILFtDuuNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755625795; c=relaxed/simple;
	bh=uQfYTgiH+XR5c+1T5vexnPQ6bkN/4BMdlNHUGOTfBC4=;
	h=To:Subject:From:Message-Id:Date; b=iw32GOdey5x4/MBsSDEicG3Zbqo+BycGjiK2+jHY7CV1hxcJi1GakEDbngjBgteLbtqd4WhdTjRqhTIolhPfG119eZyvil35Uu7sSTkTcr4toLeuwPj0Bp/qIiA53VSEdSpRHnAXRQ5p23jz3rJNLNAlwbc4DFnYMUAiyXxe8JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMNJ/8I8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMNJ/8I8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1B3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755625793;
	bh=uQfYTgiH+XR5c+1T5vexnPQ6bkN/4BMdlNHUGOTfBC4=;
	h=To:Subject:From:Date:From;
	b=bMNJ/8I83WPemy7z48GkFFn1tHRv4AoJMREoyanVNchyiaaP31//coscyUeNC7RZA
	 NJ3Uja8uG5v6T0t3GUzmW2dt4AzwKje+98IorM2dS3KXNvDR9N/dCMTUE/nAu0mUuM
	 kkkTUCz1Z2x1Q4OkFEFK7FwW5/i5oUjWV1nmcjRbhgoHWtMCHqwSI8OfPIA/qFj+PQ
	 uOQZkbvXATuNzrOVqjEqYc9xfP1L4hgm30bHH18gMu9iy1ZW2arujzFwyEKCJ9GaBc
	 m0vIDU0DOC2DbjUidrAVuPlmjKGyuYlsYQRjKXAOHhXDaPW7iIwqPuzxbyWBIFOPBo
	 CcGp/ri4IPQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCADCA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562579358.32718.5793710227513603528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51776751705e7e9ed4fee9a41e5add1edb262b56f0a0cb757f6270a5326f441a
Date: Tue, 19 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755625793
