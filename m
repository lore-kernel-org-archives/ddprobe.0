Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215062BEFFF
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756916394; cv=none; b=oGYi46KPFj7/w6slhPtVgh+1RY8ZauybugUe0qM7yzZSaTFzXLo/zWyin7A13aoCuVRJxa8l8fE56XcWs8Nf7fYmfxnkbFfPq0b61MrsT+SA4nuowJ+/Pa+PDp7RcYq+87gZ+D4P4jWRmz73LQAgwyu0c56GPdsIZjl6rBWgw3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756916394; c=relaxed/simple;
	bh=pL7MGsUP0KJH5HP3+sGCLK5t7Numk6aYntjlO6oXOcc=;
	h=To:Subject:From:Message-Id:Date; b=pYgwS9LTIp9QVXrryJsmvv+G6cUVr5JUWusZOxsx3B/vtLlyftHBWzDA813Ov7Lh53qcB8ZxjAkWaGfRAPPjgGgtT1jf5IV9LWbhTKLd2eHcwqc5iGgw+CDLHx5UOg4JqBiifekfDvkmfaaTLzhwqYDhaZmC9NQotNm6nYzLnv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRquUTCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRquUTCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33AAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756916393;
	bh=pL7MGsUP0KJH5HP3+sGCLK5t7Numk6aYntjlO6oXOcc=;
	h=To:Subject:From:Date:From;
	b=bRquUTCKqwG9ofQZr1gZB+FWc3xiMShaPAXmwkbrEShtOFrYO46o4enERB3JyYJAq
	 vS6qDx27uthlHNnOmosgP0Br+5rqFue2MWSj3n/XuAtrOWKcRk+iPMA2F1/fhBEtAP
	 2e3GYwFKeS38PQtgQ1tDoLbskZPsuT9lQN/Nt6zoMmNukrlqyw9SnlUD1gkdUq7CGh
	 5GqKurndQ7yX8KE9cOGpCqCYF7xsV6MTDTtpnSyF+9l1n8SIV2yvKh0PfDZ0budBM2
	 QjogFIU4eVdUMuaDwujEBiDVqt7Le2X74nOjk0xCUjb234BYYfVoK4TurgMXqEK4Eg
	 Mzs8tNkT/xPyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90631CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691639358.8362.8584895176246211061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc585fe551334e3b4da1d2454a9cdd7293aff541fe5bbdfc3220a05b2b39cdb6
Date: Wed, 03 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756916393
