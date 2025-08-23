Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF74137C52
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755976794; cv=none; b=aUrhk11JjOsMEGNqC+wQFzYaYO5UAe5n6XEg1LOaMYXg+uMSpwRgLcEPBvixzVw7X/B8w8VJRBc12bGoEyhaFTmnnYxy+CHfCIWrYAl7xSEA18CFxJZmhSvZxTnRXTFk7JG05nqSVSh9F+520eqmVzdmWu/TtA5FoR3LBQOCBk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755976794; c=relaxed/simple;
	bh=Hn5mXANCa/DrkMZ48VUCnFB60lRiOczc2lpBTwzTxlU=;
	h=To:Subject:From:Message-Id:Date; b=PZkf2j+dL9dyFj9Y6+UjkfUG+Cft0FOZdQYdiZuEsN6zst5uskdtszQ3sc3VuBCD6TU35f8eESs+Dp7reQMYhCVAjGiOK1j485C0tnrbdNHDVNd7esaqMQU4eRLpHQcBExSSAqUBq1orjHR7Hie1GIMD4xrHW9agndVRAUvuEI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuNCgwjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuNCgwjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF75C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755976793;
	bh=Hn5mXANCa/DrkMZ48VUCnFB60lRiOczc2lpBTwzTxlU=;
	h=To:Subject:From:Date:From;
	b=TuNCgwjqKXIYSebqlFYaovC+auT2cDYQUJF8HbQJ8KNC4sGauwbFpF//BDuZC9ElX
	 yq7ZbYOM5CcUEUycNdgQNA/znuu2P6PmKlWgJey0QxRVx41ukQOtxEZZhAKCJVMY5N
	 wANB0a/rPYN3qKK2qs3eIj4wQMEUIJM9QBl9+jRvwCRzTVvdBsXwBQtSsgeAeyt96y
	 AgEWikso6hKeFog4JiAOajcURKRn8nNknMAh5/RhaSwUohJP0wH0Eg1DQCMocbae8r
	 WW7Ba6/zezCFwLls6ExVvHlObMegj0o7NOnwAWT5EVX6ABspOtwMKI7dCKiRCDY6us
	 uJfv9O/u3yY9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E25FCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597679357.13482.8256180630796021036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6957f38b8dc7bff7438f15c4eb13e19ce0402cc6d2ff365410e056e067344a05
Date: Sat, 23 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755976793
