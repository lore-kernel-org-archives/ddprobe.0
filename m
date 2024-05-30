Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7431761BC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717070063; cv=none; b=N/D6+QtUKelY9LgX+f/bruWQzCcxVgT28XyF2Rg+qn2Dj8CCJUp3LxOtfJqn24rq8JsqhAkMFVO/ARsE4QR5kAzLsV82y5zdq68Baho2lpnCSbnSMmE/f9flwHxR2sIx+zTseAtZeaIljAjzE67LQB+wpCw32g//EmF4+k3Np/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717070063; c=relaxed/simple;
	bh=KK928LNhnPjNiq+m7Qqsav1VWJtVKZVPB/vi8ykTQZA=;
	h=To:Subject:From:Message-Id:Date; b=qGlSAFVoMKrVZW2BZItnBUdFCBjERY0lwB6JIeuKqZj04uqoZ5tDPClKQIjh1hcN3/ugrCKgb2TFUNhm2H/JNQTxYR+JT0o8fbmHYEZ5FuN3t2WR85DQJCd1+dd2MvYKLGAVRomuQHzHRu/WYm668rGgNVNZPa0bMJof5dpLOKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ab5JAy32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab5JAy32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0972C32786
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717070062;
	bh=KK928LNhnPjNiq+m7Qqsav1VWJtVKZVPB/vi8ykTQZA=;
	h=To:Subject:From:Date:From;
	b=ab5JAy32mcHdbefxXa1j+9qY71ziovFy3hkwHv1lOUp+k2yWtKBnSmfpZuX6kSEuu
	 wkh9awPeFwvfVwrchZyFU/yHxGj0apz1TIC716ADgEq/U9FA6okmjB0+lAdZ4wgaAE
	 9RePpSiikGR7nNn/04zQW/DateDhFb2iyqc2Z5eGStsRfF0eXqNJeym4rDFgPREmR6
	 owYmWLkUBtbuhEQhlCzv/s/YhJOMW9T+8fjKEBp+/4uvHBzTxt3EgWx+npi7ZQkwHS
	 ePdLw8caECFbcRWFpF8+h5rOrJXe1DztzemX0SxdQIOxDyXyqiVxMJh6YihlqPp755
	 Q6V0JAkNRYT4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD389C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707006276.26647.17871939699243032353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905ea76f9bd784ec9d292b8852ca35d24377e2ae4193c56dab5951887c5b1957
Date: Thu, 30 May 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717070062
