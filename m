Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F014594A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765411974; cv=none; b=bBUKaGnzy5rSOOEpzUYociOGMBxQ6aH2qVn1IVHV2j3DNxIHMVzz1doMiHsqXVmcp5Fdrr6/wrzHrO9jFDzPZPI+cAPvu41oCr+06AcRNKx7n5JSdFB5ncjVyjzuhLB4RCs4/WOEJNgNnk4GiwuSKBG/SZajbLDb8NBQwzw+Cs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765411974; c=relaxed/simple;
	bh=dRtltPucyayQzGEd+l0YmLCQVfvpMCn/j66978D5KbQ=;
	h=To:Subject:From:Message-Id:Date; b=Hc66gXQ1hthoe7vZMN3npvrJ1zW9WNc4PdXl1l2H6XtEMkxUDBcRWk9JQIdrgtQpvOPTuXVY3zUknnUIQ1lnTWZr1SN+ZB+70ZAXtGSkRJVuzXZRavroWlCfABHJxWcas8LJYxs08K/QvR68C8TapHCHaWnbZKxKfqudg29sjoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmFLT509; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmFLT509"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFEAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765411973;
	bh=dRtltPucyayQzGEd+l0YmLCQVfvpMCn/j66978D5KbQ=;
	h=To:Subject:From:Date:From;
	b=QmFLT5093wZYg8y6vPqvfgV0GnA/WBC+rfME4Dq22809sAug0qkjo6XMdMZs3O3fB
	 PuBC6s+XffNiYKULNJf4gEAMv3L5U7ejfasusfLSLianO1BDNPoumRgbx+bEpAEbnU
	 RLrpP2OHs7ksVGzTf1kqegQvJW/k6beIhFCm0Itn5FMct4ZzVOzzh3kNnkj41hsDdz
	 5l+pP0WC/mbchCoikMNA/ceqDdpJKARaMc85LpV5BrnLc5C5bkBzNdoOPwZucIwrkw
	 Rc5BQDWK8USivSqWw04FN+jLtMo1/qluQiMpNs89oGVrR2yC2jYoBP5CtYSHfgEBRu
	 gfNuI+GqrmF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A88ED3C932
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541197359.25500.9924634734421658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34976674b4e831b64834b4ce1cb4a87c49ccfeabe3738ca08b76559c82736ad1
Date: Thu, 11 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765411973
