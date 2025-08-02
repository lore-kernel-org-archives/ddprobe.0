Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC061607AB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754158194; cv=none; b=Jtgb2yd7RiSlp9eZ6J/Ix3WdUv3cY8nq4AcaDP2P/aTobRR1FhAGSXm4KecomEpHACArOd9Oo1MHcu8+F9rLxeznYbC+2DSAFMvs2oJJkeaG06KCiw4saUL01hsDSotECtYPZTMxWWH5wEYTMSgE/0PIWq1k1A5eG5ax1rw1X0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754158194; c=relaxed/simple;
	bh=zAA/RXTTEKW7Yk9gchFC/UF1a+LOpO+XcWRsOmFjM8g=;
	h=To:Subject:From:Message-Id:Date; b=H8557okIY/CRf9Dq1Eg14RLoOXPDnXxDEwIQqjZKIt3HvgVjhDzIkpQBJsz3D+tBLXvUBGHtKbFJpg+ybrymXlBbLe2LNlas6Nu42hLRk9AiWcdV7zgsnC040kt6SzacwgPYvjKeVYW6F02x3FxJlJVFIvZ7pFGjhFyJVB3kjiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9uBhpxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9uBhpxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A893EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754158193;
	bh=zAA/RXTTEKW7Yk9gchFC/UF1a+LOpO+XcWRsOmFjM8g=;
	h=To:Subject:From:Date:From;
	b=H9uBhpxkmIwDMrV3Fs6DfNSTY6a5Pl7QStcEWoTNoh0JUxgEVDbcoeM8xZbj22U3C
	 Df+WFAS5uXXZJq3ZdfUYdXw+lUdUdyEjdcPua8CZNQhDf86AYkASoqmqEdCfYCu4CB
	 psV7EnVlT9f55uiRxWkbuIB1jHeygI/0GM5EPoKZq3D0jGSDOjutb/N5SrVFqHM+Rc
	 jzRljRY+twcmfQu0ns54DhgAplcVoO95jacBkysC8K7xXEZfCx7+Nj/b2MkGU3Kbnt
	 8cn6FcmvgMSrTABOArawvNOevHaxseaHe1wdzJsIV71GscMdhcEk93OSwWjIGqLItF
	 snxRFDFZRoe+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C35C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415819358.25401.12278749919562520071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b85549a52922600cf0a53b69d9b5b2f0d898cf1b951296e846595f2d727bfc
Date: Sat, 02 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754158193
