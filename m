Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14871C02
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712279297; cv=none; b=G17CXtQu1bRCcBxPxZgQ/v0JV9OJgp9zP2u5bl6Q1ODCy1bi3LJaL9REwC4zAP+3ukyDNjUuoShKUJBGT6ZgMsiEpV2mVxXJvlr92oizVZk3slENHaXNMeXMlS4AptOCnp52RLtLj3cRmzcdJ9CCw7bCESzsFB5MAPCjMXra7bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712279297; c=relaxed/simple;
	bh=z0wVBDwKE/rpl49KCxK/IK5bwEuHGgxabMxVQ7OznfA=;
	h=To:Subject:From:Message-Id:Date; b=uqoKI18FBV+kJgrIpk7j8MU8CVP9P86mYquf+pnNWXgz1fCMEmeDyigCI/vVK4I4Eq/JkMmIT2lzvEiHyQ7OGEZuL+DgutE5pUOCFacxj1gIfFFS6fKJPyhhJIfE29w9fWGX3qU8vEXFmeOWwj5iKoy+74lTEH3EaoWsTWGlKpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qN/+iDV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qN/+iDV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C361C433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712279296;
	bh=z0wVBDwKE/rpl49KCxK/IK5bwEuHGgxabMxVQ7OznfA=;
	h=To:Subject:From:Date:From;
	b=qN/+iDV7aZaQyRgHwOpAdzXA5okqc9qK9pQ2vmx8FTWuRmZuFcidzFALqPXHwU0Hs
	 2+8AsgZCTIA+U7SXJmVVykrJUmgOIkoBbtKSX+RGXt1941lKppkaP8kNLCtVQOMhX+
	 h8L4gNWaEODIwLxPlGOyAECRWrVAGFwB1IlRmkkPY9o9UF8anN9K3p99nkSjb34J1/
	 SQCRrrQPLI1+jFEQRfS7Beu0RfY7sinpsbmohQUnYrAxfwY6tP3yIPeJL9FkZr7ia/
	 GFHYrVBXu7g3tq7ozU2v25+dxuLYLxebQAwNe6KdRxBfmNBojT5jNjofxRSk6KLfu1
	 KYcXtB/sLWjZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7327CCD1284
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171227929646.10638.10320017695534289449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f0953d8d93c220355c3d6026c606754b86c4b32a0cae692c12340d1fb1cbd5
Date: Fri, 05 Apr 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712279296
