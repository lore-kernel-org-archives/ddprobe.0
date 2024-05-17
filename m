Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB8C4404
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715927543; cv=none; b=SZ2U6+0nmtqT/Snc+kPNq6BaLxL191Y01fdR4kTeswdWcS3zmtss7DVIivoGNXxhf8u8CA0Z4Vol5H0+Xi3wKveIB+0hK7G2vxtpT21iTmuzGDKX5cnsjMjvvoLzWHYg8kO/4C/PY49qJmcqOd0kkXfkGA6hs/QMrhvjX4ZkRdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715927543; c=relaxed/simple;
	bh=h8OF96/lwxdp54F6+kGIXL+ZW96rxER5veqqbYfzoiE=;
	h=To:Subject:From:Message-Id:Date; b=aEaaVDARP/QMyL5m3lW0+jSorRiSDGtdmuvSZHQzL3w1YQ3SLiIVjmhXJzjY7xfzozWTDLg77oCBbqgjtABJHwf0ooM8TRAzXA7OEQG+J0uqK9eVtiWgKDtHP0Q9SiXDzw5pEo52fxUS7bUgMdE/58SLSCAae4sLYP9i+f0QFXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu1Z74SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu1Z74SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E0BC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715927542;
	bh=h8OF96/lwxdp54F6+kGIXL+ZW96rxER5veqqbYfzoiE=;
	h=To:Subject:From:Date:From;
	b=Pu1Z74SMxW0CzXITPBcMgwRvR3azgFoGpw1e79IZ21QZX2yjl/77eIiciRDoqKK08
	 4YW4rt9V7U9y0Z7xoE2q9HoTtk9UqCKi1eLnWTzKTOU2Jyt8UY5OG6Fb89Ky/1xopf
	 pQGTDeHTgJ+7np0KM9RqRogs/c6kzM1khPSQeBOmSs+VcQJdW1+KxdGKNlLpu2HxIL
	 lHQ5xF51u9SKEWccfsz1a+Ecb02k2945uS7IW48LN0OkvB1AUIo7so2BwpJygsd8JP
	 oNk6sCemE8v9ucv2kT4lQA3/U/016OMY61rCqDuPn91Ea3KZG6LNmV2TXAaI2sct01
	 DtT0TSVANc9Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA51C25B79
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171592754276.5677.4954505824502308784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff7da8532d7ebf682e5da2b8715bebbf903f33ec29e3ffa29600814098b60f4
Date: Fri, 17 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715927542
