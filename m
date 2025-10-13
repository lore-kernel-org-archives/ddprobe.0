Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210CC2264D9
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760386194; cv=none; b=pMk4VxWE6TCeQ/tWiwH3Pn68W0WA7LVeLLqSpUbGyO2dcm/HIM6IV1EEcUCdlmkNQblbOSB96eOijQGzyf5oK1/ezdP8+nVWldhDm33pk7626e+ZQEcrQZOlVpE+M7E2c5QHsv4eTXIdsCrVFg/zEOSCrE2Nvz5rvtGYFyMpomA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760386194; c=relaxed/simple;
	bh=rHxNd8HZbUZuXPMPno3f4oLLlUSt6ObDfjw8sTVTTRY=;
	h=To:Subject:From:Message-Id:Date; b=awSR5Ndoc6pT17ZR6bUZuvzJGn0z/TNs/REsmqunnqutW17zvL9Kolo2+dyMptQGKk8IzofVRWP4LvDLOzI7sRi2O23nkO4176tbhDa8j/CMb2hbY76W/MhCzZPpHPHRNtJtwxzUViB/a9cKKt5whHe2rYrdpztEQH6bKrea/TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyoshI0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyoshI0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59EEC4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760386193;
	bh=rHxNd8HZbUZuXPMPno3f4oLLlUSt6ObDfjw8sTVTTRY=;
	h=To:Subject:From:Date:From;
	b=TyoshI0hPl9I0WGb0ymrwyScOzSonEecnUDdy2qA28BIcEasX+Md7fq6ASc2SRURr
	 rmDzdULNjAYwasy/cwiJ5xOtf/jIttrX6CYD/gPES77SrwG3ozE4Ga9mq+IPvVyX+T
	 pbATmklz174FouHp7afqKbCSpx+FdDhz4s/sPXKQwTbeeXSZUJA8j+plk/bL3QSxqE
	 RLQgF/co9mxw1prqB+7ZokJrw2NOVVebhqcx+S31kcfRAZ1SzaGRZLY+EpOm5y6T6/
	 RpvbHTfvu6QN/ttf0jqxJcp4+L9zD0zO/UU4Yu7z+e3q3zPcYHXmYNl9vxXcx16HC7
	 kckKXFCmkw/7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C50CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038619357.28122.16993923878675225681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3553b1721f3a86c59d32a17364fdbafc44fef7588c1e7b3197e7bb2caa72071
Date: Mon, 13 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760386193
