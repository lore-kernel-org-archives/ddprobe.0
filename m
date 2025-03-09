Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CEA17A319
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741514934; cv=none; b=XUNtcqf7TejSBAY91MyR67qM1V5TiKamW9WDwUs9RUQkSNAbzd1JwMR8p3gIYqq4S4L9VOVC4pCvlGyEAh9c7lSKHu3gOADoXoerIMWY84mOCrGbM7SOTUP9yNJhEtVz0drOypUeBaak+IS9bk9QgQkfAiZkRtTkmm9wwmGN1PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741514934; c=relaxed/simple;
	bh=zK48pX2k7cjsJwO0dO/tq87Rs6veuIvyG5nAzsgIomI=;
	h=To:Subject:From:Message-Id:Date; b=lzggL0IWVJ5eZ56degiWFcg/amnWJdymkjUCGvCKKqgOOCiHWlMI2XUNCjvNX2kPhez+2dGtaMUqgZkVSWAr+TKfQDRceS0TUXCH5wHDpbsHPkIDJMNXyHeq62X4w6mzii0j2cC4RTlsHarDVz659T5WSSEYYs86foquWhE6rWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fs7tcMLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fs7tcMLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F7AC4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741514933;
	bh=zK48pX2k7cjsJwO0dO/tq87Rs6veuIvyG5nAzsgIomI=;
	h=To:Subject:From:Date:From;
	b=Fs7tcMLgn45owwhs2YxjzenoXMt73T1vIYYpKG8+gkcjBVe3PcucZ5nqFrusrbs7p
	 HSQsbIJDpH0HMikyCEyxPVjXykQdMuCqLqM6i+tFgJ7LBCnRDvILj3BzeRboWPbHRe
	 /oyzqlMrpyFo/T7MeKLSKU+TJOzCpKycoWEj9YVYTq1RHaiwZvysj2jEUcLi0e+cHL
	 zwuXx+zwuVKuEqKG5DM+1zNplO73V8wBgzBqnqjUAgeApmH2O/wTZmC5nKWAi9h5hb
	 WzfcdBzyZp6VoaPigGZwlWM+rYN+0CJReBi6ykFr9d6PicagVuWMf41A2UY5x3O14K
	 Hz3Q2CkagpEew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94392C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151493358.31442.11747369093372845882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e4ac71cf81df4c4720ae54b68a5ed46a9b1d279f18c7941eedf83078bf68c3
Date: Sun, 09 Mar 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741514933
