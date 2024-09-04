Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397BD12BEBB
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 18:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725474355; cv=none; b=CmZVa16Hy1WOHnaUnO2QJbpJj5CShnnfz48BM/wJ6/fYY024It1h3U2VgSJ7uQfWkvXXkUiaiQqIZXrM+un9wj3YHYI8VYckloCaawVZBXPuZ0CwPX1WskbzdzLkelKTqi9xhHOVd1qO7//QJ0d8SIlnYxh9zk+lGEQqhHwVoPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725474355; c=relaxed/simple;
	bh=o1mKBLjyapCqO25uVaS9+qKKLtYybIyZ98C6M/C+Gfs=;
	h=To:Subject:From:Message-Id:Date; b=qkR7tx++pxdVKE1CjTK4YzzaPOGAzz86/aLArZet7wvukf7oqd1xCJbk6IT1At50gJuDyHm+9zZj/oBtIYRk43OzLvFmNw2REPJlkPtYLrEh3d10CWsF3Wt2dNaG31z6/HqmVR+2FJx6FhDWII4JLbrNFIxEVOUg2HNU1k4r/v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfJ717Jg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfJ717Jg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01E3C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725474354;
	bh=o1mKBLjyapCqO25uVaS9+qKKLtYybIyZ98C6M/C+Gfs=;
	h=To:Subject:From:Date:From;
	b=QfJ717JgCP9MccjbSg+cjVtxxUNRGpN/qpWBPVQcVJPzUXsvv8eMz+GMNFaYTXncc
	 +vjhB5gKC9jlktgHGBRnW7jcL+bLAShpz95Jd1Asy7c/F8zyg8HF+on9xIIAWZvwdU
	 NJs6gH6hERC0sfiaxPZ0g3J+TfecwxmyqqzJ7hGE8ljO43xoWywpt29h0eG9MVZspz
	 cKMfDzOjw9I94GRDOIEp4gN8M7VdP7CA5MItzyn7x/Ccq0ZYF/nfvsJgk1vMx9i6hG
	 sY0cWlAwSZ7lPyvZRstYRGP02BY62Sg/xsZiEizk1oN4k5Z5aAdWKIdrukEyt/kWR1
	 ipGDUnlAjGzwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C93CCD4847
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172547435359.17292.17749682499289408833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169d5b699fcacf6ac9f7f7c44f64f8a78c69d1b417d9b859ce79fdf00fe9dc47
Date: Wed, 04 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725474353
