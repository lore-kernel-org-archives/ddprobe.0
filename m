Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAF23EA63
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752284994; cv=none; b=aKzd2iVAeuTy8Xh+EEBGy2mQsfYALY9jTfjVIuClWPZ9IDZlon9tto/46gfZB1k36lnxMAL+c86lXUTtTMvIVYEsEFSVmYKdy4MwwFJ6nn/lrvbx+TKgUhJ/a7BFgFyP8Q8eRpVsjJyoHPhMTaMh+k225q1HIDpvmsvBRFserZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752284994; c=relaxed/simple;
	bh=N5/RlWb1eK66OSiP2smJMvFk4D/lTke2Q+XV6KuK++8=;
	h=To:Subject:From:Message-Id:Date; b=hIbTlApj5qPGyUmHfGUgxYzN6GiWjvOe//MxbE+BYAZlRfo/PD9X9XbGIFsDKpwl1Zu5HVbSReiYiiYNSmJMTJerjZ2RnGNOfjeXB4vJDhZd76q65Qx7/rzC0RFQYYj/Ft84j+4veHKJNwoyEGmgBM9av3Go1j4ST3s2yyDpsFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tv/HI8oC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tv/HI8oC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3701C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752284993;
	bh=N5/RlWb1eK66OSiP2smJMvFk4D/lTke2Q+XV6KuK++8=;
	h=To:Subject:From:Date:From;
	b=Tv/HI8oCD6kcsq+24SfIHtdTuWwYHAUgLuchyb0xyNQGzlP/nfuwuhuuEfjCD2wwc
	 +GZgzKzIxmnj4Uxst4m4E0T5XAtvN4JXIcAle5inrfSKDRS/c9gm/xr44yLkJesBEU
	 HNNzJmqNLaHqEOn6ryRc9HfHIUYbbM/G9rleh5j/pg/5HoUowiMWK5Qjdz/+c+LMPE
	 NMj7nPjSVkHCcvpD2KwzNx/6JDsZ/xNskfaNkoQGuOdErKCxrZyzA+6bMfS3fTlwVD
	 tBK84WYO89n5LmKNhUb2yLlO6rgUlOA6N7pnfGQI+TQhoB7UDyTVFESlpCLDgEAfJt
	 At3U2u2gFwMnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920A6C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228499357.17153.2848949804084230413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a32d09a80f749eb7644952dbd2228172e76a4fc89a731cc7adef7cba011b861
Date: Sat, 12 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752284993
