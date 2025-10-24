Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ECA5C96
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761324594; cv=none; b=T4oZh6HakN3tA5oR1Ro75VP+i/aeOVWHioMDzgze5MMI9Gyc1iLdu8ZMeEb9omIfDDt9Kl9slYIwblxjSr2ItZHuT+SQLzpyfOA97vWzpDLGFargQv+HV19VOpd47XCNLvfaQhztyU4y04A3dW/GK+IAn0pe1QGesxd6uOAxnSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761324594; c=relaxed/simple;
	bh=LUuAak+z1csHmu+OvzZBxx3H0EESzpOhNJa34iJKe4I=;
	h=To:Subject:From:Message-Id:Date; b=TA2z/yifErglzG3aPiMQ6tgXJ26V5J0ylHnfQEVVM6tpU6GPudZ9Wii5PaVnR1byQ229aqZfBz86S6DbLPXctgGlbozIj318UdzZpRtMxnImC+3/Ngb150+uz8j9sMYVNf5dHeQ0yl4GL6ukjYbcVKrtBzLE3XadqDPdBFRjEZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNvvTO5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNvvTO5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ABDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761324593;
	bh=LUuAak+z1csHmu+OvzZBxx3H0EESzpOhNJa34iJKe4I=;
	h=To:Subject:From:Date:From;
	b=DNvvTO5ZRfecjP2Y3WnaVKjmCIlXwbkljaGO6FprtcKstMzlYxGJz0sUVit2MW6pg
	 da6A4tY8d52YQrmM/JJk7DmyR4pfKD1vD/vWMut+hedisX9PtRTKxXNJ4rZen8f1Fn
	 CTjRYGGoY+0VuE9v41BcJ5zXUWG799NFdiLG8eFksMte3DeA/esFs6W+T1ker0tJGQ
	 m2zovu502ajobmRKnPKwnTOOow1rL0Q6sYsNRSX9j+7c5fmL9ANzvfWaA7o/NGIEWm
	 90NERYtUSu7Jk/nrA1wCsLdEVX5/ZHHDGug4aaA7wCwCYOoLhl19J/Um6K/Dy4/dFD
	 QBoqrcFA2Bz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A6CCCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132459360.5002.5956436887148347938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae29dd74bc18fed68748457ccb13e3b08cf43f261d6db5f18e492a5a3d9ca23
Date: Fri, 24 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761324593
