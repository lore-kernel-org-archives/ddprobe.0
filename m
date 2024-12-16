Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195EC2036E9
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734345954; cv=none; b=M2DeRwZzVDOjXpT9YJ3EY3i38Yqs17sTQfx5lQotSI4Piyqcq6CSPYuRdzymudPWdJ0nNpLoih3Ng0qwc/d+UMQk/5niOkssfBWnLDeruI3tUVVfo1O73Y1bu70LmIkGkOiHG+hu/wnnVRARuRLgx4tNpFnhpV8y7w40XN+T9yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734345954; c=relaxed/simple;
	bh=uRmL8a2KIqoGQm5FlV7RjmSfCHoVAuArI/5itorz3Pc=;
	h=To:Subject:From:Message-Id:Date; b=kQrB6QfTn8GkdhhxOOn4mzBHlq7EvSI3gCxFzEiyKjynyIXeoee1t3Dogj2rOPOaGzF2e63s5jJ9cZM1l7tcY+/Um+2FLICkAXlA0TqxlaRQRHAOcisi9vQudHiN/zmNRXSTuLZHutb/+2JFNsKhbrWaGXGzl8bqXvNg8v8iqmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfYHkEZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfYHkEZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B26C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734345953;
	bh=uRmL8a2KIqoGQm5FlV7RjmSfCHoVAuArI/5itorz3Pc=;
	h=To:Subject:From:Date:From;
	b=CfYHkEZtDuLYIAo9p1xVXHs+nxL8V2wyi1gBNzohqc55mCh9sVoZ5j2Tk6E7OuLp+
	 5O67oGYXLVar55dzb7M4pltd4OHKI2uU5Z5BkBlbvxp3EAJ1fAxHk/8RdqRb+dNdHP
	 f9D/81TiqPTjimZuj7I76W86tCQY8v+sZzDjcdtAHTqm9OIRhbvT/1LShYDPg579Du
	 AzPlFeG14lgEiawN+eKD/hfyBHhxcpCX97NByKW3G2IErdiFKE/E5HUXCDGuGh0rpe
	 HA16nmkbyKm3i18oVNnSek2cjl15zIrQZPccS7pS1U99Q9CvyNeEXQyTSpblGdCh/P
	 HozH4jBYsinfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E531E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173434595357.22314.5412557314153722114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77159f38b005e08544b7c509b43aac0881c6cb081175bf514b6371a0112d3031
Date: Mon, 16 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734345953
