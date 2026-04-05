Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385D5384228
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775431534; cv=none; b=sFQAt2g9IshZDsOJPeXSNRCOjpMMk0kURLeJtaMIyeNzb5m38wJu2uUAgNY+KTYSZ+jRuKfU8sbGWUi9rr+L66cc+9neBYY4SrYrBXWMfELSSVTzMOCzdKhTgsRbnYOpkp6gN1FZVRqcoISaZwe1lrldBnS0L8L+2IXwb/Io7D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775431534; c=relaxed/simple;
	bh=lMzPYkrBY+e9H5CNe/u4s+eprvKLlDzKpY/LvUbm/qY=;
	h=To:Subject:From:Message-Id:Date; b=NwBzQDEsY1Dbr6tksFWcEUA4y2au4U20TkqYaTxuVr0uwpyFal12sTYCTSkl4a+HnAoeO+E59CLYDex4sj+GraHkdDaKh06GjIyAu6MkWWs8JzZMCfN76tKI6M2pUSOf8LYthH22D3mS0FohPEvy9TllNFjAeep3TVfuil+64CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWsvGOqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWsvGOqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0995C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775431533;
	bh=lMzPYkrBY+e9H5CNe/u4s+eprvKLlDzKpY/LvUbm/qY=;
	h=To:Subject:From:Date:From;
	b=BWsvGOqsGjI/nQN+v10RYeBu10Fh+WIi+FGCz4q/Yj/AB26MolSIWZ4JclmMGyS0T
	 YOWe2xXMLIJvp1RtAttl4PNJ4VM/ySYol2vkOu7owziiZJtLAqfrjpu09Z2wfNGvc4
	 /iVJkba8baIQXpPuOIbmefHKXQX41y5UO4PbeTlvrKirscfYr9Jw+VKwhUYA+cDt9B
	 EPLCrRBkrtd5aomXg34lRhPzseAb6Fhik8Y+E//F+4T6cnx5LWzSbrfmx/LWwMmhbW
	 dji5A+lkpp6f4IJfjfYRW0Rb0G5kbSaVbtnQNU5/E7y658KAyCU7D1NSdXUHRBDcL8
	 123dCQkuUwj6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8BCE9D826
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543153369.28191.17735033449132607164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a2c4830b4d85d27c23121a29965dcfda209fb270d213c948ea797e9b22cc5d
Date: Sun, 05 Apr 2026 23:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775431533
