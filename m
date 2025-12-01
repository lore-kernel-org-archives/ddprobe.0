Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144AA3321CE
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764611574; cv=none; b=Ku/ShZWYIhZgAGZFVzBwwqsFbbQ42206t4yZh3Vm1jeN0Ed5sgRFuzjweGXcTmOSzbC8KvtTn/1fNGbCH+5U9frnrvkh4B2osXmw4xFsZ9LYGeQMgc1hIEBI9JNCIXM9Fw2KmHAJSOVyoY8Kt7hL2jZrJWjhNBrW/D2lEoCvXtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764611574; c=relaxed/simple;
	bh=fO7eVOPXSQFM+WBU0gaPY3XVydRK9j0lrBB6EdSCnwo=;
	h=To:Subject:From:Message-Id:Date; b=eCI1IuYDjcfLR29icoahA71xcYo9O/atKqEBSxOuKGHRj1CO705ZuzwfvinVK+KG1QF2SLRiCv0MNtVAUDLRgIunTWDis+j1xI2OJ4CeFu8UKHgSlcn5k60mCsiTNzIpLOAD/3LYCvOGV/CaTezWUsjWqn9UFg8fxhqfFbSO10A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtryjKVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtryjKVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7229C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764611573;
	bh=fO7eVOPXSQFM+WBU0gaPY3XVydRK9j0lrBB6EdSCnwo=;
	h=To:Subject:From:Date:From;
	b=ZtryjKVZMUyHnuHsdxcG5i4M/bKvJSG5pB0GZsAlvN4BygqaO6DHrDIwpaCzHDOgd
	 xc+5NvHw8H8REvjFGgMlpYSPc1i0Xqx6Fu/LUHigPcdRbMi3j88IwN6nVJgZHehGI0
	 o0MtYjEeEH7PNqMg79jlgphUda2VGR59LHq2jB4QfxymbAabmypHQd1giPC4kQlQjS
	 G08nOHExJ/Jj4szqpTjsUjRXutEqw8JPeF5YNlnlhf26wzEHXXZ0iZ0cTkJoZhlllE
	 L5rqpGo9TvquSSiXYSv0Lmoi1cCysiUzv2l61RcR0aTcu8ddarCo6RK6oujUcHCfmb
	 qhnnzIOgJA4BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935CAD116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461157359.15870.5230791600413109339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182ce0efddc5de9e20d49726c855423413ae9b99ba22305c461365d5b55bfd6f
Date: Mon, 01 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764611573
