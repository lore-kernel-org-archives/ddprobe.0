Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D75713DDAA
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775375134; cv=none; b=KQ54knvcwYXGRYdyX24jJ1M/Z5XhSr/gtQs18rLt0eqFJwJW9QO4MWcBGQRhnqozxhRrMpv/0YIrVQohTFrOK8sGObyd+Im6ZNH9PKXlUdcdTV3qSGzvcJ1Y919Sljzd7+2ZB41nZrQqWisBnSsKJwSQ+6WwBL6S+2CBv+vseNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775375134; c=relaxed/simple;
	bh=m+ZiBd5CIDrDAH9itj5IB1Ci2OF16J6FOmEWOa6bIZw=;
	h=To:Subject:From:Message-Id:Date; b=nFlfQTnCu+rV7l9SShbxfDKzjDH1cn59MxMDU7vrds98M6Tgie0GaXADtJQLDUkhNC70EKqD+bXnRTLe/cTbiHapKz4btXN4bpWWbv60A5cKokeFGD/3ax2+fG83p511d9J9vBGM/lIvnEcX9uBzJ70khVSgr/1dZGnFvUgLhf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPlIk++2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPlIk++2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C049FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775375133;
	bh=m+ZiBd5CIDrDAH9itj5IB1Ci2OF16J6FOmEWOa6bIZw=;
	h=To:Subject:From:Date:From;
	b=IPlIk++2mwM23r6Ja5tbyPhZxwCWVcRzivOf98gtB5906101eSeEi7oDmec9riIAk
	 YwI7UOynmVn5+dRmDsX6CzuJMdQePfqb7MIUE6NRnxq7yQhNyhMM7IiBsN1ZZRdNSW
	 dokZUzOjYFT+52MT5pOONJLpxP/fafUthH+3a+TZM4RG9Gik+trEwmvQzR5jqOa8Pm
	 Erj/JZvlbdf+JBgcKEa4vor5sfo9FNy+jt35siJPg+t47chjkzg7iTkkIgFw0YT9Xo
	 bGtqHHWYkQwTJ76xkk6ITnG7rEqVcU5LeVME5lfD4IRIpd2cDSk/1F4l2oZHu7RabS
	 xsz7vJlXAupvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E71E64014
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537513369.15947.438556373405710644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e74ac6805f393d8281f0f76412589d47c714fe625dca667e81d22be45161a02
Date: Sun, 05 Apr 2026 07:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775375133
