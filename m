Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592B51B4F0A
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792305634; cv=none; b=Wiq2o790OCb0wHZAyrTfaZ4A/zHZwn9dpmCW4mLElUyNsiujy7pU6NPp89Emhgzf+AGMO02dUEFtAlqHaatKh0qE5cT3+rWxFX+RBEXS+K/R1mWU7CPdQ8Ei+5lG2lq+0Ivvt5Lo/9aaRMxKlM2tT3ahFSKXsB3J+eHBy5bKiIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792305634; c=relaxed/simple;
	bh=mPVYqyWv6FBtFWLQYO3fY7Oz4tITeIwBnjczqZZSiOw=;
	h=To:Subject:From:Message-Id:Date; b=MG6SnGjb+56EjWxNfDpuxlbOnGzeBgrUJ2FR7HghXm22akPmLlusyVQSXVutCIT6uZlC4O/z2yi6jj/WkEP88nYZz1IJLIhkm1ky/da23cL+nAw6AfVdB1wCWjiE26Cf/WdjyONMkslkKRkbq3TM8WlRUA7AQhgPVPsuEs8akak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFs7MYH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFs7MYH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30FEC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792305633;
	bh=mPVYqyWv6FBtFWLQYO3fY7Oz4tITeIwBnjczqZZSiOw=;
	h=To:Subject:From:Date:From;
	b=QFs7MYH0hI4EaJ/vYYg97UypFo3WZYL/TdDP4+P++o/01XHpH7gtfxukU6igw3JVg
	 c7bbOCbGJjTQBcLsj0YpvM9D1ON+xgw5kiqvFTgkv1nGmI3wlZiwUZ8P+MwtJhyd6M
	 IlpjCtKgt/QxPnZq6OtK6H+0hNoCVVlrW4jlpObSIV0Gynuh/CxX2e+jDxbn8r5Yk0
	 iBotRRRWZfEYS4w7mU3O3e+rp4dNcEoced6kn7sCLsBipwTvdOgBdhbXzaYVfJZ8uW
	 WMAzjHeFRNIEVrTe2ZLRj5RLvu+zOgbScQPHyca0n1AkVeI7acKtZPFRPOlV0CdXs1
	 RepvgGT5o3Qjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA720CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230563368.25285.9441557397327209576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c5daf5b0a4e378598339bea0ef6768cb4c964d531818ff20127edb6aab573b
Date: Sun, 18 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792305633
