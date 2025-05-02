Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352B91D554
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746151195; cv=none; b=qmKLkg0/OoHAgupn5Qh1369pUBomtrPMA/4U5bTiWT3+IZhqXyVs/9Bbq1W/2EMQ07quab5XbPltt51ly3+yJNQO2BXS/yogCIDYp3e1AzW6dU0LWpLUdjkxviqiKNB/Xcc5P0dwPhFAU2meaBqR/ysFwYFNfG8azvHg/wOAdbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746151195; c=relaxed/simple;
	bh=gujY+5hIBqplE+79K2AmescojEQ4cIk1X6WetKkkwYg=;
	h=To:Subject:From:Message-Id:Date; b=HvWOamZ6kcqTkWL5iXseiiXVhC7ZYT+/J++5Du+HOj+zfRaNPZTQI2S8/oMZQyvcrKC+D8xF7DkgCi5K6slglKBlyTvxS4SjJIrzJoyz4E0MVdzhCa/3PGUAXUNXoK4jSwN4gTrKb3i0cRiHHNpCbMct63lm9m5Q9ma0Fz2T7uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZMZ+NB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZMZ+NB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DBAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746151193;
	bh=gujY+5hIBqplE+79K2AmescojEQ4cIk1X6WetKkkwYg=;
	h=To:Subject:From:Date:From;
	b=IZMZ+NB0b6iqbhxV2nk3K0fBHJvl8Bclrf/2Wv+EQ7My96tJWglqG6c4KDvtsT1lW
	 BlNyvApS1EQpJtE0Mg7w9uxkk+OKgqbZzNgPa3o7Ca9FrNFOv0Dlp6xAF0CGS3igAP
	 M8iqzeigvDcmlhHwI2R1lEB2IOdtipzTct97Uw22RUJcOutuPI37XNe5W7YKzlv7E1
	 +DKdSsb2iynekm73ZYEsurx/dgT9FzHifSdmSbiCPsxKS/mP/Dg/9+J+DZLdlwrmEb
	 neB2Bb/mnv9Nu9a3PPEdDUBeZDsxPXt/ZhmQGmm3kG759GXeI3ReNfq86OeEbhM+/d
	 o04OTmhJWY0+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952D8C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615119358.27190.17354494837034202751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9d11858819da4abd23b3afe24c23ad8201d2f9718229e93a3c382cdbc3247b
Date: Fri, 02 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746151193
