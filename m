Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256E32741AC
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764957774; cv=none; b=OINaPt1VOePIGe6m/El3RgP0j2BuEqsMH3UsrQP2d2yllpiFNflwUj3s5+mR3H8xgmJxA+79bP3Ndqe0gnzn9tg8I0BTzekoOr85+qPUUtKNuS8DM9nRH4JpV+XO4PlBsnTITk4aglitqAecMZPyzVNCvNsCVwh+5LugM/nlAmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764957774; c=relaxed/simple;
	bh=04mQwws7hFeUuD4MUoc/1TUdzPy8efAkmX6fdgtvgVk=;
	h=To:Subject:From:Message-Id:Date; b=Spd7fVHu7aLfb0w2zbuvHg7B2hruXR3zfVRe8OYPfH+UPhqIQo1GYZSj/BEVroqipVqGOcsbbOl0tIFuF7cUBqzayHjPbw30XVblYFMKps02YMbmg98ugFyjVZJnQdoiOGWW+S9bycXj0es+5Yshjo34f/eIT5NXWFvCwxrC78o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxnXlTEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxnXlTEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BD3C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764957773;
	bh=04mQwws7hFeUuD4MUoc/1TUdzPy8efAkmX6fdgtvgVk=;
	h=To:Subject:From:Date:From;
	b=gxnXlTEIuadHTLR3mxMUbfEcBUUbyoETujE6cjYjENqQpeAK56jUjN2zFEF7VPVCU
	 wQuYVErgK4dU17xdE1Ryy50piifV4GqsaVPBxA/NxcAYJKCbfvPNuBPXYAbeb03NDy
	 OpAriDfKk2GEST4lRL6xkzdtLD6qD2oF1B7sfflUPahaA6xAe4Xu7xq3AwSU6pfkXX
	 fJP8fXa/knCWs95YUMS+5pjg8wYTYsbRolJKtjuEdlK7R31zZTIEDg/aa9EQsUqKSY
	 NvczoMaaMScthaNMsTB8HxSAnZ9NVUKOfNX+Ldq7LHvhRBqlOf1/KAN0aGrdCNQW0b
	 RHcYL9v/uEvbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE02D33998
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495777363.3900.10833039049033134485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7cd8e031f66256000a7165ba9515159d74ad936387258a5414c69f35c2113a
Date: Fri, 05 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764957773
