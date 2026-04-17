Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B3B351C1E
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776427654; cv=none; b=PpKO5oVKjoP1IaJBimH1JQ0/VJrDltq0+zY9WwMgpFCKs1fsHX6yInWM1u7gX/VYnEUlTA2YalRB+oTH0PQAPy6/RwL8j/wTjGkiHUKBPDdVKkKtAuATuCd+hUxtjvlzlaG1kTSYxm0eKAhCVGYhHMSkwiGi3CQJthPsppl107M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776427654; c=relaxed/simple;
	bh=oM4W0fUHdom0JNH91VcMueVaOX/LVR4kmfCXVhOiwmA=;
	h=To:Subject:From:Message-Id:Date; b=USBDMR2yXi2eskafwslUpY9AkylIP3NY1e8KP8LWEplhq45+WmVQOL49B5NDprBFpcCAeJdU+TYpW9wzxShhzs4pmivRbo6VjYiwwqEVXPj9aeCBCczDAFUaGcpBEZ0EzEKhmu4cbHdTBVIRo78qPxea88/JA0IWll0MDuYRqgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMAn9SO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMAn9SO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E30C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776427653;
	bh=oM4W0fUHdom0JNH91VcMueVaOX/LVR4kmfCXVhOiwmA=;
	h=To:Subject:From:Date:From;
	b=MMAn9SO7xmrNHzqcbf0oRtHue+w0VDamchXlFwiBioLf2n1xSam/CnIANiiDILfXr
	 j+pl3OxIWM+ann04jcCfW9j2jstMmBDTpSqpUCTT0IFGMCUoKy2l94a+TnT/FtP97I
	 RJFW6WICILKFY54/bqFi4LNRJa8iCrN6l+oV+C5NiPj39zN/PLVOqb8cWmu/W9BIpS
	 vTzWYpmwLARNPEpccUWVFOxwic/Mde463sbBwYHHliKdXptPO1mvduZIqJKDVDH6uT
	 TZexkUhZTS6WCpC4Ii81unzaddA41FV6Rw2rIM7AO+zGiFnQlIi+Ovav37XDSCBaEg
	 /UZI84MZjb60Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8C1F43695
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642765368.10052.6481340389828794174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0caca056867afb11b4a109c711b09a30553864c7e9f3c62a3c0bea4d0fbae0
Date: Fri, 17 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776427653
