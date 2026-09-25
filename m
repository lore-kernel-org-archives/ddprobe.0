Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F10423E98
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790319034; cv=none; b=Uu7mIZKFIClWChQELy78dLn07EJvUoBN9GwAFO9PKkhvNeZaOKa01K8WZSpm7G9e5NDI2fssuvdq+eJYeYSYnwUZqSTDkEFaGfdBxSJtE8+/8P2MYx5DHv0ZwteEj4KWlhVPlNuDm8twLsmX/upYImWLjpJMiwFLi0NgB9fMx0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790319034; c=relaxed/simple;
	bh=4cTsnxMxmXlpPAxqno64tPkDx46UBlNml8oKPd/1DrQ=;
	h=To:Subject:From:Message-Id:Date; b=hA++MxxFQOlv3Y4jpfaWFxSboVchqx3Gd80dBLhvQ9LE1IpMI61Y7GQqV+n9nJeQPjHaKch7C9gPO8vuuyK1m3snfYi9HhWRPEfvFC2r6J76hEenYZB4xmHZd9mvSGdsyDZuPndVFnWD8Ss++IxXBvjGnnc0hI/AE6DlbvsDOf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUXk4hOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUXk4hOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55F8C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790319033;
	bh=4cTsnxMxmXlpPAxqno64tPkDx46UBlNml8oKPd/1DrQ=;
	h=To:Subject:From:Date:From;
	b=sUXk4hOSP5Cp0nRIwyAAkGOMPqKwKv5Bvrkh2PcneC7lvL6nRnLqsZsMDyhrcsIlZ
	 9dqQ6ZB54pfvhU7oR7cEGmTNq7Q4wtLDsIJkZqlfn11GpeG6uesnndmtME5fTqByIN
	 MvnDviNdkZ8bnKQcHPP/+WnmODutaNePNo5N5jcGaZP/Jw7BEONs45XA8B7dPkvRma
	 wliSkE3ufIqDrfpKTtMjmbWrKJMP55fMrEh5pBjdlstWRpDpx+ufVruM9G5WRFsYij
	 +6HtXI72mlT+gSj4rLnpaz0mHdZ/KeypUboNFFbWYbhA4PulINm6aZt7IoJg9g03Yp
	 F8P9BWx7Xz7Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2369C98306
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031903372.4109.15050110723850245142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e874b0bd02467e16c6ff0fbcbb217ae8cae1d1cc2fbc158b761a5c07ca99f8a
Date: Fri, 25 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790319033
