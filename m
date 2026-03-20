Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE5B2D0C79
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774007094; cv=none; b=k2UHmFOKOHdQLxRknV9j/aPTmueHu9eZjaWuxumfrJMlTQL2PTGX75q4DyTfjrjFV1b5FjGuzqk9aIfQLUT6mT5yYT9Ek34Yo8u1g1ewBsOmjrUTb8OOfgA6SR43GH5OIcSJvCJCX+fgUfT/ijkvA/CC7D44QxUozp2kd49+z9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774007094; c=relaxed/simple;
	bh=yFPFB18i90Ri9ZvO8X7tJWVgmy7Gjxojf/cULqGmvPU=;
	h=To:Subject:From:Message-Id:Date; b=sQYMv//7GaT99jszERSimmUCeYXdDIUr/gEvR4vGUE47IcZa4FBJhgzkEVFy8KayP1zIw07HAfUhb8IyvqwEG7VMrbZEf/YpOa5UnD28YMfTxhWPdxF3oXuuHxxZc2CjNelkH6Uxu+LP/FJ0gWtKx0X8HcKIpxocm4sF4VQ42L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kquhTM4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kquhTM4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4FDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774007093;
	bh=yFPFB18i90Ri9ZvO8X7tJWVgmy7Gjxojf/cULqGmvPU=;
	h=To:Subject:From:Date:From;
	b=kquhTM4IiCn5Ohw4RqLwkx0wdcbOO4FG3qHOPPXKtEn2ahkcsKNYTSPp6HuMEbZvr
	 ggjh9+N0OrI5T+CAiEkv2Tp7O4s/k9LwMj8RUZxg5U2EHqiYMZ8wAdigz5vt5m1zMu
	 Mi/5FyjQt81de8M36Qnm+Df4Yyh+d0f0aqazutTkEYm/oBzXAc4SvezryPzPVVSzvP
	 OnH3fKDc3Wys7dl1K+4zYrRxMnN+xVzkxTyFnVdiwf2KGNtd5eTW/ifg2gJpkXspKc
	 KNbGHcoabLS7jgjPu8BfIa/aw/AjjYinYYvphT5jZJjYH/NBkOTJCBvoYSLg1BqvOC
	 /EqvrdyfjW+RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22F108B904
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400709357.16377.850411009924196668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35196f94b80f78bb302594697810553e24c92bb36902f938941549c8a77a342
Date: Fri, 20 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774007093
