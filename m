Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA4225B1E2
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746016794; cv=none; b=F4FzjyjjGkIayk3rVFxgCrcyQrznluZ+j5ghd7SAyqaDp3n4uQQIw/TisvoE1y83EWZrznoFgf2vHF6+XksoqeC1wskymjrTXf+Knqs0ckp86Nh/RIVDBpD9HrmGE/HYWPhdjPKSuJIUwdKQTlNQ+/l75W2wGLImg13azpTjsLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746016794; c=relaxed/simple;
	bh=N92uJHwrvxX2mlhCFQMVNr+hlCUYnSN+1/Piandp4uA=;
	h=To:Subject:From:Message-Id:Date; b=Dm+ZRiZCKZObJD6bNXT97FyWlb5xmpJBpkuamDaQv/LIHdL6jnJ9yl96TdiwsrWR8e1+C/W36ChwZgutZEHKWIUZwXyFy3Xg4looLOBJ9Yn/R2XBMW9Z7nOoth679+4cpGPkp0PMfz90JixAz2z+CwlLqObYOJz/zepV6gyAGsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQ0D0tcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQ0D0tcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A058AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746016793;
	bh=N92uJHwrvxX2mlhCFQMVNr+hlCUYnSN+1/Piandp4uA=;
	h=To:Subject:From:Date:From;
	b=DQ0D0tcOluJo1OtIpm1GEi5SGeUW2MSKTv5zyuQI5DBOm6MT9g4VJTXHh0KFHbobe
	 GRVNyTMoSCITlgkfGyBgyEJB9/m8fptri5O93q/5kYKX7GZTaDIN7SExSBcHLHC/bT
	 a+8kuYxjGpygTp6HL+5RVDEqZ/5yQE/SWMQJGoyW59+kyAXfkainIrwJtv8EGdkBbe
	 yY8bXDOVXUrBLB7MmsBlLsw8SXpG38iwqvVCNpj6hD7dg3y8nWTwcW+lKsKiFwCHr+
	 +AIzs/6xedUm84WDQpBV5+Xi2yodDS+nXR6GjffqXEEm9yhl5NSk0zBEVTmkHyFR5B
	 ScYSBqpd12u2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E22AC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601679357.10521.14466542476968736741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20a4252cda1ae8dc2f36131075721de27f4498d51abfdd9a05b5585fe260bf2
Date: Wed, 30 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746016793
