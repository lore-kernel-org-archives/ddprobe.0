Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEA6191F84
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769214834; cv=none; b=PVqJHYCCcMo1IEAPl6o1MQiZxfp5zRCbnAmGuGPFtHXDVc+yYMtcYCZT5bYCDEhRP89esmG5xBw83z1bLydJU6RDNc2zrdQyXj0Ic9EfPXNS8xgliOgxWdTZP1ZAgOBhXsxHpqGLWT6NifqYGUHCgFMIQps/llnTIHxWqSHfAO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769214834; c=relaxed/simple;
	bh=N7mr4EPdV74LCv7fIoBL14FgToNxd8BHnN9Y0TJTME8=;
	h=To:Subject:From:Message-Id:Date; b=UlANeFnmzoJl2OxqVlMwQCoSX1eTG3A4GXbtDGVgIUB27tWXNxdElEWM6G8UZ7gc3RMtDG7pUzFAV3so1hH5rPOeIjhlB/lnDUibgrxjT/JlkWd2EtkniDjbiHSKGBWlY7ZDDdT7XM1pmcvDif335CZycTpwlaqxcoVEVZB2/0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Obye6TUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Obye6TUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46CFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769214833;
	bh=N7mr4EPdV74LCv7fIoBL14FgToNxd8BHnN9Y0TJTME8=;
	h=To:Subject:From:Date:From;
	b=Obye6TUk4NpXVAtZ7rGg2hxyy+OYe0apksQXd0i2lGPWtpFCmFFLGhtVxOczmLkwg
	 NE/OaipVOHHdHJFyJc9tc4xBBCPPYPmYw0T/Xb90o4I7glgE5dEpIJNrKawM29W5TX
	 yS9zA/xISsCbHjxWxXLSv4sofE1/lsOCw++e5g6JuRUhIuugkx8fEFfwmM/rmJkwXz
	 aMbYmC26vYgxejN+pORqM9tRPjowG0PNgxiRiUHKdxNXe/ZLTVguCCECG5WbpGv+Gx
	 FdAFvLIO29ZTfVXzTMETkRJmaFfEvWcJFNZzTvVt6z8ZTt+lAUdpMlJnA1q2XorGnM
	 BoFXKvX2ddhfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F738D77898
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921483357.20765.13864433696378868155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166864cf1e59a99df8f771054fe281ae556f01a43735d824be8e6ae4be9dfb3a
Date: Sat, 24 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769214833
