Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD291A23B1
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752032994; cv=none; b=BFz8Wl2eplr2OEFDXLlR3176Hd/5CAk9OnSEHROxDRJ471ifBLv+7B/9S14sRpJlUC9vzOSSBTGoqRN9rH7kTbiBx/aPtBz7DEgGlaoRn1/VqQW0FZoRbE10tMRG+DP17rKIMAioxKuv6oI/idfrIozRRFn3QHVl3tNUgQpGrJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752032994; c=relaxed/simple;
	bh=Fs6ed9J/WHm+4JyhgGi1HRY+mebKIsa/Ub+n5ZwXiAc=;
	h=To:Subject:From:Message-Id:Date; b=Q0axETU0FAz5ih/tyN39LuoPOvPhZjSiHEOYv9zBLt6mP95bg1iyzCnrrSxRdOwTeQwIc0PDnn9FMEwwzH4zoDio/4KT4h+J7o7HsvJvRHOtBOgGaCJe3ByzX/kdybI48WUXezFL1XbUtfLm8oTbvleTQuQ2BzjTXjhtxvVs1zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9dvy+yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9dvy+yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74AAC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752032993;
	bh=Fs6ed9J/WHm+4JyhgGi1HRY+mebKIsa/Ub+n5ZwXiAc=;
	h=To:Subject:From:Date:From;
	b=q9dvy+ypVXi1KrKOb0H1DlLxenYk7uZc/gdhrw83dXTaRFOD3t6OYmqz8qkEW8sQj
	 WmCy7aUvdca6OWhadRSgOtIf0cBqsGKwhJfGn7FuyobbXimGRzuIBMt4FAWDsJAUpq
	 6IJ7qzhV1Ze1+WD8sxoy5HMNSBkzMyttV44qTrTqM6MIyAmEM9GsBDt6wkhdeC4OmJ
	 Mp2xDLZEOxDvcmhCbYHgx/Scz0obixu0c4+2W42OkxK92T9mo3J6mu+Jeil5G1Z6gU
	 aatnwFAAfcreHdHzaEtZk0vDHlSs+jMUp+oEO2lkAkSg2f3wbVZBs+0SS/pcA/7E2U
	 e6CC21G55I9Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECFC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203299357.23934.3889670064498065815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2ec26f9ef81e43ce58c405c4dfe6bcd7f2366ae98ce8b6bc8b2734b444e0f1
Date: Wed, 09 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752032993
