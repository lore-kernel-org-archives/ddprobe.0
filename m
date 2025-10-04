Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC4924C68B
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759543194; cv=none; b=AetYnmpoAKhLs5XRo0mnsC1Sif/ejhxRxubCi6uCquu5IlcaRZ3qiAhj2XoEO8Mn5kBrJEcqKwdYlveHFof8h0h85HmvtCwRybzR1iHiaN1VpJ0uO21aYjHbE/+REc1H8Otz8z19QEZ+TBwEgoHclYsXTJVF9kdnxFa9t5SMhsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759543194; c=relaxed/simple;
	bh=6OuC8hzV7uBaWfeFxX3l0m1HFf08EKwpwUVt/enhGvc=;
	h=To:Subject:From:Message-Id:Date; b=NUZCI9LzRk3Mtjrs/3icSnkACG2+obIsuQpQd0pQ0vxUU1uuJ/hreYPo09SOychAN8P4ZDKqPHMWD3OlWKmKMjvvB/J7WWmOkJlLWPnalIquNyilIUPp+v6K9B3yx25LvKiTVJypgWSXAV9JJraauzj5ZoUzzYZ1aJHy1aaRFKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moCMjzgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moCMjzgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C3C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759543193;
	bh=6OuC8hzV7uBaWfeFxX3l0m1HFf08EKwpwUVt/enhGvc=;
	h=To:Subject:From:Date:From;
	b=moCMjzgIF4AHpsNkqlQOcZBBRpglodJGar9PtqBPITJqOaM5ShV6eQYWIkKgRzgvc
	 2UzKvHPYu7hnBD537tOl+eFapM+z7I2PHgpw2wURJcgiF+NA8ysC4d4W13S8hPaoQq
	 1MkMxOTfgtMw1Xi9YOlw4ifBJ55p9kHnOqVzL6f5XczVXTu46h8lAMiweYhrUGwNgH
	 vLDF06OGN5X4PZDrM/NhdTEm5rLdtXxAu1QDkFnN0JyEKD3vTKozoUTlIJLpj3Zwu0
	 9UwnMur3pb869M40llT90RLKIINbFfuwLuorikYddUENdfIWTGspNYryd2c/gJ9/I0
	 0JhNXz1ZtAeUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED09CCA471
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954319357.20240.12339855869220735751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310e448d59cd33992f3b9e341c7d0dce9d1c7311f25f725da68617d4896bf6ad
Date: Sat, 04 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759543193
