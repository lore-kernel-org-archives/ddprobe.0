Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E51122370A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790133634; cv=none; b=bn0la5YHI9DxT3RC/Oqj5VZmSBLj0+fI/mjv1p4qtNcjxm4++cChhgQgfaOIKQlFTpMPVtH7bOqik/CB3rnxC+yq+5cpTPTQmmV+Jfu6mEhnjg/lqfKwtHS9hcqekrtzxBI/VB7G5p2zRuREHyElV7Ptez3TN8oK4VJyCQvQRbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790133634; c=relaxed/simple;
	bh=JPH8jwHD8oxLggv9xS1mScTwaRDoXthAjccrFK50o9c=;
	h=To:Subject:From:Message-Id:Date; b=GsGJTHQFK+SMH4FpgTkNvTuFlo5djkWI/cK99tI3g2m4icIbnLMZBEPV6Nyq+xHza457Kg7zv8A6SnAsyapoZLswJM9kup6T7P2S5TecOQ++bW9L0I7p7yym7FxARC2nRNy2sTQIxSV0uA7aQHrX6nzPQDVVaSuHcVYsL2dsUug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osIMsEg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osIMsEg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29B8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790133633;
	bh=JPH8jwHD8oxLggv9xS1mScTwaRDoXthAjccrFK50o9c=;
	h=To:Subject:From:Date:From;
	b=osIMsEg+3u7Szf5BgpxCIkH4YdQH4y8mQr7uevhx6ymdLiCY5FPlL2ASCeH7mRys5
	 T2X8+iq7s+9xY0vQLOdxj8xOnXQpcRDwWpnBWEpRviWg6EMtPZ8AjhKlWBGoSzHRlO
	 OyEKGWagQCmUjM4eWFVdFtu+lcT6tGOxD84Tp6LQOy2m4TvjFaf/ou1923Z3yxd8++
	 boJadKz7S6ok8ozHSDmjeGsdUB4QPeb8cMW3DWDV9c/wXFFPbOGfVs9brUseZYN7mX
	 UAVuABST1Hty5D8oO5hKE1z68STyuLIm/x4N+JrYMdZReMO+/Zo/EkiZ4i5pLmm0EX
	 jRjXedjBhUjlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC33CC982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013363375.25235.13253379950874464506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0664ae6714757410b0796814b53221675e03ed21e04b64e0af57fc82ac583e97
Date: Wed, 23 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790133633
