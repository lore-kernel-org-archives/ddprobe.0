Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BA019BBA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714628543; cv=none; b=lUZqP19nPB540FGoR40NHPwLhyjxSVXbG08RAbe2z1vCYIuwPtGXNM39ufcJtGdaCn+0tUbu6fdaY5VOz2XrD8Cw1cTCnRFwHUmT+wDIZvSCPKYxnk8473bfHi6Ul+6dutvONL/MBv0WcMU0LWKuXwQSJcApSpRL+Ti9GnrO5PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714628543; c=relaxed/simple;
	bh=iulg78PR26e3vwO6ttSBF1JEZ77gYY1+N+W+foCE6AE=;
	h=To:Subject:From:Message-Id:Date; b=LXdmtV8wJq9oxsAe/wt1YM6Uioj+0RnZ11LkTTcXp46O6IJN9ffZ7IYM/Dk3q8uIR7jfk+z0JvEmflBJCDLHDBHcX+BWc4/cqBmx88X2urzXMHd0SzqW9TKF7lzfoUoPjDruUs41yiRiFII0esVWxiaLy7LTct/PW4OTXOkmjR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImdcV2k8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImdcV2k8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E782AC116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714628542;
	bh=iulg78PR26e3vwO6ttSBF1JEZ77gYY1+N+W+foCE6AE=;
	h=To:Subject:From:Date:From;
	b=ImdcV2k8G2YV+zAnsfs/zczlqaEF4aEquHDLYnsTk4497I0/1EnPbZaqnabJM2LPg
	 H94ZLjm9gaMaXaiFF3qRIJTOsZHvLRat3OuKyZMH5VcVJ2qy8EpEdGnMsrS6OT6aGi
	 kLb0ZR9XiTwE54dkR25sbImRh7v/3MMT+hTd4pAETqnzyI7Mey7YAa/b4pl7LqdYkr
	 9WPZvCKmDU4vZoVtssQJ3qbBJE2UdYKMrrNFfmWSd2Ke3m5csG2ydCQzber931ceC5
	 qza5QLiI5f+nLZQOjBsPbrTqawAVItWhysGoybt3q9ome4Z1TjkoB7F0lv8qIufxU/
	 5sSNnW12Upr2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC94DC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171462854280.32073.4173495461597146023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe219726d2e6fed63e224d05a38e8a2af142eeacd3501d77a8007bc9ca6b500
Date: Thu, 02 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714628542
