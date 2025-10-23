Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262D4261B98
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761212394; cv=none; b=bgukoLejeyX3BRX+3p1A46nNeoUWp1u0kLz8d3neJ6RV3uZF81mYSSmdSj8W3zvuHD9N3lUxfBJ4bEkv9oMm6as2qcjD9S3nrT520cIA0GegMO/mgC0e+3O9YzxHs/jx0WXcXadhN9knd6exNSqLVdX3L2ntNfNuF0xHInqESAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761212394; c=relaxed/simple;
	bh=YRQwr820Bmoy5CX5kh4Thmvltp2Kwuv19eiQwKKZCoI=;
	h=To:Subject:From:Message-Id:Date; b=vCaWYejOf2cHWnczNQQZEVmMqzXLuYT0vYMk8vL4iVsa03j72XGTlY1ahQL7LScAbpX9vdvIx+5mtod08Hm8DLnJC5teA0gp/RvmmLy+YGxIVcvpxjwIRtITGEYN+v1zq2x5v48qKhWNlo7rkC1gvtGQAWjufFtBEaMBw76T/CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6ZfFwK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6ZfFwK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0768C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761212393;
	bh=YRQwr820Bmoy5CX5kh4Thmvltp2Kwuv19eiQwKKZCoI=;
	h=To:Subject:From:Date:From;
	b=J6ZfFwK6XQU8f9SVx7ygVCrKl9Opv8wmemB1StlimQwZ0G0gnec2DcgRpxtciii4R
	 q/kqTAEYENFLzVzAW0LpiJm62wKhK8hFdktRd4ALI8LYCziJ0JGWuBLUze+XrZi2s+
	 PY9p7Y0FBxBmtrB/qOFl+0Dri7Rww9iTjkoiksfypYDiIM30WEXG7aR0GNAmn/ASxY
	 kL4W6OuHZHLgyKCRavQ+pnZJiCx7JJYIjpIN9Vut91HztcxHFIgSQ+p6nG4HUAzUzg
	 QFDZCENY9KFv+4Gczg4Onog3iPZUjnZjfRQpZFZ68frGyq7B/LGMSu9YvjfNh/xlmV
	 A+PlCmQnkaywg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC02CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121239357.28853.18391648869319931350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec2a5ba5dfdb9b68e0f3fc159cf2ff33266c0e6937908937ca7deb1769788e6
Date: Thu, 23 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761212393
