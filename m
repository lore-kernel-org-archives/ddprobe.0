Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EAC1F131A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760588394; cv=none; b=WalORv3W31XDKa71ZvRlFZBrvhvX+DJOjLhLrdPjTih4BMAEdd+6BJpAMq9tswV1lfXV4PQJ/Fm8g7baI4zmfKyybcH7TWmqAu1rPCjKiFqWGSEGeDgiddIEFmEAnp0+VGH2ZZRI4W15lWvWrf/G0yP0zs2lZ5w6BnT54BiKrcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760588394; c=relaxed/simple;
	bh=4UNuG89kjceJ8547Dff6g2HB337je8yHSQC2xnhCVss=;
	h=To:Subject:From:Message-Id:Date; b=oC56oGODTjSQmyKUuSTDMjIrLz2u07ugibZlAEvKISp8TSDxSa4l2nuV0HxUCrkRw3G4ENxm+eh0wmPYmAh75V8xoyxN0maee/zlO+Pw1jRiUsM3I20UytSwuF6ZjuCY7MXBaqSSNoEEh1/JXYw3Kkgoh8NC51oshkHgOXwyejA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkPHGs4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkPHGs4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760588393;
	bh=4UNuG89kjceJ8547Dff6g2HB337je8yHSQC2xnhCVss=;
	h=To:Subject:From:Date:From;
	b=DkPHGs4or1yy2dBpALk/R2VJrEerdwKKsAeUde+TyKOEfwdOHuYsFj8I27CE3CiaG
	 iXhtvR1kHi4YW131DtI5LI9RNMck4R+OcWnNalzcm5ArjXDqIebCnrOEcGax3NVeDs
	 v1RRgVgJU89krz1pfLP0TZslVCvt/fThgl8BV+Nnd/CURd4HupO4rVl5xzaakAa+17
	 O8b+/yS+ASf6zLs6B8zfcMzJTB9iCRrSByOjX3Xif1/oWr+Z8sftByVMArSABj6LRN
	 92lPJrG37+9b36NwwfjcM3fR6BBOqFVuiwPIJljYBICYKirsOaZgBgQRyZj2sdgJ/+
	 KyUFbqISbZi6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92245CCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058839359.21306.10251652992015684423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57fada18ddd3edb90cd8cd898c17fef2c3237c92c5e5b016ece11f2e5e084121
Date: Thu, 16 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760588393
