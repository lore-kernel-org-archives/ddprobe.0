Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E76323C4E9
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760084394; cv=none; b=Go9qhruy8xUt0u5HSm9TSW9Ihsn/8imfXOkPvlx45FckSOloqUcGAuKgTQ324EBgm7wT/xFyBAOJmIxUiq48wClYzpHzaTRpBZxA2I5rGNZ8+EqBFDwhm6ItQUu9WYu7NZLREcKr/aVBaEGDwxvlMz9fbc8F8DgUPc82S6j3MJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760084394; c=relaxed/simple;
	bh=vXTCtQi3McxcLuAuP/ypT6Xf8Eq21lUahkYiSBcaQ4I=;
	h=To:Subject:From:Message-Id:Date; b=jIgi3vdEn2XJ4atA+k0XZ4Ma+kNWP4sQkB5cExQylZ/WG/D5qr2OwRSKLlnrDFXgx+p1p+jOdlA+0fjzStDbgEXvRWoJdIaGqveQXRG68oiTfba8Uh4M6y3l3C6evqS+Mt243QOQsv7x2DFK2YR6xW07Lb/yxkaZ5VpshPRklCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGzN2R3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGzN2R3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5C5C4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760084393;
	bh=vXTCtQi3McxcLuAuP/ypT6Xf8Eq21lUahkYiSBcaQ4I=;
	h=To:Subject:From:Date:From;
	b=AGzN2R3ap+SACJnYqVh01qTV/qAhoQmetxSUb8M3mrh/v6AjI0y8NSfUprkX8yjGO
	 3r11Dj4Y9wlxMdrITgUHKHuwQUMFqgjVaxXCFTkncxqoNeKmkBHgdM8gcnAG+qAipP
	 ep8sSGSkurkDVmmCBZ3DK+i4VwFv4BGOL5YCUFzJrEB4MxRIkj7XaiSOh2gFHlHMX+
	 1EoONcDJkWvVYiDp3A92w9sPYH1Le9EEwydjMDMpdSH8Aek9RHN65inf8OTWdeMaZp
	 M0nv0lLBx8ReuPee9diP/TEMMkLym5BNiNSD6djnxC17MBQiIwabANJ92m7Tfj1WLU
	 qNuikNbqidYTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E2CCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008439358.20512.1205651665915789963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59148596f3f4f885b09cea262061648775e038654b0904d6183031471b6bf758
Date: Fri, 10 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760084393
