Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207C3272E51
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760280594; cv=none; b=te9DDZrYPmGWEHjjJ5+F8Tet6JeX1kXQuXUM6KOcZosn4YpMIIX5op0V73SEH9bAzCYK2W6yQYiFtpY/qT7JUEs/W81+u2p43zZtCf47zFPx0eMG1cR5uJi9T6of3h6iuA/IUO6GarhDnYk5mn54vhyQGE63x+HfoiesR5yMKXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760280594; c=relaxed/simple;
	bh=sx7wkJrSaFRkf59Z/DAnqgQrGG/Z7b1OtqTnXtGjSgU=;
	h=To:Subject:From:Message-Id:Date; b=MpOVhXkmmqDFz7/krlI2uHfd5h1KbKJ82j5ruiL5LvAZUW+Sy1sUlMCXq9vz2+/kHL7GW8441UwWhc5YHu4O5EilZ47wJcviOgTSGN7UZJtbjJFGiEDSkTO35/SILq8LfDFYiivoQXonN91H/lxoS++xLPQBbWJaWDtSIpgbn+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGk+JeL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGk+JeL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A75C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760280593;
	bh=sx7wkJrSaFRkf59Z/DAnqgQrGG/Z7b1OtqTnXtGjSgU=;
	h=To:Subject:From:Date:From;
	b=AGk+JeL5vA5eKO2DS4zI19waqMMtuQuYKHDzd5BKHwHaXhNh5V0iC16Xv/JY5igo/
	 oMyltRvs2mX3a9YZADWuE1OVBd+KpAeVLK4TlTBvLBH06z1pFBWCyN1Tq7chfhzaQf
	 wRx5eoTXoMWE1S/6rqQo7P3ytZojwsUoIo24gmKOwO3549FQ5Q2xJzhVlJXQ43BH0D
	 PB0QHdguArJFFeYUs4l56Zynt5WxVNeiFcLgHVeLqt5XLPfNX9Nnij/3xhmYPi5vRS
	 68gzZQPYyzFBYYpZnv5HuKWg27s0fnd/fntAXNnATagytTVDews0JlD2J/LDo7v2pT
	 n6E3/xBQDI+hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9438CCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028059357.1784.2827226518805041429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dafd668538ac7841a4307f9050e55c4b3bd5a38171e58a58c084ae6a975db7d
Date: Sun, 12 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760280593
