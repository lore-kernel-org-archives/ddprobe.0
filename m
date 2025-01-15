Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285C31E9907
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736940954; cv=none; b=EYjm/HqSeSEf7NbJ7daZa/W2CSFN/XI6Wdd8ESFw1VlaOwL5bkJEZ79VKhUTinqSjs5bk1002vaSAzZdCZ1KDJGk+6Z1B2RiTg19n44FiBL6KkjdSjp/AnLWl0hZTevkEHywd8NWfTUc+vKr+TshShsmttY3SnwtQeZo6TQtz9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736940954; c=relaxed/simple;
	bh=qliJAx8BlFUrzz/GWA5FLHe6kT/yN5bUUekekfVVeG0=;
	h=To:Subject:From:Message-Id:Date; b=TqGCaKcR+CvpZ/4GQlJqeAaK5cW8zXEYNUXhAguM64rAi42PKTVe2YtK76mOuvhd/wJe8paZQ0q5iYzwQhFIMvprIxK2rRRIIOEyL6ap2mvIRm40QIfvUx7mXyncjJ+bFxuzOcaQTxwnBx8pIXo4dusxFIMOby+D1G935JRWzpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDZaWDKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDZaWDKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE2C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736940953;
	bh=qliJAx8BlFUrzz/GWA5FLHe6kT/yN5bUUekekfVVeG0=;
	h=To:Subject:From:Date:From;
	b=jDZaWDKU9Fvec107mtqRk30BFgBgp+gdwh1Ha7EpTOLWcF3BBPl/wcuP5z6nSdre/
	 yGSl+tK+10fxwXHNX4z1jmyErNER7Vp9wZZVZY0u/UHfwwknT7D6i4sSI5dg0iAMzf
	 DJ/qTVOHHKBagrALY8vAqLi/sOzEmqyml2Qwi3/9a6tP6iclrlwFd8wj/p5MZluL+2
	 N1c5dOxyCHipXYpwd4J3BxthjoSWiqRu2JS9hUwzdkLskpkjOQgo6W7B1AbDGVhpNF
	 W5sgquUz0NddZqt/+sY6XjayPlm59g4VRhdiey7Egh2kegm/oKdp91uiskBQSIj6d/
	 ami6oWRjGAU7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C71C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694095359.12316.6483115259106684262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5307bf3e9bb7dc376f41b226c7e897992b9ae4f9dc3efa735b831513936d44f
Date: Wed, 15 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736940953
