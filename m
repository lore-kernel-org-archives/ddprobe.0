Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258F32309B2
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754296794; cv=none; b=j9PWWQ/+1skgBlEZLH1TFwsAoX4vD4hQLR7F6eh7FGOlQ9HO5+vBJYUHhq089lwt5nb2YzBUw1yJq/xeefQbj/1v1Q2ZXypx+a8CT1S2B04p59WU1rsvCkITk8UERCSa5GfPIEUn8oTpWkZayJMHeLtKuDrnJHSixkbrKlT1xIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754296794; c=relaxed/simple;
	bh=85vforWOh/5oPBPpjvsF7J0mxR0XfhXZ9uZNySyrcno=;
	h=To:Subject:From:Message-Id:Date; b=U3H2etEuPiMFvkVP3UjviHPXz3fS9mSLhlbEaCx2gQDWK3MWtLu2eRVo4qNOFRipShj3EOuwFVPFdNcRaEPrbYzJJwbgx2Lr7mZkd8XSJF6KM7PQUP5UNYLeMqB82Z+1XQAvya+UCCNK+HX8KVcenX2Xd8/uTxbrUbA41EfiJ8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNYJI/Y5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNYJI/Y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D38BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754296793;
	bh=85vforWOh/5oPBPpjvsF7J0mxR0XfhXZ9uZNySyrcno=;
	h=To:Subject:From:Date:From;
	b=MNYJI/Y58zB5/ivRXN7q0Tfar3GqPIPT9lr12ge1H/Tj2+Zhh2+Y3WHtuf3fjSgrN
	 GSCbeFVozx3ZyIIJGYkXQ1+J8n5DgAS79KmQZ3Fmfl1Y7zhJSB2Vjt007TBUirL3G0
	 uLPFccd4pnsKlJy+ix9vK9GT5Q4VERpVzodTtDPdOPgi3ki82vPsOn/u64TYRJFaA/
	 LGmiUZV+yf0Q7N1yt4VhlXNg8Zwg/c4k5lYvrh7mb2xYZ3OO66YxCHu/f4+bvTUGzu
	 y9jhY7mv+Rngur4A0lbUtS8ON3KFza5tyYukZakgQAn9zS/3xXqI+BsKnK/E8zQ/CG
	 V/bTulxX+n2cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1AC87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429679358.32669.13891776814394596865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8218aed4d483d7e4ea723f0ef1721a3357d806780b35f0cd3d31d598743294b9
Date: Mon, 04 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754296793
