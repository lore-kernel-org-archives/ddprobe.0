Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D8233A9F8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768812834; cv=none; b=BiBeLwlh1q2xypDyPDO11PLeXqV1tvJteJ2FzrMU21zAsDC+zjySIEF3QLt6S60uWQ0a0S8g3EC2YKSakhoEn44glboAaYPWu36AOnynL2tZWxD6IHe5B89OXT5KQ8zRbgHHZOLLoKoBYovNY93MmV8Y5pOcCGSQ56slFsAuR+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768812834; c=relaxed/simple;
	bh=BljC0shjOGUSTomQRRKujWN4Uw9rD0NcjapBng71aZ0=;
	h=To:Subject:From:Message-Id:Date; b=eF8zawYdwx5l5kbeC86mFUj0QktCpZNtEyRHex0zotpWGoHZqdqL3cEkeWBJaezEnEzz0XXlkq+egPQdDsgLkQa0uTGFhNi2ln/Rf2hNjKyZvpBrHQWOf7EZTjCKWoNdnmfcsQDA5lLDJjY2amfZaefgjINPV424rKLdSeEGfw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOVhLW7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOVhLW7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11DDC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768812833;
	bh=BljC0shjOGUSTomQRRKujWN4Uw9rD0NcjapBng71aZ0=;
	h=To:Subject:From:Date:From;
	b=MOVhLW7csocPWuvyu6YHanaFD9LB5HBAYIPPs/OLbMxbs4+0+xlP8fF3gCaaXNnIJ
	 xcY9eB7lgL38GnfNm/9vV8WhlVQf3Q0csjfKIwav8coC6R7vho5dMfUbTwuBUYENDc
	 iNBH4daIpttfzQyT0kgeQ69Q4CEUUMAsqyjACSVEMoiWngG+lQBOCl6soc2wIJIglg
	 RhSWwdYcPQYnrtI266+jlzrNQFw7fAAK6KhGLejDKxK3oPTRQwyHgPZXeO55tusap4
	 FcM8mko7zunue+4iOxOXv3X20c3C1bB/N3ODL8ex+09HZqUyxoZcXfPGpSwu+IosS3
	 aMU6tRBgeDt7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901AACCF2C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881283358.2642.5697662897916445311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffae9729a45688649537de0ff983316cf5524be3dcc88c84e2df1d9cce9ec55
Date: Mon, 19 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768812833
