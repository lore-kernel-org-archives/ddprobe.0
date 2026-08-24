Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504B11A6824
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787577034; cv=none; b=oysQebn8IwNR3D2GODn28mtsVxNa8QlyCEBGlnVu0ZYJvh4cCqxirnmt0399ecRrAJWjFR3I18ZExjRspYm0ujMsjyVsVwxGfny35J6MdOUSg1lT5Egc7swCOheioj0Ev9iyXXCltqPtz4S1199VbDuq6vqRvxSIk1e+ao0XGUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787577034; c=relaxed/simple;
	bh=mBWwtAuF8e7QIfbP8NEXec/0Yrk+l+DDeMzJq4wW4jw=;
	h=To:Subject:From:Message-Id:Date; b=PHFf5UuK2oG00MZYzcIMTpVrzguEzHwfrOXGUlG4+M8Q2dvPyvmOdZitrVtNXbQrjpwvxchUzAsUlljuFxqHNVkgfz9IEt6pbpvTmgbAdSzqKgXS5a7xyyDBCeAg7Y1lpBBfvYITWCjF/reXfjfq0HD3aGZ6SVH3SdNYR8ofuis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZhuVKF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZhuVKF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB42C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787577033;
	bh=mBWwtAuF8e7QIfbP8NEXec/0Yrk+l+DDeMzJq4wW4jw=;
	h=To:Subject:From:Date:From;
	b=XZhuVKF0osW4cIcVJu93noqhQ50zXAsqJKLiUXCpAvyAIXS3oDkRxv0dEDPTm+ZWY
	 vkW8GyqFigXG1eR+22m4TZxoyovvjIUmSMp/eMHgKDJKi0pOUiwK+7q4pFAy2ELrMz
	 q0LJHoyeJrEk/efjEuWZP3lFUlFqWdDs6KDte7SEJ0XfalmHafc7GObnjheBJ1N7K2
	 SM/qkzYxHZ6h8Ovvd62t22s2ZsmdIUyKaKaiuED9h9Y9TedamvmEt5jxhuIlHCpp8C
	 YHFE8unWBHciuE+mgfgSwgT+4Flny8HWS91BvZQTXzVuiCvPnTI9joKro/xNhqRRyG
	 38vIPUBitVheA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB51C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757703368.22063.3398438749518410763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8187f969b1e4a089f4388473439086bd9ce40a254464835c84bde52d6f0c62d
Date: Mon, 24 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787577033
