Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17575156236
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759777794; cv=none; b=lksIg3tASn4SzDBufb742AGQUYGqdCahGTGAtp/9hK3zOjjK5nkItG6mC4VE+VLT8861puNCS3YRXWJngFSOMXr/zG4prQVY1yTwD8DX/2YzfgsMTSljuEGSLHYT76mMYmoP16WNBRmfp3+jonq5t0lmMoWJEv9EIwZ+bS5pUIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759777794; c=relaxed/simple;
	bh=3i8PCwOozwL2Xu4PSHM0EoUNtNPmpuf36aiErOm1mv8=;
	h=To:Subject:From:Message-Id:Date; b=KORRvcU1hh6SkpOCCaLQNQTCTCTGQ6Ajwp0l4zLgkPIKgDkuNgplTNyTDwW+SnmWHTygUP39sazQ3ll3wcH49zInP+kihlyIF0HKHORZ3kfF5DJ38x0D+aWaf8Nje65Kj6ivNU03JSJNzAAuBf6lRFMmJdzfqnIZMNTVQUkRAZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a577eJtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a577eJtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26D1C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759777793;
	bh=3i8PCwOozwL2Xu4PSHM0EoUNtNPmpuf36aiErOm1mv8=;
	h=To:Subject:From:Date:From;
	b=a577eJtNhZbnGnNRsEKKQRSUFfMeDmvO2X9Qra8uXP97kJ8znsghyhnJvbKTEsANh
	 uTdS9I1mrvbKJ+Fcc79DJtcZo/d26ydiuiKu60yaSlHODb/Ey7IRW2QjBLpUW2MpNd
	 7m4jRG2waJqw89rv+xmbZEVQWNUZFAyGEyVgNTYsEKpvc3Cvi3fzqAJwoX45d6Wqle
	 7AtnvfQCOTzBRWqsn2TmASopB2BQ/8BzypuNeRkjVWfXtZUI1Eu3nfU9z6AmUqUgEA
	 g0pRz8NGRl8uq1PbcAiunXgnlEN0VHeUMr3DM/WZQhzeELYKevE8s2YfDzt++jsuVe
	 W2ies5Y9dI+zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9104ACCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977779358.9792.3534293374773903371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fbb969aadd7b975991416d76898dec327a04f0cd837639f1214fe5620bf611
Date: Mon, 06 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759777793
