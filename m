Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9A3286D62
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756775394; cv=none; b=hCnGURIIONeLuVguN1aXtXUKuO2ydjy8fOL0Kjv7tpmoMGgz1B/6LvaiefifZoUVwFO8NOchF9xw7pd2dlLzGjgk2zObEWFdmb6i6uzvDWP/tJ431Hzl9G8oaZx4s4gEH3dKOxxEE8NkjQyeMefnjwoWh0Pdz4wWDwj8jK7N7Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756775394; c=relaxed/simple;
	bh=VkiTnpiVhpOooRT4aqWikGEBmK4xwyTNAD/q2scKmF0=;
	h=To:Subject:From:Message-Id:Date; b=Wj+UZkY/uIe8Wv09qryWB+1KqoEBWGk+Mh3IPUErTgImFE/dA3gxR0vReaQ9W4sB939vhZ1eMMyDip8GyAm9MUlc6ktMLpjbSwuelijsgM/wS7FPictajOfNzvJo+K5y/S9J2G1odTEkAXHpYf/+uZgbjsMEwgmKx99AmJU0uhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+1azcge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+1azcge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A845DC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756775393;
	bh=VkiTnpiVhpOooRT4aqWikGEBmK4xwyTNAD/q2scKmF0=;
	h=To:Subject:From:Date:From;
	b=S+1azcgezKk66sf0VLmbxcIaClJwH205DWDy6lmwA/sDMMgMRl85B8zcDSk1YchBV
	 EEGc/p/2cCsMx14l+Pge+O/QozGUimiOv+bqJJCmEosM2o8H0mbWsPeI+Rtihbfgty
	 anzEOcMK70hsxgGLQZJvz7JBNsYKGnn3GLP6oZ3yrUfZBWT/uVSf6ZeWjTGk9Xtatv
	 QqyoIwc5URdiMFHkhz4TvMXItLtvjTYmVkVk8g2wg5uV8CW0EwLGpEgKD3pZOHOD9x
	 uIvGG8K7vEom4oFBJTxC6TV3kmpdG5QQ6z2xc+6rgri+tZZez/h1GL1AjZkcDEq1PA
	 s6AHszmfsizwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9185ACA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677539357.23252.17379324721662230588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b7c43065d53b78d0727c58d2c5aa70965730c4a72c87ee24ce0b93d79d47bf
Date: Tue, 02 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756775393
