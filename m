Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F94E33CD1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720862423; cv=none; b=tlrfUKAgGMRqlMhr/I1moTsN8vW+Ieesx5X1GdIHvYPNHaFlxHsoggmHseIivzDjHf/dlU62spb+BQDH7bJMh0IakG8uleBHmpsQRwUN5RA6NunFJF7lTCzxSWxDf+iDd5W/95Zc4ZTTdPVT9ovUI0h/Tlz2pyg44tFPQ+urm5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720862423; c=relaxed/simple;
	bh=h1Odstow2cxvUgLfCaCJYZgaeQjgfkGikTkrGCqXDQg=;
	h=To:Subject:From:Message-Id:Date; b=OV/xVkEnF2iTkLyV7TMLVrRn59zY6jX5Zul4WKk+3BJN+Fsb29SDXPNEpWZKPWiqLMxNNuEQLpe3u/qIhKTr3qLeuGZ5FutGIMaeYY3UwkdObg5Hbas74oCc+W3xels9SboJeBrNMhTZDbVv0CsYCDtMJ/xAiTl7beDxRH0TbjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzKh/DRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzKh/DRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 221ECC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720862423;
	bh=h1Odstow2cxvUgLfCaCJYZgaeQjgfkGikTkrGCqXDQg=;
	h=To:Subject:From:Date:From;
	b=LzKh/DRJr0Sn+Rp/xhJqU5al2iwKhZAMQTlUv5D8hTIczbC6wWSY0VNVKejLfnZkz
	 3CjP8n1DhnlOKKXdich8MwmuKdSJE/iu2/t32NNpx/BGuEE85XjvL+Y53sE64Sgy1R
	 hMd35blhB4SwhPAG3MWbwyp3/MKR2Db2zLNxjYqyXWzVLCNvXlkCgyWLw4cNCYNFMw
	 v4jAGRHHNj7mtOiUUwz5PnLhzgcFdC+6P7VqspBTHlKNmBhOLXpgGME7+1RtUHxw8j
	 6fttj3YpaoBXW9jKFec07Xf7r/0lFHbVGtI/yxO+V6l2UHzOvbvyKcrVGIXWK7eFTZ
	 2JAs5xJEmmcMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9E3CC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086242294.30358.9993354971843676972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1531ca74a1cab178fc34dd5d4d34e99c24c316df6777e12843230f823ffd62a5
Date: Sat, 13 Jul 2024 09:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720862422
