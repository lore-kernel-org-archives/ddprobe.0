Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1F051D524
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788557434; cv=none; b=m8DF5IQP+pmmVj3fDNA9NLTDdTWLAfqCuNlg2hvDp6BoLoCjnGzoa9fTjOBnGtbGuVZgipLVR/h86Wdop4OLJFZRGVytiCgcC+VeGGmUp6pn/FmHelT0HwXBoD+st2bqC8CE195Tr0zrM3id3pvyTSj7qxnHGYluXph5Lh7oMfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788557434; c=relaxed/simple;
	bh=hvSqiuvVL+ojiGlXY/QSHs1qLVNENiQLRS5CNjQyk44=;
	h=To:Subject:From:Message-Id:Date; b=mFLuqu6D9xs4yqbIQI2EOzEaby7rcKIvIpaIyOnal9lwz6XSH0ZVlJ2gmbx8ioK2zxKRTblrD9Dc/trJwG3dBpAYhjhKCjW5QHvY/pxUkq2Qpa0dwoEB68Lpt/nXQhWUctf+qgl8K3BCNXD8kSTQ1IjArXrSP4F6QNJgKrjfT9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNIKbmTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNIKbmTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC10DC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788557433;
	bh=hvSqiuvVL+ojiGlXY/QSHs1qLVNENiQLRS5CNjQyk44=;
	h=To:Subject:From:Date:From;
	b=BNIKbmTRYPRKjLdcGludmlg2zOrNoY5YFpHN7jtgUfZFF4K7e4b+D/9FisiSz3EWu
	 TK9jqCiWCA1ZxBD88U2BDbAKD7BnO4pu4oN7DTyZAyu1g6aVA+yMkPywfCVynWpnOt
	 tRpFGWUIBCrFNuvw4+EZgeitrYAMxw5ivZLjah33xzXF419wLO6/PsZ0LRmhmKoAhu
	 x8HmLn6CVied9Mm8ucSfquJRjA6vGFn3K+uy0ua9Dr/FMyQyom+2Q9XAw3/nFI0qPL
	 YE9H4yJblNqFKFEqoZWPySX2lTD2QP2Yl5LjWheFKh7HnNCRIuYxl3MnV9hxaJsep2
	 9ikWnNCKDF0TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78FEC624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855743371.31885.16696357515013269039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edbf2329c39ead3d839984438f1ff375562f552bc82bc8f180f07492df6015e
Date: Fri, 04 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788557433
