Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D8E175BF
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759520394; cv=none; b=YyD6zpoeHIXLzvYp/G/MAlrYcNN1X9gY0STVuvXfeS1I99blNUvFwy29U/VDj8fjELMEZnOJYFPc+gc4V8/eYwvGUa/aqWk6zF2FSWlsSzAy8cFvrxSWRkWVoxGsKyizJv3kKB/k5AvUuXMwjo7ONccnHgek9WHK7UZQg7RYQvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759520394; c=relaxed/simple;
	bh=ar/L4+2zkztDIT5owazcDM6dFoO9ZxShZTwAhWOKPGY=;
	h=To:Subject:From:Message-Id:Date; b=S6MSuM0mwd5qhXk5nGgs4gGjCKKLeCnGaTh8DQbO0QKz8/5bmKXOipt3UWpH3t74mPV2RYCzHQXI1X8qOYnvX9DbkWHpa6He5OIXXEB/TTl1itlEMbTJjXhCHmmjFdCcBey09J9XQDrwmDYkgJ8OjSUU8NCLSdHDAjBxuRgJwu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2UoloSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2UoloSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EB3C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759520393;
	bh=ar/L4+2zkztDIT5owazcDM6dFoO9ZxShZTwAhWOKPGY=;
	h=To:Subject:From:Date:From;
	b=X2UoloSE4Ico+/gPtU5j4UmDpdrXY+H5vlIC7TEZkiM5/o8XjWxv0glvO2CCYLE0l
	 udMbl8K8P7kSoaFOON/7yrX3OfvKuVUwT3nD5i7FpGDYKQaQoRR7TeukfvbzYlU60z
	 FO2H5N1KygV9ymjyzyVftya8APrJZaLKkHP0D2Sz5i65tFgdMC03YILDrfAD4fxWR/
	 /c61Kk2kgSK6o5Y/9IPyCkq3wzfR47sEFJ2kin6oWqThrvoKlqRdo/YmzcblHFIfqd
	 zAWxmFkkSAM/NADjB8RnDLPX7QbagK/dxOVn3cRpYFa1epM58vZh8EUyxSSmkorQ4E
	 YurpKoU9GtyCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD7CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952039358.29633.5288340730564700830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6192c43af04f33faeeab28f883b5da576804749539c7e4b7fbca3eac1f847c3d
Date: Fri, 03 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759520393
