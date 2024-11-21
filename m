Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298D74A02
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732214754; cv=none; b=TJpoDrhA0W1PF5WqtBe5fpDLLRtHoZRE6HNWeqgI0BymMf/zZ3ly2rvCUyoX6LQjoNy9742rjzM58HYZSbZ6UFTOL7chCGmMTjkTDhuE7ntXTGAE7FoWGPEBAAeSlBBAoFGYLxyFW6279L8FLdWdy8JVs0aRNiynZipa7ZthVJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732214754; c=relaxed/simple;
	bh=j2HSVGGkpUS2FZguUr4QJXEZaJn/DLasFtn1oy7DJiA=;
	h=To:Subject:From:Message-Id:Date; b=p3GICvpplDC/nifHM2RCxCZ0PuMB9dYWXgOS9Z9NORzX2QPBMHWtKExCeQwt2EOz5G3pzz1hVnBFZMitqxQKH2JyN+1eXBJZBX3oiCl3gnjGePjaTbfgipmPrugEwuNILiLS9qjl9XaiKQkd9CnSkrnE76mONUF4HWT9PHBif9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJQfjyTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJQfjyTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1C8C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732214753;
	bh=j2HSVGGkpUS2FZguUr4QJXEZaJn/DLasFtn1oy7DJiA=;
	h=To:Subject:From:Date:From;
	b=MJQfjyTvVK6g/FSQW0vjEcci+97fnAjdqM2HdwPgsigVU43+nhBKxvcTwpM/L66db
	 jPhETOOTio/fXQTvfGSwHpiQzMxxWgRrR+SAmhSodq2Hn1cOq1Sj+oyp2C3yl1WfFX
	 2E4geyZGfY9O3CLcWXh+mTQ0QaxjixpzvEqJ32CjPT6L9t0hDMUlBya91hfTHrjICP
	 Ez0f76SxgrdD3Zij1G4tabbXGfcxrbVenEy+2MgzQcUwsCb+A3AgGAXl0TApRtDmMP
	 DD5rUUuqHXBETbY0uLxm3e9WLdBFZqC0mXYfXjuI1uqAPuNwxRIuLvxtTJUMEAVrCW
	 phgx4dfKnsftw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95503E64002
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173221475360.29201.13591393103273546237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535e06a4d30207efb9914c1daa8b71a9441c7e18338a9e21d93778f812e7020d
Date: Thu, 21 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732214753
