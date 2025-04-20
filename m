Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B7EF9E8
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745141394; cv=none; b=trAJUPCvpvSUNZJapbziImVoF27mPXr95lgg84tVH5uTWOL2/CXN+6BjCEiPls9hB0ZEokLVWo7jjP/v5alDT+DnafQb9BvBIoDEK41kePaBi8iYPmE7AqcMibtZ0r7/9+zZVwqYLuY0t4KPrC206IDqy/Dq/w6i+/NTzQhZpFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745141394; c=relaxed/simple;
	bh=X3yFCSFzGQSNIgWUjQHlhSr/eIx47YIt0pL6V4Vxq7Q=;
	h=To:Subject:From:Message-Id:Date; b=W2RQ4HtMV9V0Fch8Y43dBCNmhpPaMLKQz0UQE3x6e2G2VF87AFBc2wb/9Q7JAX1JTC07svc4spobvtBfROkCFhTpsKHmFEGXjQrc4RCpiuG6MWVZpXLQLEr7DAQB270tdqVLXZMubdyTSreFzm7dTqz6sOj5fDA2sU/j2aoXVvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMN/s6Bl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMN/s6Bl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3484C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745141393;
	bh=X3yFCSFzGQSNIgWUjQHlhSr/eIx47YIt0pL6V4Vxq7Q=;
	h=To:Subject:From:Date:From;
	b=eMN/s6BlxkJqPMoapItqX22SNchdMO9HRC4TWDvDy3kU0Y6ocUeuYo0z/MKAD2GUz
	 VLv4hoK8znip/zRPGieZpPDB9CJl5YfHMoXyYbHKWsAP1ZY96zNxNqcBaJkcYIK0f9
	 SjvI/nyntq3EKkAAwO0WcsPNWGY8/rt+q1IVa8y607U7k8MozFsrjHldPh9HxvvHaY
	 cxjHy1t8ADo46Vc1krS1p9PDmPsx2TyvSLq6t8/r/WKuU2O3RvdcfhDCcPf5QNpVJ4
	 bzhXiOUJ3uYkwMurmfAA7a0oO4SwwybdJ3MPI8XENwr+mRiz0Pwjg+CSuroMOMCaH3
	 +fX404PNS5IOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B386C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514139359.27419.3741000973554830621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9033e031829409faf92e41896615e80191c2ba1195304a5d56f296238c8cdd5d
Date: Sun, 20 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745141393
