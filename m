Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691C33644DE
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785621034; cv=none; b=UMFxpBKy3Lkim0Z1srPInIFLNA3ixH/GL4bwl7RYFLuLviEqM3Rv6eN/E0vVbW6MQBwm/yOr3iPF2m3iL/yelvqD67mfrssZms3JE2k5C2oQnvMdq72Tlyo8YRipltRYwbMapwJNQbEDR/fiRJyiVWIdMnJytIF5IAtGJ888eHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785621034; c=relaxed/simple;
	bh=ke9Xhhe9cZGtE3KvIxSQYlGrmNXis3Wlx3gFHv5px0E=;
	h=To:Subject:From:Message-Id:Date; b=QPrggKf38odK2XjMU0Goy4+AwL5vC28zYiA8ZIl1bxhFDF/gCwWEuJROXtNMf4gvmocLWtAwMnt2ljSUWiDHv8+qrtcnJ3A8z+7KpBHv0IS8YiJrAmZzD7iqRZUcVtNsmaQYbT8aKSHHE6nDNh0kgH2ArsaPzIGftlUF5WZck24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpfGkSc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpfGkSc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53E6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785621033;
	bh=ke9Xhhe9cZGtE3KvIxSQYlGrmNXis3Wlx3gFHv5px0E=;
	h=To:Subject:From:Date:From;
	b=KpfGkSc0H6dv39LzfWokiX+T/eKF7u6K63g8C61P7M8rlLj3WRkl7Vr+CN+k1CDiW
	 xKaHLIIvLRgEDSv3CkchYB41XFsYe7zXbrSEopVXvKHFroeQX4TT3sscFlnr2eJ+8N
	 ESlYvU5Eb2xRMjQyfupLyrZY5mVlIToJy1bdCOi1prUUk3tgJweD0nAeSUcfCwAuRm
	 omPPzt+U/CHOHOzF5WIyu0I3beNtqf4m2oeRdapFbI/gwkqBINZhySCLlI3ebuLVnt
	 D+wpMVWJLod5vTTRbcd0jP1zd14VK5PfWLSDftakHzCY84yuaEe/vH1X29BLZh4ph/
	 8PeArPmJW7FkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8F6C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562103368.15190.10847455425495231435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abef9cea8d945bb8ec757415992b5015c196035be9ae5bc7e03e10c89bd60aba
Date: Sat, 01 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785621033
