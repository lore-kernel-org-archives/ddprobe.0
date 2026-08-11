Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9776031F99E
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786447834; cv=none; b=KbrHEMFSUQCKgGDipfm0LOEH+kVzLeNe1hvH0htbIz4RCqGaDVxDZ4yP3veniQyR2Xr3a5J8MIdBJpqg62exM9znfFPembw2eaXHAIEGz3C5iGBAMNs8n+5xpcIcNIySbrzsoJO4sRKXwKU7IVy2CLgw+DAcMI2+wFCnk5dGjY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786447834; c=relaxed/simple;
	bh=UyjgzY+wNbgnL79iqZuFyBjvh+1Cnz7AbtwjvM4Iw88=;
	h=To:Subject:From:Message-Id:Date; b=IotDpxGv5W783WVUKdVgmgEn+DZhmeQKbl8KD3U7f1EaBuOLCHue8ji63mQbZEbdNSs4aQRac+K8HlFqdZcPYYCG85etdemVhGKz9vEMTMxYLUQoJK92aDxVSNGok2uuFtPoPel8pOToFy9l/eZwCnVOOrX3iG2E++k2mtzdy4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W069V6QH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W069V6QH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19E5C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786447833;
	bh=UyjgzY+wNbgnL79iqZuFyBjvh+1Cnz7AbtwjvM4Iw88=;
	h=To:Subject:From:Date:From;
	b=W069V6QHXMOK72KCpxPrs8i+3RoFHlDWeEIbBswZhkQDPtArDRR4ogusN0575d39l
	 aPblSvoHk4qOIbPmVgzB90Bsal2jRixUhcUA2pO/YVYYx2GHxrHthxDlYE1QE/+f9d
	 wope6kotF+AE6yd3XTa92tMI3gOOAC252+vxZi+nErI9BWk+Ilgjs5vAbENF2Y34Er
	 sqlcnVUn7YYLMHifzFu/xNY9fgFaPFgFmUcO4+jfr8IFxgSSAOW04eI68qwHjhSU3Z
	 CZeearVlXXyIunml58g5e3HKN+659xB3IYurzPiGRngyIsZwUYDOhEIeEhnoriveOg
	 3kRxc8e34coEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9667C5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644783368.10272.17011821907991840848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253191a0c1efc73dc1f97da722755bc0216bd6d59fe24af33721101266662aab
Date: Tue, 11 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786447833
