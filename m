Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB6123C9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745803193; cv=none; b=ZYJlCJrS/2AFx/0+eCFqOMFBpQrhiOeihW270xdNfwyQgjoUyPUweyltXi1ZEmyGcM92KwSt6Diu/rO6wY201O9/3q340DH1lU7ECcKdDIUwj8MjqQk9C6+5xMOsklhzFApRKbjx88YF9cOixUAENTqqjBuAK14JV3SHZVo/IS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745803193; c=relaxed/simple;
	bh=ktPAI7gkqg3hXAvIFzDVOIVHrf5PUk4aHBNJbO5J/X4=;
	h=To:Subject:From:Message-Id:Date; b=FiqMz28SAF9ULuKd2eV1eXdpyUUYT3tIjO2pWogy1sNzR3RzSXM0r2OBgCMLo+2Ny4LUzqwpeG1woUgEUoiijbQVG2GDBWyabBWisl5ZY0Qau4QwSRE7//pJWtUfIyl9G/QPAUfH+LNR0A9ScLgOwZHhhmSnM07Prhg7WXsvOCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+z2tbE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+z2tbE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F36C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745803193;
	bh=ktPAI7gkqg3hXAvIFzDVOIVHrf5PUk4aHBNJbO5J/X4=;
	h=To:Subject:From:Date:From;
	b=X+z2tbE8yMyWwim/ruIKg47OM5O+JBX/pkKDOj91BHMa8gEA7ysZRX8inUkIDrsgU
	 dypdBMhBbjhHYdPxKcmK/E8brdXyxkrPvLUmCXtNPT+QKUrikrfS6Nv5QBD3W3l8pY
	 Rlh+xgMT8mBFP93GtUyX33+y+aRtTcn0AYnqd9HMGggH7eFD32JqfO+o/eJju0UKUM
	 7/Yhjm6q9wk0vgPVC89BatYv3jWpeYal90JemR5AxzVy6OzNHN4f8+9LsdW6xs5Uqb
	 QSTXqW9Z+7MOKUzfrDyZrxcN9rU6n7Op2ngHY2cAbqN7O/MnCU4A3eI8pyK7dUuYT0
	 oVcocSM/FjlaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92817C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580319357.10175.9185087019227431516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb5dd3511910a7a5aa6410f635f98b63987ac7733ac4e17a27813bc13bdefa3
Date: Mon, 28 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745803193
