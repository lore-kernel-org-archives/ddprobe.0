Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFF61482F3
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726314954; cv=none; b=hd1aeR+Xr8+yCA5BxWd6UCMOCisY3UzVEx/gP3NvCaO5WgdUnvGbVxRfGn63RfFgZlvRxOZsDb3FryrPyiuO3YanP+UibwqS9xbySI39S2EPYoxfdHD24mtKytyiid3x4RbOS/Bem51FxiqaUOWgYFohxk0pWMLPX61IkXYkskU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726314954; c=relaxed/simple;
	bh=nSu+Hf323SkyfAO2L7vvJN/6s+I6OmP8sIEU1aLKLQc=;
	h=To:Subject:From:Message-Id:Date; b=PE/jRz3nLtSj4QAfPJRN7a0RE4gZ+wzTBc/tVQ1UzxywhxdaKwcfbjmfVrsVkTVntoSJj+mfhQkLq1ELhBeq4Dpu6JurR7yrzb4VBcYEgFeijtUpD8AO27zuTK0SW+FETfYsehA07cDDzKodSqthf+gwPeYMUuAg49LzpdNiOQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD9pPXaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PD9pPXaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E1CC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726314953;
	bh=nSu+Hf323SkyfAO2L7vvJN/6s+I6OmP8sIEU1aLKLQc=;
	h=To:Subject:From:Date:From;
	b=PD9pPXaw8Fl+LnXQxwHlSL9Dc+BjXqXH2uxGZLApWiqKxmmq8o2KzzSELxScaLeA4
	 oAR1fuZcFucm57BDgXQOq8cH8ztW5BCHinqblcmgXKKj3vbGEww08Wp6V9QI070DEC
	 CeBeQbAd9CcGetCRr+K0nH7sEjyloiJwCT+lO5dhU7/WVb99e192v62eky1coavHpx
	 k5tkqk7XD+ZJVw9gmYGyHypd0PRxP3TNj1nH4PfyBCO8mnQjABiUbnNtKRzofAt7gU
	 019zyq0J2cYBIMuoAeLNLG66GQaW0kKzXC9YY2Yn6rFZ5ejjBUrr6oOmJcbXXhg1v0
	 R5H6/8AI/zgpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45EAC02192
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172631495363.8841.9990375828385477070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d225894e62461edf93ed63400c7f4ed7fc8bd6d388cc47964329ac65d2708ee
Date: Sat, 14 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726314953
