Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FAB3B8D51
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767867234; cv=none; b=QLGey3Rm7qIO9Grf50PebtxSw6o+ZRfM2xbID9TId/FE7mDmo6smOW/05vDPz3jO0cN4quyI2wv1BbOj0suQcDYdCer0GycRgZETHh1EouAwQM8fFqlr43Kh6lZJ9zXb15npWA0SkCXmbAHAQ4Vp++nwyvDXjqCgOLx+tbLuA0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767867234; c=relaxed/simple;
	bh=LeH6cQrLXs4WtRSfK+0T6tlQhyTGunvTTFMvGjd8cik=;
	h=To:Subject:From:Message-Id:Date; b=UORDGdCGghs5qGcpnXk1V7rDBAUq03cKqr+M5harxp2Vth90Zbf5XkuUfeNvhzcKF7w489qfB+lFIhJgXSOGp7aYyU089tYY/m+ONuVKBsFsHkbTxTzlTy4/UPn2tWvIgejmfFWeEImBsq98FAh+jHC1FC45BTdZ2fHjGqNqAvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiY49SKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiY49SKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EADCC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767867233;
	bh=LeH6cQrLXs4WtRSfK+0T6tlQhyTGunvTTFMvGjd8cik=;
	h=To:Subject:From:Date:From;
	b=oiY49SKHq2TdJxldZ2M3lrXvZ1mT6guGSOMDF5N7Fy/c5cguVu5LjsDHmIXqKoof3
	 SPBGEjrW1fF5NKvkRMsBFlVwMepD6khmi6ualtoxZg2mYJR+4NoYnu2HNkQikJ28Os
	 c013DS0zNs8YqDdIkfgFTAA6Utl9D/D0Xedp0E0CdPFYJ1Gk/aBnlgxuBU3LAXf1Hj
	 ooZ5FuV9MKflzjSJx+DEHwJRy/9dQYVqtVmXM7s5MG7RLmtm1Gc0q//TxtwqyyunUc
	 o2Rg5J9Tk7uvNMHjdaxswgFcuXTZt3Esu0XMU6+PrM42JoK/PQrbv3OX6v9aLEqv+U
	 LW1Kuw4obWQFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91433CF6ABD
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786723358.11576.3805785926613469157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50fc36c535102d3f4478185f3cd087b2bb6e90ba3f0ed278e168bd57f1ff039
Date: Thu, 08 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767867233
