Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FB53A5E8F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774880094; cv=none; b=Q4Oejie95mXFJtdcA74UhnOBOecUuTzkDobXEP+NRiOY8nL55muYdC1DzHwZElnkpOtb+FbGdg+eHaYkjH8gQneOGRN0PSWBEbcFS03FL+g97cFd/Gy7KHaRSQInvJhT+7mYAo6h3n/OXYK/VYcRG2PN9BWZcz9w42IqRLCjBBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774880094; c=relaxed/simple;
	bh=OvHjEmrHMpumgYdRzlJK9kzDpyptslRRv9UVqhgv6Zw=;
	h=To:Subject:From:Message-Id:Date; b=lxfMJ8d8Z7Hw9/TF63Sx6hxvatuEC+5oqiy6Xt0GJKdV7IVZ2Q7YVeSd3yG77XDYNOt8kMQ+lS4jsvjNVkutgvEGqu2a/tDW1xPGrwthrDKCGfq7iy0bQQCDssF/5MGb1hVGHl7+mtuVfuWc67vZM2TuNjEVlWyhj+YzYpMtASs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vkr2WjIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vkr2WjIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99EAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774880093;
	bh=OvHjEmrHMpumgYdRzlJK9kzDpyptslRRv9UVqhgv6Zw=;
	h=To:Subject:From:Date:From;
	b=Vkr2WjIZ9Xc4AVjQiSN2WPdp4dW6hsuZjhKvJ+O79XtIamFfUNUwJX+CHxALtt4Tv
	 NyhMfhc1pyzai9Br62YxQAW51Ig/R1P9xdfi9CYIk5ng+Bxdzzi4zxqQQPFz8lv98X
	 Qbs7E4/Tu0cLyUG3VKD3PqV9UfClNHWb0c8Pxo+kgzYp+XqCFpUNtW3jHWEjN9v3Jx
	 NiMSJTtXawfhT0npQe5ykXlbbiatapkRYxpT0v89GGFjCvPIZZ2O/AXiAKI7bCHFj/
	 gDhURx/Kifu248WcqtgClDwOfIKkMbgHlX77TyeoQ7ykFvJT8WJPlNlxzDrjUhWw9H
	 rIKTMW4SoJQqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9845210F3DCD
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488009361.19517.17857290915580132639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a2ae580bbf6fbca0b72359dfdf9e31f1657dc2c8c507fc3053d2cda9f11947
Date: Mon, 30 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774880093
