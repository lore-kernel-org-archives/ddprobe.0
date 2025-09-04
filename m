Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9DB2750F0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757018996; cv=none; b=hxTN40uM92r4Bv9hl4Cd9mimaHCnIOHxfMpaslk5SdRNnHdkkwSRHYbSBRe76t0fQLXzQdhD8KCk6MRBeUsg05FWRrdaaTcIMpkw9HyP0MlqT97D1kiXJuEjkfRP3h/C+ajmQT2kckeg4hPtucisFhlho1OfdQH+eow/V1ugzVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757018996; c=relaxed/simple;
	bh=KmArfZy7Gy7ZdqObj+0USw6Uydk377IlNIMrCHOJHBU=;
	h=To:Subject:From:Message-Id:Date; b=Qxrx5qUbK09/JDnvNcJZbSfaXEywqxwfFtBmcicP3MmSxyd0E1xegrQTVo9PuN4DS0imMiqUvpKIr6Iyxbo1YHx1rjsfKo6+77uSbICTqwSoctDEcrJJ7Ha1+PTri4/QHybYFqZZeJnpOTdzsulikdjnYGnprFeK9yW1K054rF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCye9mJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCye9mJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF07C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757018993;
	bh=KmArfZy7Gy7ZdqObj+0USw6Uydk377IlNIMrCHOJHBU=;
	h=To:Subject:From:Date:From;
	b=bCye9mJkZB4GZ8SJHep4hsFurRLYG8UtzBvRdVl0U87ulQY0HaXHQvJyX1IZYKokA
	 ypc1YP7aEzkTD3G8HJL5kxs7E9ss1galBsMK5DzLLYmnY6HevrxgJomim8YaBTx+gS
	 VyganN81RiBRIasgWeIjbag0BSiMT5+zibWWtELV0AYT8mH1DIhvxJpcBffcSwenJF
	 UGayKufWTqdYnXZ2ebh+p8mIXfYJRi9plGQPAf1L6jd3hdzP8coRfwI8ux0gbyfG/G
	 pGzT7gJbbKYx0Yb2RNg/DlYWESvR7/wO1S59TsDoHayh0yBeIs/18t6F3rZIGVdaTQ
	 QsvNs1xf6HY1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8ACA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701899358.5437.5294314654419451349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b813b6d08d5b71a3b0a3ed24a73e320a245cec21ebca563557ae464fb7c3127e
Date: Thu, 04 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757018993
