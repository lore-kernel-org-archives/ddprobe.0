Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0EF2FBDFD
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758197394; cv=none; b=HgaCyPHcLhjNC1jkqbZoDAE8dMqNSRL6811oj7QSpp3Hz+jvXddvRy+Tl9KHHtG0Koo6mo4bRs045OK91LSU+rgwOSEFD+HYWViJxolQitmt3HjvuBzzxbFYci18lg4d18LKVzjgwogohT0NpkPxYgTTLO/GuUfopvhAxe3w150=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758197394; c=relaxed/simple;
	bh=Vi92pvFCHrhSoQ1k+NxPAglyBs+bmN40acfhZ2TYCoQ=;
	h=To:Subject:From:Message-Id:Date; b=JyVIwC5PW3JB6mwoAyD4JgPpbYkrRABtnf0F4pSH9FK8QdpUXQOtARP2B+BnZoXsIYzBmKsyzy8pIW4sCb1S96jrmCsNSmspZ5K1D0tOcFFWEiAwL+wRqhTNYJqnrjMtV2SQoAt0/tGiIHweVPlAXy2ElE/LWHIp0fD2cHEOKUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2ZDp7DW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2ZDp7DW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7ECC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758197393;
	bh=Vi92pvFCHrhSoQ1k+NxPAglyBs+bmN40acfhZ2TYCoQ=;
	h=To:Subject:From:Date:From;
	b=J2ZDp7DWWbPgD4aFv8PlFdikOvpQSZOH5ZgpEnnAL2fBXlZi6tB+uyVrqwN4r9+Gt
	 DiE8UVYXLo/rD07Qqdlt1b3UuiGSyXgk/GOpVRnKPPiIJ80YFh9xp09eGURr/As/sT
	 NayGNkryniFv0G9HkywazzPxlWdoVtRC+ecCHt4SzvN8rET599L24iYEZFzk6TLZC0
	 S+/Fjl8keuUHYtFjmbE2mCly30kumSnyDuK4EGsYyS6hp13L88g411Qu4F3srpZnM+
	 4re9pU9nOxScLja6zDDogjsXi8n87sVuVcVZFsKXco/On2zoEZVPsMPNs2wVViMb75
	 /B0sDSaZYJQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BCCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819739357.7573.13298668468557768348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9d33163883428d92b340e2ae8ccf31c5c9de6c26aa04dda3fc483cf8b6f862
Date: Thu, 18 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758197393
