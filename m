Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB17632
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776497254; cv=none; b=KJ1yvQYo/2AlHpGJurGK8Jdrzl8SaAaFX9UkOHrwNLDXdDKldVaJ09W4nApSbkkRACMsnLZGvMoDDLaM0CPKTA1TxZPhk4VF8kU1oeXEdcKusUNy13cAoWN3RtVWcuyv0Xrp6z0hfamKB5TLidbhxgiUeaiYsOiE5bvrDEyWU6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776497254; c=relaxed/simple;
	bh=SAJYjNbc9YUyKD15eVWwM5XZ2HM0zRX7/PdgWqwZS98=;
	h=To:Subject:From:Message-Id:Date; b=kyQuuQlcSK4UHBNgKccAEVyExyywapEzbU9Qrdu6LO7z8W6MMNT91ZV2AKCztBdvICbRR7mrGfA6KnenXPg+xuUUnvThETeMkwbTU53BRSDAcHGeux/MvxjLqzAs8sbVx2i8rreurr8tkXVqO9vay7YmD5xxR4FpIXh3Rd0SjTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHfylSBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHfylSBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE1AC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776497253;
	bh=SAJYjNbc9YUyKD15eVWwM5XZ2HM0zRX7/PdgWqwZS98=;
	h=To:Subject:From:Date:From;
	b=MHfylSBczc/nBcQGFeedaauJ1HNtwOrEHPB2axscjDESzC/jHR9cRu2eeHYJmDo6j
	 E2ZIh9KVDLX80yjMaCbPVqO0FEcD0hZ5TKELBAEhT3kX2RCUPHF5jP140Y57yp02ai
	 lwXhkZ21yeM+KGYFrZAv7h2kTAYpAcq1v0+j1CirwZJqXRpu53vLe6zgoq4/nrH2R+
	 aVxBuX8fW1a6VgX0PhgbdAZEP3y0SMRNuLxjcEIlmZZwY9TQZUcvxxq/7/na6UlnHD
	 mQIHbQxAqwd3Ge9/ZUgurKID5SepeS41pcuBgC6Rwt4ttlO4og7Y84SOVgETVOfjt2
	 xi9qXTuxlRnHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2D2F8E4A3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649725368.16385.8556791310172575074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f72a9964a57da1d21f64622f6ede11f4e8b5446c6c33f2d226367e0610d774a
Date: Sat, 18 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776497253
