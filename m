Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623933EDADF
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778151454; cv=none; b=SXsm5XKJBz7/MqM5KdVylDz8uv08fNCX11+uATRyOVj3H7jbYRnj3TLbEX+maBrawlwoSNcEW+BgCPPxkmTVs+nU9nu6fYp3axcNDpeDQf0K9Q/gjlSRAhRbTUH1bXqk2g5iVJeErSpolTafVPKjMUxlsgarauygEBNF1qRo1to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778151454; c=relaxed/simple;
	bh=ZQqJxpfurok4LDTqMvTYE0B8acgIxWiMZwq720GXOGc=;
	h=To:Subject:From:Message-Id:Date; b=mYUcqf2KXwdXssfm8KUfG03EnLdtt9uDBrGeaTefiXJFqETBYhwJnAsgrTZ9EHKJnwUyIB0d8F3kdLkzbFvjlSMC4p1eDHc/+iiz2igik0RqW5+Yt976liG8Cy9GnxEKQHkChqMso8xZaUBUd3I3vOZE5LpboqzKEPT9uPC74z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL8E/UKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL8E/UKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC48DC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778151453;
	bh=ZQqJxpfurok4LDTqMvTYE0B8acgIxWiMZwq720GXOGc=;
	h=To:Subject:From:Date:From;
	b=QL8E/UKrY4Pq0tdb3872hdOFkL9gxITH/YvvOlWzlCzBS3w1mqBnSsA5JoJg3cBNw
	 iQCbSDWQO2Uy4YjaGCy8Eo6BobAZ7yzjJ+Pk6vhxx+7h8Y8VfJy/dXHHrgS24KhPUk
	 OMFOVlNhkkLOihlmr+LH8G9H3kbC4XR4vTdQFEvJ6A38IV1K5T1j9/WMV1DA+i2iFT
	 eQDLdWPWHzSBei3bPYI8hS8gVCch0s253duKik5aNDxI9rX/TRYERx78gxvknpgXJy
	 fK6IUjxvmQV/2WyA502783IshhY1NYckxAuGa24e/wwIFd1WFGOubnM97nJfcL73Br
	 5wiZt0g71osGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA84CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815145369.2954.3654929222593132130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14c10bf3dc59e9593d1fd9734814288f53b3902c715f2d8ede54b7ed555def3
Date: Thu, 07 May 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778151453
