Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0ED13B284
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753958394; cv=none; b=AoWqnxXZU0aOqARh6rehLUh+G7j9lQ0XRob8oqIxM2EBSQHkSyhxYLEHisH+1o9IyecjcBmEjko5FhgVydV/Eq86kOsUc99FW/PpiR+Rtl9zBLLbMUhM51yOUTyGS9Zbr9y1irpidpujwHJWmmpuisAt8DJZCKyEYWh6MBwWQtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753958394; c=relaxed/simple;
	bh=JogQpEfLSvANRaZ3alXPHod6OyVOhGcMm8z99X21peU=;
	h=To:Subject:From:Message-Id:Date; b=EowcJFwYl2RTQY6PDUijAdtBv9H3+srKa626bfEAilankwil3/YaPPAaxA5jUpF4lUTiKP9oVjVjuSrOKRtSkZTJI3LNCKbRqSjZSoFXvkFUbG727/IJMFHhooae+1DR0s1bpnPcuWl0LB2UO9IUEPoS9+PS2CjQxd5GS9WEvYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFqdN3sI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFqdN3sI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2019C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753958393;
	bh=JogQpEfLSvANRaZ3alXPHod6OyVOhGcMm8z99X21peU=;
	h=To:Subject:From:Date:From;
	b=RFqdN3sIegCoNvXPtV0hYc6JwCuZMijbMFSAXRbS46HNIkOzAn2bqn/JwLwVFf0Pg
	 8NpRMc9lHYPXRauHqYj0Cq8xNFofyxZISCmexUlobsLTZKAFuHsBNoGA4n3PLJZJub
	 lIWro9D2avsZ4UJY7uztKz0jhHLFZb+NMDUOplHvYxP3UJ/S7obxCIG7MvhwYg4vod
	 +vEEgPsWijuZLInHrgxrGn2/QiOp2QjBgIyR+sttyafC7FTMTCr69rb2hEiB6B9jr7
	 k6Xafg7xQ+NrtFoDqjtaD+Emh7uAThp97m+MbYgV98r3pJbV+0UO93LZlNHb/qWri9
	 K73CCUMByImUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC0C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395839357.1335.13051013306256306513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2752e51a198201d054ca574c2f74ea6de5a0f87022a49136e055f0a754582bff
Date: Thu, 31 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753958393
