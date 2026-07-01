Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A793EE1C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782896314; cv=none; b=A2FScVqTms/H6pwHHqdrdf0p8tuhyMKrpVmKOQ3oLKXHssFhLtwIvSsg/V8cws1yohyM796loSWxM0mxr9QiU1q4lR5vSHwtmOYlHOGRzae9DtPgsF2G5i103xdDXqX5GzuLaWCJN5BO8TdNEpyMvYFVT9/loIekub+tyk5cG64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782896314; c=relaxed/simple;
	bh=+6ZBcJYo186L6iHF0XKQZ6jExyHjI+svvE6alujvSyc=;
	h=To:Subject:From:Message-Id:Date; b=h4WstCENoffEV2t5uG7j7drfx8G0ce1FiDN68HVuhQ5AauusETzANABoYS91xhzP530SKxSh7DUts2PCnqeKVU6oLDTufmHnTKPA6pwJGye/EGswIV28OHfS0lmegnJf2oOk1xZ5PaHdzeoxxClgOwdTDJGQs+W0sZS3qBiayIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1G02Ffe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1G02Ffe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0035C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782896313;
	bh=+6ZBcJYo186L6iHF0XKQZ6jExyHjI+svvE6alujvSyc=;
	h=To:Subject:From:Date:From;
	b=W1G02FfelqHXP18xeSn8VVeJO7nQus+V8CMS4quuA1fmo7e8H/TuxEj16vQdPxHbn
	 q/c4ZYcutJVp3fwPtYNboSCtTUT8NjVV3lYQ/XPhy5aGRF/jyLSv8TcNKiU7pUql4u
	 l1RCjTFgCdbi5HgzGgameJW5YYbSxCmC3nkePNVMQGUFwuamA4UaJSBYDW3pgESOV+
	 ic4d1wnPp3pq3ZmL9BsNvVDczv/m8O79vsR+jFkceiZz8M3k3GU59VH8u76zqpD2bK
	 o1v6O28svK8LbKtjiigiaqrKaEyxfdqqXuobzGdQUNI1f7TC/SEqVT1zfpRpcA5hhu
	 VBjdyQ3wzpvxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93D1C43602
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289631368.12633.14450348234051639093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afbdcf72fbfce942ddf4e6cc57b5dc6429028d0060b0c428c9bce2cf5486aafc
Date: Wed, 01 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782896313
