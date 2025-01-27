Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4769D282EE
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737954354; cv=none; b=PT7cyyOXNP1lY2MdrFpISO76DvZ/2nx2uwODuFYV6pBOo1cNm9+AbrV7RcoCm8OXgb8/Fv4z2sUznmDAWqZ8LGChOXO0G9pEXzFL13mDIhgm8Bc6vAdUaGzt443NLPSDabU9BaUuRoHd1Nb4n9e6utyWEsA+2xycsY2exl2AAu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737954354; c=relaxed/simple;
	bh=exT337P7ZeZMxO1+Y7SL4QSZX8ebslt8FlKgCc76Foo=;
	h=To:Subject:From:Message-Id:Date; b=t9HQDFMWos1k2gaJH62VUsoSYFmQ0WG3oea1T5E5Nmh071/COxRi8aPrdH9twUWbMuENVmmUWcWPwuADzl0fLEADA7em30/NPPvlUtlTpLvILQMcwHPyq5vHJDc08RsG9SbSUkg6EdzieAxq2flHwMkAoZW3vqr6N8wRlNaKOqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ub1wptso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ub1wptso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2BAC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737954353;
	bh=exT337P7ZeZMxO1+Y7SL4QSZX8ebslt8FlKgCc76Foo=;
	h=To:Subject:From:Date:From;
	b=Ub1wptsoXzggq8uQgnwP0A7RHsCmfJBvJAv+m7Z0nF+cdgA7GKVBXAThmAYe/FhQM
	 sF5934/9+A1PUj7DGVgAPC00ognHFxSiN2ROH3bgpKabmeRVPTBDZW4B0vVEncI06U
	 Fa8hdzAeShFciogjC5B5YXGuV/hCAb5sWcJdJmTD8oYuT7ebLos/FTMIXoJvFyEVdS
	 ZaOu57VdqPPjSTgu1vvKQF5lrXlCmxwbmzbtKXpGsxVWwAJF5q6aaAShM9dVyxiA70
	 rJmNFbd4DqXBIKWtPwDoz9HrjtuMbmE8Ldww2ghLFbO7IbkVL3olfXwtIJVzKL3Gik
	 4oYOetceKFQsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B8C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795435357.560.17957859609092659294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c708a081f1fd3ac8e15af65b7c4f176cc04daaeac61f41d7ac9efbfac6f7e8f
Date: Mon, 27 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737954353
