Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8189A1388
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716691463; cv=none; b=hKhR8cgCOWfCZ/6rwevYqj80edADDDvJpYR9fMiGpnERP00zm5Abe70kfoUf82GJWWuP1bh05M1o1iCnl7IUnNSngek0r5Ro0WqmoOInRa1ckoqgcrBT64zi24Py/3mzGrvUQY+CxGaw8YjAyRYZwbTrcRTS4ZsuMJjR3BkG+1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716691463; c=relaxed/simple;
	bh=yUk9mw8AocKGDh9nHSwLt7y7m3LNk5/omVI9TJkTEzs=;
	h=To:Subject:From:Message-Id:Date; b=EC9mUgZlj3bdhdR2XIBx2hhyt93GzBQoj4kJDN33zyRAKFyAsj8vCXceZYYkLY/HSMsHgePYV+GOGdk7V7GcuBJsHXwQfjLMim5R+nSMiTsaGB4tlmjrYHWwmtu7hJU4WKTnbbVxVORbzaiyh0K/7V/Jpd60fXTgNk31lAkZlC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJSl+8lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJSl+8lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02DE8C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716691463;
	bh=yUk9mw8AocKGDh9nHSwLt7y7m3LNk5/omVI9TJkTEzs=;
	h=To:Subject:From:Date:From;
	b=aJSl+8lz6QilcITmikEZUKI2yByJ0WvOPrBAPwZu/pSdQdEMRV47RBMSX01X4tVv4
	 G9dySLATPFsyfhm3u9uwxKKqmdeQ72GhsiWpN7bmfaCBMpS6AKXu/rz89xFokhGZJg
	 CEeh7r2U4UM1AOqDfYnr98VLg8tChdQ8xiNWwSmB0JWjCP5/Tf+3EAhkJN+iyGDaRi
	 hRFnELfXxo6mDpuNChectC2w+NImYvIuvDajKPEeattwEJKms+jDu4aQDPOktkrKMw
	 BwZ3/G9AyV4yPowJTTreo+hhq62u8aSkwo2Z+lFbg5iiQNpStxvD5l7llD/5L3hdhu
	 v+StdiSI9UQsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7075C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669146278.22338.12364330272471275566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300f8c68c7ac533d3801d44c94516cd916798ea44a347850855676b670805249
Date: Sun, 26 May 2024 02:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716691462
