Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0B83BBA1E
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779964955; cv=none; b=gjpKSLflU3B11Iw7vhBLsGfpjOWOZUvjCqXgAKJ+uxK88GKc5xW/vS23h5Qp84B+iMreACGCNLoAcJLv5wMW6hflUkLmru7AQD74BREIbOKE7bUmld6iwhtNRGQPiST8NKuLhf5B40spSpRMzqNGjkbk9OsgNrGaFVRUX4mAWmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779964955; c=relaxed/simple;
	bh=6C4HWNsHesk5sz4TXwUMoKoQb7Il7CLnM27neu2G0OY=;
	h=To:Subject:From:Message-Id:Date; b=I3us/mPTILPnJgB2GpgPNjMBLOJYK2Un+EzqUnh3uyF4QBGfDWAso+jRoBCBOGnsVEX/805798Vuc6ImgqFbDwlXrj6YmDD0xbEsgRhN8lAU6KQ9tTWMSMTUwa6oqp9WpI4+DpBa0SDWwZLBNzmRTEDqcOxXIp8B5ngu05K9tCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epuYwrxa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epuYwrxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B5DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779964953;
	bh=6C4HWNsHesk5sz4TXwUMoKoQb7Il7CLnM27neu2G0OY=;
	h=To:Subject:From:Date:From;
	b=epuYwrxaQhwcwNR2fSGuzDLWDXwI5wQEC0juIGpShIvwYR8NVRFFQuN2xygx0RDaV
	 oN3NEfyriJZbYHtiUoV9UoMFy/k11NjZm+4XX0h1Q6wCk/wZ/qMccS5OeSWGBcGQqn
	 jL8VkPLbob7EGChcZ5J+XdDVl9z56dvi/arQocv+XplAyC0ORI+JYSaBoUKA/7lWVD
	 lh8obFtOZyrcOFHgQ3b+FkCVnpwgwW0iJp4tII7w4+PYKlvirjfVYSqDWlY2A2hd/L
	 Z3+CtrSXSWn7nOSiuxBVtyJt6hnyK2484/OzQW8yUvYvXi922rZeSQsXSbIarkWfYQ
	 NdS7yzCVM6pnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7CBCD6E49
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996495368.20119.18373085038637254786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5621a9387567a1aed89c3a18dc00d111e89742b6b3b64551f8bb5992986a6278
Date: Thu, 28 May 2026 10:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779964953
