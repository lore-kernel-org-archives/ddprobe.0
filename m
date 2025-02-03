Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E6F201258
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738607154; cv=none; b=Ma6dF7HUcDK4p8gPQynwjA/S8lFLcEhUSGAKe4KgupCgQ5PQBxP/kxYBpQxFXBdRN/EJfjjErMqYBcXdCuqYOneoB3CKS279BgmRH2SdcjW8XomkGoK/MpUfPOrJotGj+RIZ9vbFyCjPm1yK9NVDonjlHoO95TmiyKeEbHKXtYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738607154; c=relaxed/simple;
	bh=ROBs0F5LB/r1CW+RYNvZ19xPjP7TDxVS3G9XbQHuSLg=;
	h=To:Subject:From:Message-Id:Date; b=iUhDbBs7RO40nWP/69/aomOBsgsZqej4ZOGumNWWE9z9KMWMb5P+s/GuzlRqcI02pZTiBcEhv8QX88wbX5QFVQxiPeyRsHZsSzyAMcp5HeiWyRtlx/+R2PoOGy1B9nCXtCRmHib6yZnrs5N4zX+KjX69bo7mCfnoIzUx3oiR5bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPS95nB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPS95nB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B100DC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738607153;
	bh=ROBs0F5LB/r1CW+RYNvZ19xPjP7TDxVS3G9XbQHuSLg=;
	h=To:Subject:From:Date:From;
	b=HPS95nB6T192PK0mJ8DOXJQ3n7M4qOvoPl7UJXn6TyKqzkAlQph/yqMJ8j+sJUpvT
	 iOuebHutdA5OTc3Uuv9ERh3g8T2CKsM3339R7IjW83+tc6fK+WBFjFZ7cngaLKKZOb
	 RvSo8qtkhzoUmWNPQBsdQQljva9LHvKwCFIbNjRT12RqlBXpwd9ifMCl3l2tb+xBrw
	 6AJzakgEK7xNlRceCtkvchya7cj+2bcQkOqLqwKByg+0ZMetZv4G7/CcDFRGET2S3K
	 5A4ll2vGLnfs+tD+yGFvy2P6jq/75puAaP29dYaaDJeDSKHgN7yyNqGkec+LloiTRt
	 5t6nCoEG7k97A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BFCC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173860715359.3868.3135472638051860809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bab50da69a874c66ff6a52febe665bb67225317a1a3b1f0f788270043208a37
Date: Mon, 03 Feb 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738607153
