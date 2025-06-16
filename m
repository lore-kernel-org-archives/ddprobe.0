Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A7772607
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750049994; cv=none; b=sbsiDs1n1qTCsLepqRi8HZN7Q4FiWF2TcJymnY0KoNQG5oUEwrOdwFR+dh1ZIDCL27/83kMP0fcVT5ZC0Icc6IdP7I0lzt+iKwq72mRYtTJtVdiwN6cWtHesjrr0D/sTOK14Dz4bLKIBPjdUtbrRCWDk8XPUnriE5HVp/J94MbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750049994; c=relaxed/simple;
	bh=U6uTiTTg8+NYzXHJkGXWeqY7W6cePcWY57Cv7Or7st4=;
	h=To:Subject:From:Message-Id:Date; b=U5yB9TSBhXTudw3F2VpOGNH/QZJdaLrgH1lE+ofWeqMKZfS/sLSzgQPU7Mc2tIX7dhvvoA/WY0+mqBxlhKh2324jBDooDIb/8QaWGchlfDSZifb1mWo1HLqqPh8IypwtmUR+UmS2kruf+j4aXabxtKv+cu9YNChDJT8sFRYdjto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoRGTOCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoRGTOCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB611C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750049993;
	bh=U6uTiTTg8+NYzXHJkGXWeqY7W6cePcWY57Cv7Or7st4=;
	h=To:Subject:From:Date:From;
	b=DoRGTOCYfxNiSo4UABhViu4VaMp7dX75yr8jptjg/bgJhjfwxZTLxLv5quZ0ZyMwg
	 OEowHAVa27GyWAms1f+679QA4YoHlz/txT0A43HEo2axd8v5W9kDSbwkW8t/+sB7P/
	 IcpdIwjRFKvreV2HvxtFNyZaWN736fNbHLlOhtNdm8dD174mXVGEnWk/fU8eOcvJwK
	 kXIzqfdaalBCd2D6bmDVgvgLwntdz5CnPMujfCtSzpIedEuuGxTeYP9xDALmavOAUd
	 gunPnC9/BhIEayS5Zwv9Zhi5Xw//vvuLRqFptEXqnobMwazO60K1Ey7jgcIryhGQxn
	 hg8q9SYesWeMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C31C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004999357.30428.17731048362425065986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ffa0f8224940ff942316d11ae4f463a226721362d3367e12d6fdfff60c59af
Date: Mon, 16 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750049993
