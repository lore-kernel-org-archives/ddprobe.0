Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E1F35948
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744922994; cv=none; b=a3I4nEP6BnBor0FcFUInTzXYNr0edSR2T2/CtYMdDdsnBG0jP9YuKxyak/YVVeZnHVeCKorbk3lAkUzxIC0XHLke7xYluyMqRZ1omYF99QWc2AlkPmsuRTZDYXmczRqM5DUDUhANr0lC6fOUXqMe7WRid9K18eET//4w3ZKNa+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744922994; c=relaxed/simple;
	bh=K3RW3TygYpkn9lt74kWPIHAe37AhGtIFUhEdkUN8JjI=;
	h=To:Subject:From:Message-Id:Date; b=F/yh6B0sOev9UOkGR2a54uDehfWYzohtsckuJnXf4UgsY0CRoaJu+e9jOL9wCHOgUZKgcIObmWJiUHn1/CHdUjR820Ng2BeHq3xgU0iwI+UxKHLlyes4GI1EKCpyDc1AQq5lHQ9LkwAKTxre45HK0Nsp/c89tYMtBjEdOmoN+VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOdlG/x9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOdlG/x9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8746C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744922993;
	bh=K3RW3TygYpkn9lt74kWPIHAe37AhGtIFUhEdkUN8JjI=;
	h=To:Subject:From:Date:From;
	b=GOdlG/x95oNVJiuCbiavBEzxr/NF2IC/R+kC6D3XnbrHEELu7AMpOY3dXPVRCkDbH
	 kxg6CvsrNyi+VkWWLHbUbmir3Jl0ceiWYF6xV8Oy1gnyCC4mDR+7L+AfjMCIW9tVPU
	 ppBJC2vTEIaINZYBFbEyGRUMtaE9fmBxbpbVh4FrtH+Hv7577gppwix4uxPzfaA8Pm
	 FLBzodZ3D/p5lLk5Cdpoqz5i3QNGGsx746+FjXEkISYG/e19G5Gow+cpNzy7M+32io
	 cVJJ8SCCwxj+G2nbut/6Hw4Jz+4aBbkEeNeH/VkbOlSqAvtTW911zMLKdLoTHeUgeo
	 TOdQXajKMlCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9792AC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492299360.30665.16907291564722873681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d18b75797379157bef56a5cba0d4a8d38bc6855f1c43f152beedd68f4364ae
Date: Thu, 17 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744922993
